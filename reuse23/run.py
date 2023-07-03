import os, subprocess
import common # common.py file

''' TODO automatically download and build engines
- Get engine version from json
    -  Go to URL for download and build
    - Set up error notification if build fails
 '''
'''
 Notes:
 - Script assumes its being ran in wish-you-were-fast directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 reuse23/run.py 
 - Script assumes btime is a function on the server
 - Once all engines are built, adjust check_running() functions; maybe combine them
 '''

# checks if an engine is running; helper function for check_running_configs() 
def check_running_engines():
    engines = ['iwasm','sm', 'v8', 'wasm3', 'wasmer', 'wasmnow', 'wasmtime', 'wavm', 'wazero', 'wizeng'] # TODO jsc
    working_engines = []
    for eng in engines:
        try: result = subprocess.run(['./jit-paper-exp/engines/' + eng + '-link --version'], shell=True, capture_output=True, text=True)
        except: result = subprocess.run(['./jit-paper-exp/engines/' + eng + '-link -version'], shell=True, capture_output=True, text=True)
        if result.stdout: # only appends if there is no error
            working_engines.append(eng)
    return working_engines

# checks if an engine has a working config setting; command line varies by engine
def check_running_configs():
    working_configs = []
    engines = check_running_engines()
    for config in all_configs:
        exit_code = -1
        if config == engines: 
            working_configs.append(config)
        # elif 'iwasm-' in config: 
        #     command = subprocess.Popen(['./jit-paper-exp/engines/' + config + ' --version'], shell=True, stdout=subprocess.DEVNULL)
        #     exit_code = command.wait()
        elif 'wizeng-' in config:
            command = subprocess.Popen(['./jit-paper-exp/engines/' + config + ' -version'], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        elif 'sm-' in config or 'jsc-' in config:
            command = subprocess.Popen(['./jit-paper-exp/engines/' + config], shell=True, stdout=subprocess.DEVNULL)
            exit_code = command.wait()
        if exit_code == 0: # config works if exit code = 0
            working_configs.append(config)
    return working_configs

def btime(cmd, wasmfile, runs, datafile):
    if btime_options == '-f':
        command = ['btime', btime_options, '-l', str(runs), cmd, wasmfile] # array of command line arguments to parse
    else: command = ['btime', '-l', str(runs), cmd, wasmfile] # array of command line arguments to parse
    try:
        result = subprocess.run(command, capture_output=True, text=True) # runs the command line, captures output as text
        if result.returncode == 0: # if the command worked, records the results in a file
            with open(datafile, 'w') as file:
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
        
            cmd = './jit-paper-exp/engines/'+config # command to execute the wasm file
            btime(cmd, wasmfile, 5, datafile)

def run_execution_experiment(suite):
    run_btime_experiment(suite)

if __name__ == "__main__":

    suites = common.assign_suites()
    all_configs = common.assign_configs()
    configs = check_running_configs()
    # data_dir = os.environ.get('DATA_DIR') 
    data_dir = 'reuse23/run_experiments/' # directory for results to go to
    btime_options = os.environ.get('BTIME_OPTIONS') # must either be '-l' or '-f'
    exp = common.exp

    if exp == 'execution':
        if not os.path.exists(data_dir+exp):
            os.mkdir(data_dir+exp)
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            run_execution_experiment(suite)
    