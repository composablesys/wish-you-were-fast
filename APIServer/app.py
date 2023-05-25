import os.path

from flask import Flask, render_template, request, jsonify, send_file
from flask_restx import Api, Resource, reqparse
from dateutil.parser import parse
import psycopg2


app = Flask(__name__)
api = Api(app)

host = 'localhost'   # replace with hostname of PostgresQL used
db = 'wasm_benchmark'
user = 'akshath'    # replace with read-only username
pwd = 'myPassword'  # replace with read-only password
nightlyRunID = 'NIGHTLY_RUN'   # Data is tagged with this in the database to show only nightly run results on UI

@app.after_request
def set_cors(response):
   response.headers.add("Access-Control-Allow-Origin", "*")
   return response

@api.route('/check_status')
class statusCheck(Resource):
   def get(self):
      return {"data":1}

@api.route('/get_all_mean')
class getAllMean(Resource):
   def get(self):
    conn = psycopg2.connect(host=host,database=db,user=user,password=pwd)
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


    conn = psycopg2.connect(host=host,database=db,user=user,password=pwd)
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


    conn = psycopg2.connect(host=host,database=db,user=user,password=pwd)
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
    app.run(host='0.0.0.0',port=6363)

    # HACKS - remove this
    # print(dataframe)
    # return send_file('csv_data/wasm-execution-2.csv',mimetype='csv',attachment_filename='testing.csv')
    # print(dataframe.to_csv)
    # json.dumps(data, default=str)