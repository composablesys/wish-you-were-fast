# Wasm Benchmarking Scripts


## Overview
- `build.py` is for building engines
- `run.py` is for running experiments
- `summarize.py` is for uploading data into the database
- [Instructions](https://github.com/composablesys/wish-you-were-fast/blob/master/reuse23/APIServer/README.md) for API Server and webpage are in the `APIServer/README.md`


## Next Steps
- Gather historical data: run experiments on an engine's build from every month since its creation to present day
- Standardize version ID; some use git hash and some use release number
- Fix `build.py` functions to update engines to the most current build; run the script continuously with cron
- Replace existing graphs and create new graphs (consider using Plotly): interactive graphs that include the raw data samples


## Build and Update Engines
Consult the `ENGINELOG.md` located in this directory for instructions on how to install and build each engine.


### How to run `build.py`
1. Create a `build/` directory and a file `build/engines.json` to manually log the version and date in which an engine was built. The layout should look as follows (or refer to `reuse23/build/engines.json`).
```
{
   "engines"{
       "v8": [
           {
               "version": "11.7.105",
               "date": "2023-07-06 10:31:45"
           },
           {
               "version": "11.7.254",
               "date": 2023-07-20"
           }
       ],
       "sm": [
           {
               "version": "114.0",
               "date": "2023-05-09"
           }  
       ]
   }
}
```
2. Clone the `wish-you-were-fast` repo and run this script in `~/`. Note: The script will attempt to build all engines listed in `common.py` in the `assign_engines()` function.


3. Install `bs4` and `GitPython`.
4. Set `BUILD_DIR` to the directory for building engines.
```
export BUILD_DIR=wish-you-were-fast/reuse23/build
```
5. Run the script with the following command:
```
python3 wish-you-were-fast/reuse23/build.py
```
6. Manually update `ENGINELOG.md` with required information (date, version, etc.).




## Run Experiments
After building engines, make sure symlinks are updated in the `reuse23/engines` directory. Navigate to `wish-you-were-fast/reuse23/engines` and execute the following command:
```
# Replacing a symlink
ln -sf ~/<path/to/engine> ./<engine name-version>-link


# Creating a new symlink
ln -s ~/<path/to/engine> ./<engine name-version>-link
```   
### Install btime
Clone the [Virgil](https://github.com/titzer/virgil) repo and execute the following steps to install btime, the function that times our metrics. Requires C++.
```
$ mkdir bin
$ cd virgil/bench/
$ c++ -o ~/bin/btime -lm btime.c
$ echo $SHELL # should return `/bin/bash`
$ cd ~
$ code .bashrc
# Navigate to the bottom of .bashrc and instantiate your PATH variable
PATH=$PATH:$HOME/bin
```
Close the terminal and open a new one to update the changes. Test to make sure btime is installed by executing `btime`. This should return `usage: btime [-l|-f] [runs] <command>`.


### How to run `run.py`
Ensure that btime is installed and run this script in `~/`. In order to run experiments on specific configs, manually change `reuse23/common.py`.


1. Set `DATA_DIR` to the directory for storing datafiles.
```
export DATA_DIR=~/wish-you-were-fast/reuse23/
```
2. (Optional) Set variables for experiment type and btime options. Defaults are `EXP=execution` and `BTIME_OPTIONS=-l`.
```
# Options: speedup, execution, startup
export EXP=speedup


# Options: -l, -f (for zero files)
export BTIME_OPTIONS=-f
```
3. Run the script with the following command:
```
python3 wish-you-were-fast/reuse23/run.py
```


## Summarize and Upload Data
After data collection, upload data to the database. Install `NumPy` for `summarize.py`.


### PostgreSQL Database Setup
1. Install [PostgreSQL](https://www.postgresql.org/).
2. Create roles for each user and grant permissions to create databases and tables.
3. Create a database `wasm_benchmark` on PostgreSQL.
4. Create the metric types
`CREATE TYPE metric AS ENUM ('main_time', 'total_time', 'setup_time', 'compile_time', 'rss_bytes');`
5. Create a `summary` table using the following syntax
```
CREATE TABLE summary (
   exp_date DATE NOT NULL DEFAULT CURRENT_DATE,
   exp_label VARCHAR NOT NULL,
   benchmark_suite VARCHAR(100) NOT NULL,
   benchmark_item VARCHAR(100) NOT NULL,
   engine VARCHAR(100) NOT NULL,
   version VARCHAR(100) NOT NULL,
   config VARCHAR(40) NOT NULL,
   machine VARCHAR(25) NOT NULL,
   metric_type metric NOT NULL,
   avg NUMERIC(10,7) NOT NULL,
   percentile_5 NUMERIC(10,7) NOT NULL,
   percentile_95 NUMERIC(10,7) NOT NULL,
   min NUMERIC(10,7) NOT NULL,
   max NUMERIC(10,7) NOT NULL,
   time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```
6. Create a `raw` table using the following syntax
```
CREATE TABLE raw (
   exp_date DATE NOT NULL DEFAULT CURRENT_DATE,
   exp_label VARCHAR NOT NULL,
   benchmark_suite VARCHAR(100) NOT NULL,
   benchmark_item VARCHAR(100) NOT NULL,
   engine VARCHAR(100) NOT NULL,
   version VARCHAR(100) NOT NULL,
   config VARCHAR(40) NOT NULL,
   machine VARCHAR(25) NOT NULL,
   metric_type metric NOT NULL,
   samples NUMERIC(10,7)[] NOT NULL,
   time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```

### How to run `summarize.py`
1. Create a configuration file `config.json` in the same directory as `summarize.py` with the following access keys. Leave host and port as empty strings if unknown.
```
   {
   "host": "host",
   "port": "port",
   "dbname": "database_name",
   "user": "username",
   "pwd": "password"
   }
```
2. Set `DATA_DIR` to the directory where experiment folders and datafiles are located.
```
export DATA_DIR=~/wish-you-were-fast/reuse23/
```
3. (Optional) Print out the data into a table with the option to view specific experiments, suites, and configs. (Requires prettytable)
```
# View all data
python3 summarize.py TABLE --data_dir=$DATA_DIR


# View specific data
EXP=execution SUITES='ostrich libsodium' CONFIGS='wasm3' python3 summarize.py TABLE --data_dir=$DATA_DIR
```
4. Upload data to either `summary` or `raw` table with option to upload only specific data.
```
# Upload all the data to summary
python3 summarize.py UPLOAD_SUM --data_dir=$DATA_DIR


# Upload all data to raw
python3 summarize.py UPLOAD_RAW --data_dir=$DATA_DIR


# Variable options to instantiate before running command: metric type, experiment, experiment label, machine
METRIC_TYPE=
EXP=
EXP_LABEL=
MACHINE=
TABLE_NAME
```
