#API Server

# Set Up to Run app.py
1. pip install flask, flask_restx, dateutil.parser, psycopg2, json, fnmatch, math
2. Make configuration file `config.json` in the same folder as `app.py`
    * In the file, assign the following variables to your specific access keys
    ```{
    "db": "database_name",
    "user": "username",
    "pwd": "password", 
    }
    ```
3. In `/wish-you-were-fast/reuse23/APIServer/` run 
```
$ python3 app.py
```
4. Open browser and navigate to `grammont.lan.local.cmu.edu:6363`.

# Alexa's Code from Vegalite Graph Testing
The testgraph3.html and index.html are used in app.py landing page.

```
# working version of main graph with interactive line highlight
@app.route('/main1')
def home1():
   return render_template('testgraph.html')

# working version to use selections to filter data in another graph through changing url
@app.route('/main2/<string:engine>')
def home2(engine):
   return render_template('testgraph2.html', engine=engine)

# working version with clickable main graph that directs to specific engine's graph (main graph but clicking on line will direct to main4 with given engine line)
@app.route('/main3')
def home3():
   return render_template('testgraph3.html')

# working version where clicking on different engines on main graph filters data in another graph
@app.route('/main4/<string:engine>')
def home4(engine):
   return render_template('index.html', engine=engine)
```