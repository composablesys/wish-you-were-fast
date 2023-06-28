import os, subprocess
import common # common.py file

''' TODO automatically download and build engines
- Get engine version from json
- Go to URL for download and build
- Set up error notification if build fails
 '''
'''
 Notes:
 - Script assumes its being ran in wish-you-were-fast directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 reuse23/run.py 
 - Script assumes btime is a function on the server
 '''

def run_execution_experiment(suite):
    run_btime_experiment(suite)

def btime(cmd, wasmfile, runs, datafile):
    try:
        command = ["btime", btime_options, str(runs), cmd, wasmfile] # array of command line arguments to parse
        result = subprocess.run(command, capture_output=True, text=True) # runs the command line, captures output as text
        if result.returncode == 0: # if the command worked, records the results in a file
            with open(datafile, "w") as file:
                file.write(result.stdout)
            print("success")
        else:
            print("execution failed")
    except FileNotFoundError:
        print('The btime executable was not found')
    except subprocess.CalledProcessError as e:
        print('An error occured while running btime:', e)

def run_btime_experiment(suite):
    for b in benchmarks:
        for config in configs:
            wasmfile = 'wasm/suites/' + suite +'/'+ b + '.wasm' # wasm files to execute 
            cmd = './jit-paper-exp/engines/' + config # command to execute the wasm file
            # creates data file for the results
            if btime_options == '-f': datafile = data_dir+exp+'/'+suite+'0.'+b+'.'+config+'.txt' # for the zero files
            else: datafile = data_dir+exp+'/'+suite+'.'+b+'.'+config+'.txt'
        btime(cmd, wasmfile, 5, datafile)

if __name__ == "__main__":

    suites = common.assign_suites()
    # configs = common.assign_configs()
    # hard coded the engine-configs that are currently built
    configs = ['wasm3', 'iwasm-fjit', 'iwasm-int', 'jsc-bbq', 'jsc-int', 'jsc-omg', 'sm-base', 'sm-opt', 'wasmtime', 'wizeng-int', 'wizeng-jit']
    exp = 'execution' # hard coded but can use common.py
    # data_dir = os.environ.get('DATA_DIR') 
    data_dir = 'reuse23/run_experiments/' # directory for results to go to
    btime_options = os.environ.get('BTIME_OPTIONS', '-l') # must either be '-l' or '-f'

    if exp == 'execution':
        if not os.path.exists(data_dir+exp):
            os.mkdir(data_dir+exp)
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            run_execution_experiment(suite)
            