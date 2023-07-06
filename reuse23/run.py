import os, subprocess
import common # common.py file
from datetime import datetime

'''
How to Run Script
- Set DATA_DIR, EXP, and BTIME_OPTIONS(if applicable)
- Execute command: $ python3 reuse23/run.py

Notes:
- Script assumes its being ran in wish-you-were-fast/ directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 reuse23/run.py 
- Script assumes btime is a function on the server
'''
def build_engine(): # TODO automatically download and build engines
    # get the engine version from the json
    # go to the URL for download and build; set up error notification
    return

def make_timestamp():
    return str(datetime.today())

# checks if an engine is running; helper function for check_running_configs() 
def check_running_engines(): # combine check_running functions after all engines are built
    engines = ['iwasm','sm', 'v8', 'wasm3', 'wasmer', 'wasmnow', 'wasmtime', 'wavm', 'wazero', 'wizeng'] # TODO jsc
    working_engines = []
    for eng in engines:
        try: result = subprocess.run(['./reuse23/engines/' + eng + '-link --version'], shell=True, capture_output=True, text=True)
        except: result = subprocess.run(['./reuse23/engines/' + eng + '-link -version'], shell=True, capture_output=True, text=True)
        if result.stdout: # only appends if there is no error
            working_engines.append(eng)
    return working_engines

# checks if an engine has a working config setting; command line call varies by engine
def check_running_configs():
    working_configs = []
    engines = check_running_engines()
    for config in all_configs:
        exit_code = -1
        if config == engines: 
            working_configs.append(config)
        # elif 'iwasm-' in config: 
        #     command = subprocess.Popen(['./reuse23/engines/' + config + ' --version'], shell=True, stdout=subprocess.DEVNULL)
        #     exit_code = command.wait()
        elif 'wizeng-' in config:
            command = subprocess.Popen(['./reuse23/engines/' + config + ' -version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'sm-' in config or 'jsc-' in config:
            command = subprocess.Popen(['./reuse23/engines/' + config], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        if exit_code == 0: # config works if exit code = 0
            working_configs.append(config)
    return working_configs

def btime(cmd, wasmfile, datafile): # runs 10 times
    if btime_options == '-f':
        command = ['btime', btime_options, '-l', '10', cmd, wasmfile] # array of command line arguments to parse
    else: command = ['btime', '-l', '10', cmd, wasmfile]
    try:
        result = subprocess.run(command, capture_output=True, text=True) # runs the command line, captures output as text
        if result.returncode == 0: # if the command worked, records the results in a file
            with open(datafile, 'w') as file:
                file.write(make_timestamp() + '\n')
                file.write(result.stdout)
        else:
            print("execution failed: " + cmd + ' ' + wasmfile)
    except FileNotFoundError:
        print('The btime executable was not found')
    except subprocess.CalledProcessError as e:
        print('An error occured while running btime:', e)

def run_btime_experiment(suite):
    for b in benchmarks:
        for config in configs:
            if btime_options == '-f': 
                wasmfile = 'wasm/suites/'+suite +'0/'+b+'.wasm'
                datafile = data_dir+exp+'/'+suite+'0.'+b+'.'+config+'.txt' # for the zero files
            else: 
                wasmfile = 'wasm/suites/'+suite+'/'+b+'.wasm' # wasm files to execute 
                datafile = data_dir+exp+'/'+suite+'.'+b+'.'+config+'.txt' # stores results
        
            cmd = './reuse23/engines/'+config # command to execute the wasm file
            btime(cmd, wasmfile, datafile)

def run_execution_experiment(suite):
    run_btime_experiment(suite)

if __name__ == "__main__":

    exp = common.exp
    suites = common.assign_suites()
    all_configs = common.assign_configs()
    configs = check_running_configs()
    data_dir = os.environ.get('DATA_DIR') # directory for results to go to; 'reuse23/run_experiments/'
    btime_options = os.environ.get('BTIME_OPTIONS') # must either be '-l' or '-f'

    if exp == 'execution':
        if not os.path.exists(data_dir+exp):
            os.mkdir(data_dir+exp)
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            run_execution_experiment(suite)