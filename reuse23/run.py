import os, subprocess
import common # common.py file

''' TODO automatically download and build engines
- Get engine version from json
    -  Go to URL for download and build
    - Set up error notification if build fails
- Fix check_running_engines() to get the engines based on the configs instead of hardcode
 '''
'''
 Notes:
 - Script assumes its being ran in wish-you-were-fast directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 reuse23/run.py 
 - Script assumes btime is a function on the server
 '''

# checks if an engine is running; helper function for check_running_configs() 
def check_running_engines():
    engines = ['iwasm','sm', 'v8', 'wasm3', 'wasmer', 'wasmnow', 'wasmtime', 'wavm', 'wazero', 'wizeng'] # TODO jsc
    working_engines = []
    for eng in engines:
        try:
            result = subprocess.run(['./jit-paper-exp/engines/' + eng + '-link --version'], shell=True, capture_output=True, text=True)
        except:
            result = subprocess.run(['./jit-paper-exp/engines/' + eng + '-link -version'], shell=True, capture_output=True, text=True)
        if result.stdout:
            working_engines.append(eng)
    return working_engines# expected: [iwasm, sm, wasm3, wasmtime, wizeng]

# checks if an engine has a config setting
def check_running_configs():
    working_configs = []
    engines = check_running_engines()
    for eng in engines:
        if eng in ('wasm3', 'wasmnow', 'wasmtime', 'wavm', 'wazero'): # engines without configs
            working_configs.append(eng)
    #     for config in all_configs: # remove engines w/o configs from configs array
    #         if config == 'wasm' or 'wasmtime':
    #             continue
    #         if eng in config:
    #             if eng == 'iwasm':
    #                 subprocess.run(['./jit-paper-exp/engines/' + config + '--version'], shell=True)
    #                 ec = subprocess.run(['echo', '$?'], shell=True, capture_output=True)
    #             elif eng == 'sm' or eng == 'jsc':
    #                 subprocess.run(['./jit-paper-exp/engines/' + config], shell=True)
    #                 ec = subprocess.run(['echo', '$?'], shell=True, capture_output=True)
    #             if ec.stdout == 0: # engine works if exit code = 0
    #                 working_configs.append(config)
    #             else: continue
    return working_configs

def run_execution_experiment(suite):
    print(check_running_configs())
    # run_btime_experiment(suite)

def btime(cmd, wasmfile, runs, datafile):
    try:
        command = ["btime", btime_options, str(runs), cmd, wasmfile] # array of command line arguments to parse
        result = subprocess.run(command, capture_output=True, text=True) # runs the command line, captures output as text
        if result.returncode == 0: # if the command worked, records the results in a file
            with open(datafile, "w") as file:
                file.write(result.stdout)
            print("success")
        else:
            print("execution failed: " + cmd + ' ' + wasmfile)
    except FileNotFoundError:
        print('The btime executable was not found')
    except subprocess.CalledProcessError as e:
        print('An error occured while running btime:', e)

def run_btime_experiment(suite):
    for b in benchmarks:
        for config in configs:
            if btime_options == '-l': 
                wasmfile = 'wasm/suites/' + suite +'/'+ b + '.wasm' # wasm files to execute 
                datafile = data_dir+exp+'/'+suite+'.'+b+'.'+config+'.txt' # stores results
            else: 
                wasmfile = 'wasm/suites/' + suite +'0/'+ b + '.wasm'
                datafile = data_dir+exp+'/'+suite+'0.'+b+'.'+config+'.txt' # for the zero files

            cmd = './jit-paper-exp/engines/' + config # command to execute the wasm file
            # checks if the engine is running; exit code = 0
            subprocess.run([cmd], shell=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            temp = subprocess.run(['echo','$?'], shell=True, capture_output=True, text=True)
            if temp.returncode != 0:
                print(config)
            else:
                print('successful: ' + config)
                # btime(cmd, wasmfile, 5, datafile)

if __name__ == "__main__":

    suites = common.assign_suites()
    all_configs = common.assign_configs()
    configs = check_running_configs()
    exp = 'execution' # hard coded but can use common.py
    # data_dir = os.environ.get('DATA_DIR') 
    data_dir = 'reuse23/run_experiments/' # directory for results to go to
    btime_options = os.environ.get('BTIME_OPTIONS', '-l') # must either be '-l' or '-f'

    if exp == 'execution':
        # if not os.path.exists(data_dir+exp):
        #     os.mkdir(data_dir+exp)
        # for suite in suites:
        #     benchmarks = common.get_benchmarks(suite)
        benchmarks = ['trmm']
        suite = 'polybench'
        run_execution_experiment(suite)
            