# Wasm Benchmarking Scripts

## How to build and update engines
Consult the `ENGINELOG.md` located in this directory for instructions on how to build each engine. Create an `engines.json` file in the directory in which the engines are built and populate it with the first build information. To check and update the engines, you run the `build.py` script in the home directory.

### How to run script
- Set BUILD_DIR (directory to put the built engines in)
- Execute command: $ python3 wish-you-were-fast/reuse23/build.py

Notes:
- Script assumes its being ran in home directory so hardcoded paths reflect that
- Script assumes the json file already contains a dictionary for each engine and list of dictionaries of each first build in order to add the data for a new engine version
- Script attempts to build all engines listed in `common.py` in the `assign_engines()` function.
- You must manually add update ENGINELOG.md when engines are updated and experiments are run.

## How to run experiments
### How to run script
- Set DATA_DIR (directory to put the data), EXP (defaults to 'execution'), and BTIME_OPTIONS(if applicable)
- Execute command: $ python3 wish-you-were-fast/reuse23/run.py

Notes:
- Script assumes its being ran in home directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 wish-you-were-fast/reuse23/run.py 
- Script assumes btime and jsvu are functions on the server
- If only certain engines have a new verison that must be tested, you must manually change the configs in `common.py` to run the experiments on those specifically.

## How to upload experiment data to the database
### How to run script
1. Make a configuration file 'config.json' in the same folder as summarize.py
2. In the file, assign the following variable to your specific access keys
    {
    "db": "database_name",
    "user": "username",
    "pwd": "password", 
    }
3. Set the data directory path using 'export DATA_DIR=/path/to/parent-directory/of/data/' 
    ex. export DATA_DIR=/home/alexahalim/test-data-ryzen-9/
    *** DATA_DIR can be initialized at the same time as the other variables
    *** EXP is the sub-directory in which all data from an experiment is stored (ex: speedup)

TABLE Command
4. Run the script with option to set EXP= SUITES= and CONFIGS= :
    'python3 summarize.py TABLE --data_dir $DATA_DIR'

UPLOAD Commands
5. Run the script with option to set METRIC_TYPE=, EXP=, EXP_LABEL=, MACHINE=, and TABLE_NAME=
    '*variable instatiations* python3 summarize.py UPLOAD_SUM --data_dir $DATA_DIR'
    '*variable instatiations* python3 summarize.py UPLOAD_RAW --data_dir $DATA_DIR'

Notes:
- This script assumes data files are all in the format: 'suite.line_item.config.txt
- This scripts assumes it is being ran in the directory in which the file is located.