import os.path

from flask import Flask, render_template, request, jsonify, send_file
from flask_restx import Api, Resource, reqparse
from dateutil.parser import parse
import psycopg2, json, fnmatch, math


app = Flask(__name__)
api = Api(app)

'''
How to run this script:
1. Make a configuration file 'config.json' in the same folder as summarize.py
2. In the file, assign the following variable to your specific access keys
    {
    "db": "database_name",
    "user": "username",
    "pwd": "password", 
    }
3. Set the data directory path using 'export DATA_DIR=/path/to/data' 
    ex. export DATA_DIR=/home/cvenen/python/speedup/
4. Run the script with 'python3 app.py --data_dir $DATA_DIR'
'''

data_dir = os.environ.get('DATA_DIR')
DATA_TABLE = 'testSummary1'

with open('config.json', 'r') as config_file:
    config_data = json.load(config_file)
    db = config_data['db']
    user = config_data['user']
    pwd = config_data['pwd']
    
nightlyRunID = 'NIGHTLY_RUN'   # Data is tagged with this in the database to show only nightly run results on UI

@app.after_request
def set_cors(response):
   response.headers.add("Access-Control-Allow-Origin", "*")
   return response

@api.route('/check_status')
class statusCheck(Resource):
   def get(self):
      return {"data":1}

configs = ['int', 'jit', 'nok', 'nokfold','noisel','nomr']
suites = ['ostrich', 'libsodium', 'polybench']
# total_time metric
# must change table to correct one to collect data
@api.route('/get_all_execution')
class getExecution(Resource):
   def get(self):
      results = []
      conn = psycopg2.connect(database=db,user=user,password=pwd)
      cur = conn.cursor()
      cur.execute("SELECT DISTINCT engine FROM testSummary6")
      engines = cur.fetchall()
      cur.execute("SELECT DISTINCT exp_date FROM testSummary6")
      exp_dates = cur.fetchall()
      for engine in engines:
         for date in exp_dates:
            cur.execute("SELECT avg FROM testSummary6 WHERE engine = %s and exp_date = %s", (engine[0], date[0]))
            data = cur.fetchall()
            values = [row[0] for row in data]
            geomean = round(math.sqrt(sum(values)), 6)
            results.append({'experiment_date': str(date[0]), 'total_time': geomean, 'engine': engine[0]})
      cur.close()
      conn.close()
      return results
   
''' working version of main graph with interactive line highlight '''
@app.route('/main1')
def home1():
   return render_template('index.html')

''' working version with clickable main graph that directs to specific engine's graph '''
# essentially main graph but clicking on line will direct to main4 with given engine line
@app.route('/main3')
def home3():
   return render_template('index3.html')

# version to use selections to filter data in another graph through changing url
@app.route('/main2/<string:engine>')
def home2(engine):
   return render_template('index2.html', engine=engine)

''' version in-progress where clicking on different engines on main graph filters data in another graph '''
@app.route('/main4/<string:engine>')
def home4(engine):
   return render_template('index4.html', engine=engine)

@api.route('/get_suites/<string:engine>')
class getSuites(Resource):
   def get(self, engine):
      results = []
      conn = psycopg2.connect(database=db,user=user,password=pwd)
      cur = conn.cursor()
      cur.execute("SELECT DISTINCT exp_date FROM testSummary6")
      exp_dates = cur.fetchall()
      for suite in suites:
         for date in exp_dates:
            cur.execute("SELECT avg FROM testSummary6 WHERE engine = %s and exp_date = %s and benchmark_suite = %s", (engine, date[0], suite))
            data = cur.fetchall()
            values = [row[0] for row in data]
            geomean = round(math.sqrt(sum(values)), 6)
            results.append({'experiment_date': str(date[0]), 'total_time': geomean, 'suite': suite})
      cur.close()
      conn.close()
      return results

@app.route('/zoomInto/<string:engine>')
def zoom(engine):
   return render_template('popup.html', engine=engine)
# calculates geomean given a suite in speedup experiment and returns a json format with geomean like 
# [{config: int, geomean: 0.968178}, {config: jit, geomean: 0.669872}, {config: nok, geomean: 0.001414}, {config: nokfold, geomean: 0.605595}, 
# {config: noisel, geomean: 0.614007}, {config: nomr, geomean: 1.116099}]
@api.route('/calculate_geomean/<string:suite>')
class geomeanCalc(Resource):
   def get(self, suite):
      results = []
      conn = psycopg2.connect(database=db,user=user,password=pwd)
      cur = conn.cursor()
      for config in configs:
         cur.execute("SELECT avg FROM testSummary1 WHERE benchmark_suite = %s AND config = %s", (suite, config))
         data = cur.fetchall()
         values = [avg[0] for avg in data]
         geomean = round(math.sqrt(sum(values)), 6)
         results.append({'config': config, 'geomean': geomean})
      cur.close()
      conn.close()
      return results

