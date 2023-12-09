# Wasm Benchmarking Scripts

## Overview
- `build.py` is for building engines
- `run.py` is for running experiments
- `summarize.py` is for uploading data into the database

## Build and Update Engines
1. First consult the `ENGINELOG.md` located in this directory for instructions on how to build each engine. 
2. Create an `engines.json` file in the directory in which the engines are built and populate it with the first build information. 
3. To check and update the engines, run the `build.py` script in the home directory.

### How to run `build.py`
This script should be run in the home directory and `engines.json` must exist with a dictionary for each engine and its build. The script will attempt to build all engines listed in `common.py` in the `assign_engines()` function. 

1. Set 'BUILD_DIR' to the directory for building engines.
```
export BUILD_DIR=wish-you-were-fast/reuse23/build
```
2. Run the script with the following command:
```
python3 wish-you-were-fast/reuse23/build.py
```
3. Manually update `ENGINELOG.md` with required information (date, version, etc.).


## Run Experiments
1. After building engines, make sure symlinks are updated in the `reuse23/engines` directory. Navigate to `wish-you-were-fast/reuse23/engines` and execute the following command:
```
# Replacing a symlink
ln -sf ~/<engine path> ./<engine name-version>-link

# Creating a new symlink
ln -s ~/<engine path> ./<engine name-version>-link
```    
### How to run `run.py`
This script should be run in the home directory and btime must be installed. Running experiments on specific configs must be changed in `common.py` manually. 

1. Set `DATA_DIR` to path where experiment folders and datafiles will be created. 
```
export DATA_DIR=~/wish-you-were-fast/reuse23/
```
2. (Optional) Set variable for experiment type and btime options. Defaults are `EXP=execution` and `BTIME_OPTIONS=-l`.
```
# Options: speedup, execution, startup
export EXP=speedup 

# Options: -l, -f (for zero files)
export BTIME_OPTIONS=-f
```
2. Run the script from the home directory with the following command:
```
python3 wish-you-were-fast/reuse23/run.py
```

## Summarize and Upload Data
This script should be ran in the directory where `summarize.py` is located. All datafiles must have title format of `suite.line-item.config.txt` (ex. `polybench.trmm.wasm3.txt`, `ostrich0.SRAD.wizeng-int.txt`).

### How to run `summarize.py`
1. Create a configuration file `config.json` in the same folder as `summarize.py`.
2. In the file, assign the following variable to your specific access keys.
```
    {
    "host": "host",
    "port": "port",
    "dbname": "database_name",
    "user": "username",
    "pwd": "password"
    }
```
3. Set `DATA_DIR` to path where experiment folders and datafiles exist. 
```
export DATA_DIR=~/wish-you-were-fast/reuse23/
``` 
4. (Optional) Print out the data into a table with option to view specific experiments, suites, and configs.
```
# View all data
python3 summarize.py TABLE --data_dir=$DATA_DIR

# View specific data
EXP=execution SUITES='ostrich libsodium' CONFIGS='wasm3' python3 summarize.py TABLE --data_dir=$DATA_DIR
```
5. Upload data to either `summary` or `raw` table with option to upload only specific data.
```
# Upload all the data to summary
python3 summarize.py UPLOAD_SUM --data_dir=$DATA_DIR

# Upload all data to raw
python3 summarize.py UPLOAD_RAW --data_dir=$DATA_DIR

# Variable options to instatiate before running command: metric type, experiment, experiment lable, machine
METRIC_TYPE=
EXP=
EXP_LABEL=
MACHINE=
TABLE_NAME
```

### The PostGreSQL Database Tables
(Add documentation about what is displayed and noted in the tables.)
