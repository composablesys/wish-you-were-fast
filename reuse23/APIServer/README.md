# API Server & Webpage

## Install Dependencies
1. Install flask, flask-restx, psycopg2
```
pip install flask flask_restx psycopg2-binary

```
If an error occurs with [flask.scaffold](https://github.com/python-restx/flask-restx/issues/567), navigate to `flask_restx/api.py` and replace lines 17-20 with the following:
```
try:
    from flask.helpers import _endpoint_from_view_func
except ImportError:
    from flask.sansio.scaffold import _endpoint_from_view_func
```
2. Install dateutil.parser
```
pip3 install python-dateutil
```

## How to run `app.py`
1. If not already created, create `config.json` with the following access keys. Leave host and port as empty strings if unknown.
```
    {
    "host": "host",
    "port": "port",
    "dbname": "database_name",
    "user": "username",
    "pwd": "password"
    }
```
2. Run script in the `reuse23/` directory with the following command.
```
python3 APIServer/app.py
```
3. Open browser and navigate to `127.0.0.1:8080`.