'''
# calculates geomeans from a given experiment, grouped by suites and returns a json format
@api.route('/calculate_geomean/<string:experiment>')
class geomeanCalc(Resource):
   def get(self, experiment):
      results = []
      conn = psycopg2.connect(database=db,user=user,password=pwd)
      cur = conn.cursor()
      data_table = ""
      if experiment == "speedup":
         data_table = 'testsummary1'
      else: # experiment == 'execution'
         data_table = 'testsummary2'
      if data_table != "":
         for config in configs: # what configs for execution?? currently configs for speedup
            cur.execute("SELECT avg FROM " + data_table)
            data = cur.fetchall()
            values = [avg[0] for avg in data]
            geomean = round(math.sqrt(sum(values)), 6)
            results.append({'suites': , 'config': config, 'geomean': geomean})
      else:
         return "Provide a different experiment."
'''

# testing to see if connection to database works
@api.route('/get_all_test')
class getAllTest(Resource):
   def get(self):
      conn = psycopg2.connect(database=db,user=user,password=pwd)
      cur = conn.cursor()
      cur.execute("SELECT * FROM " + DATA_TABLE)
      data = cur.fetchall()
      cur.close()
      conn.close()
      response = []
      for datum in data:
         tup = {"Date": datum[0].isoformat(), "Suite": datum[1], "BenchmarkItem": datum[2], "Engine": datum[3].rstrip().lstrip()+'-'+datum[5].rstrip().lstrip(), 
              "Version": datum[4],"Machine": datum[6], "MetricType": datum[7], "Value": datum[8]}
         response.append(tup)
      return {"data": response}

# testing to see if you can display vegalite visualization
@app.route('/display_geomean/<suite>')
def display(suite):
   return render_template('geomeanVegalite.html', suite=suite)

# testing for clicking to change another graph
@app.route('/testInteractiveClick')
def interactive():
   return render_template('testInteractiveClick.html')

@api.route('/get_all_mean')
class getAllMean(Resource):
   def get(self):
    conn = psycopg2.connect(database=db,user=user,password=pwd)
    cur = conn.cursor()
    cur.execute('''SELECT exp_date, benchmark_suite, benchmark_item, engine, version, config,
                machine, metric_type, avg FROM summary WHERE exp_label=%s''',(nightlyRunID,))
    data = cur.fetchall()
    cur.close()
    conn.close()
    response = []
    for datum in data:
       tup = {"Date": datum[0].isoformat(), "Suite": datum[1], "BenchmarkItem": datum[2], "Engine": datum[3].rstrip().lstrip()+'-'+datum[5].rstrip().lstrip(), 
              "Version": datum[4],"Machine": datum[6], "MetricType": datum[7], "Value": datum[8]}
       response.append(tup)
    return {"data": response}

@api.route('/get_bw_dates')
class getBwDates(Resource):
   def get(self):
    parser = reqparse.RequestParser()
    parser.add_argument('startDate', type=str, required=True)
    parser.add_argument('endDate', type=str, required=True)
    args = parser.parse_args()

    try:
       if parse(args['startDate']) <= parse(args['endDate']):
            print(args['startDate'])
            print(args['endDate'])
       else: 
          raise Exception
    except:
       return "Improper date range - please ensure startDate and endDate to be in yyyy-mm-dd format", 400


    conn = psycopg2.connect(database=db,user=user,password=pwd)
    cur = conn.cursor()

    cur.execute('''SELECT exp_date, benchmark_suite, benchmark_item, engine, version, config,
                machine, metric_type, avg FROM summary WHERE exp_date BETWEEN %s AND %s
                AND exp_label=%s''',(args['startDate'], args['endDate'], nightlyRunID,))
    data = cur.fetchall()
    response = []
    for datum in data:
       tup = {"Date": datum[0].isoformat(), "Suite": datum[1], "BenchmarkItem": datum[2], "Engine": datum[3].rstrip().lstrip()+'-'+datum[5].rstrip().lstrip(),
              "Machine": datum[6], "MetricType": datum[7], "Value": datum[8]}
       response.append(tup)

    return {"data": response}

@api.route('/get_percentiles')
class getPerc(Resource):
   def get(self):
    parser = reqparse.RequestParser()
    parser.add_argument('date', type=str, required=True)
    parser.add_argument('benchmark_suite', type=str, required=True)
    args = parser.parse_args()

    try:
       parse(args['date'])
    except:
       return "Improper date range - please ensure date to be in yyyy-mm-dd format", 400


    conn = psycopg2.connect(database=db,user=user,password=pwd)
    cur = conn.cursor()

    cur.execute('''SELECT percentile_95, min, max, metric_type, engine, version, config, machine 
               FROM summary WHERE exp_date=%s AND exp_label=%s AND benchmark_suite = %s''',
               (args['date'],nightlyRunID,args['benchmark_suite']))

    
    data = cur.fetchall()
    response = []
    for datum in data:
       response.append(list(datum))

    return {"data": response}


if __name__ == "__main__":
   app.run(host='grammont.lan.local.cmu.edu',port=6363, debug=True)

    # HACKS - remove this
    # print(dataframe)
    # return send_file('csv_data/wasm-execution-2.csv',mimetype='csv',attachment_filename='testing.csv')
    # print(dataframe.to_csv)
    # json.dumps(data, default=str)