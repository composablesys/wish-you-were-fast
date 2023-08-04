import os, subprocess, json, sys
import common # common.py file
from datetime import datetime

# checks if an engine has a working config setting; command line call varies by engine/configuration
def check_running_configs(): # TODO wasmer-base
    working_configs = []
    for config in all_configs:
        exit_code = -1
        if config in ['wasm3', 'wasmtime']: 
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + '-link --version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif config in ['wavm', 'wazero']:
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + '-link version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'wasmer' == config: #FIXME: wasmer-base not working "error: The `singlepass` compiler is not included in this binary.""
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/wasmer-link --version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'iwasm-' in config:
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/iwasm-link --version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'wizeng-' in config:
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + ' -version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'sm-' in config or 'jsc-' in config or 'v8-' in config:
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        if exit_code == 0: # config works if exit code = 0
            working_configs.append(config)
    return working_configs

# returns the 
def get_timestamp(config, v_num):
    if "-" in config:
        config = config[:config.index("-")]
    with open(data_dir + "build/engines.json", "r") as file:
        data = json.load(file)
        file.close()
    version_data = data["engines"][config]
    for version in version_data:
        if version["version"] == v_num:
            date = version["date"]
    return date

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
                version = get_version(config)
                file.write(get_timestamp(config, version) + '\n')
                file.write('version: ' + version + '\n')
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
                version = get_version(config)
                file.write(get_timestamp(config, version) + '\n')
                file.write('version: ' + version + '\n')
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
    btime_options = os.environ.get('BTIME_OPTIONS') # -l default, -f option

    if exp == 'execution':
        if not os.path.exists(data_dir+exp):
            os.mkdir(data_dir+exp)
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            print("Successfully created:\n")
            run_execution_experiment(suite)   