import os, subprocess
import common # common.py file
from datetime import datetime

'''
How to Run Script
- Set DATA_DIR (directory to put the data), EXP (defaults to 'execution'), and BTIME_OPTIONS(if applicable)
- Execute command: $ python3 wish-you-were-fast/reuse23/run.py

Notes:
- Script assumes its being ran in home directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 wish-you-were-fast/reuse23/run.py 
- Script assumes btime and jsvu are functions on the server
'''
# checks if an engine has a working config setting; command line call varies by engine/configuration
def check_running_configs(): # TODO iwasm, wasmer-base, wasmnow, wavm, wazero
    working_configs = []
    for config in all_configs:
        exit_code = -1
        if config in ['wasm3', 'wasmtime', 'wasmer']: 
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + '-link --version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        # elif 'iwasm-' in config:
        #     command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + ' --version'], shell=True, stdout=subprocess.DEVNULL)
        #     exit_code = command.wait()
        elif 'wizeng-' in config:
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + ' -version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'sm-' in config or 'jsc-' in config or 'v8-' in config:
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        if exit_code == 0: # config works if exit code = 0
            working_configs.append(config)
    return working_configs

def make_timestamp():
    return str(datetime.today())

# helper function for get_version()
def get_engine(config):
    if 'v8' in config:
        return 'd8'
    elif '-' in config:
        return config[:config.find('-')]
    else: return config

def get_version(config):
    engine = get_engine(config)
    target = os.readlink('wish-you-were-fast/reuse23/engines/'+engine+'-link')
    version = target[target.find('-v')+2:]
    return version

def btime(cmd, wasmfile, datafile, config): # runs 10 times
    if btime_options == '-f':
        command = ['btime', btime_options, '-l', '10', cmd, wasmfile] # array of command line arguments to parse
    else: command = ['btime', '-l', '10', cmd, wasmfile]
    try:
        result = subprocess.run(command, capture_output=True, text=True) # runs the command line, captures output as text
        if result.returncode == 0: # if the command worked, records the results in a file
            with open(datafile, 'w') as file:
                file.write(make_timestamp() + '\n')
                file.write('version: ' + get_version(config) + '\n')
                file.write(result.stdout)
            print(datafile)
        else:
            print("execution failed: " + cmd + ' ' + wasmfile)
    except FileNotFoundError:
        print('The btime executable was not found')
    except subprocess.CalledProcessError as e:
        print('An error occured while running btime:', e)

def wasmer_btime(cmd, wasmfile, datafile, config): # specific function because cache has to be cleared each run
    if btime_options == '-f':
        command = ['btime', btime_options, '-l', '1', cmd, wasmfile]
    else: command = ['btime', '-l', '1', cmd, wasmfile]
    try:
        result = subprocess.run(command, stdout=subprocess.DEVNULL)
        if result.returncode == 0:
            with open(datafile, 'w') as file:
                file.write(make_timestamp() + '\n')
                file.write('version: ' + get_version(config) + '\n')
                for i in range(10):
                    subprocess.run(['./wish-you-were-fast/reuse23/engines/wasmer-link', 'cache', 'clean'], stderr=subprocess.DEVNULL) # Output not printed
                    result = subprocess.run(command, capture_output=True, text=True)
                    file.write(result.stdout)
            print(datafile)
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
                wasmfile = 'wish-you-were-fast/wasm/suites/'+suite +'0/'+b+'.wasm'
                datafile = data_dir+exp+'/'+suite+'0.'+b+'.'+config+'.txt' # for the zero files
            else: 
                wasmfile = 'wish-you-were-fast/wasm/suites/'+suite+'/'+b+'.wasm' # wasm files to execute 
                datafile = data_dir+exp+'/'+suite+'.'+b+'.'+config+'.txt' # stores results
        
            cmd = './wish-you-were-fast/reuse23/engines/'+config # command to execute the wasm file
            if 'wasmer' in config: wasmer_btime(cmd, wasmfile, datafile, config)
            else: btime(cmd, wasmfile, datafile, config)

def run_execution_experiment(suite):
    run_btime_experiment(suite)

if __name__ == "__main__":

    exp = common.exp
    suites = common.assign_suites()
    all_configs = common.assign_configs()
    configs = check_running_configs()
    data_dir = os.environ.get('DATA_DIR','wish-you-were-fast/reuse23/') # directory for results to go to; 'wish-you-were-fast/reuse23/'
    btime_options = os.environ.get('BTIME_OPTIONS') # must either be '-l' or '-f'

    if exp == 'execution':
        if not os.path.exists(data_dir+exp):
            os.mkdir(data_dir+exp)
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            print("Successfully created:\n")
            run_execution_experiment(suite)   