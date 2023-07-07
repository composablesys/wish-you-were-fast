import os, subprocess, json, shutil
import common # common.py file
from datetime import datetime

'''
How to Run Script
- Set DATA_DIR (directory to make the engines + data), EXP (defaults to 'execution'), and BTIME_OPTIONS(if applicable)
- Execute command: $ python3 wish-you-were-fast/reuse23/run.py

Notes:
- Script assumes its being ran in home directory so hardcoded paths reflect that
    - data_dir,cmd, and wasmfile
    - $ python3 wish-you-were-fast/reuse23/run.py 
- Script assumes btime and jsvu are functions on the server
'''

# assumes jsvu is installed and set up
def build_engine(): # TODO automatically download and build engine; set up notification
    engines = []
    for eng in engines:
        if not os.path.exists(data_dir + 'build/' + eng): # make a dir for an engine
            os.mkdir(data_dir + 'build/' + eng)

        if eng in ['v8', 'jsc', 'sm']: # built by jsvu
            # subprocess.run(['jsvu --engines=javascriptcore,v8,spidermonkey'], shell=True) # run the jsvu command to update the engines
            shutil.copy('.jsvu/bin/'+eng, 'wish-you-were-fast/reuse23/build/'+eng+'/'+eng+'-v'+get_version(eng)) # copies and renames built engine
        elif eng == 'wasmtime':
            # subprocess.run(['curl https://wasmtime.dev/install.sh -sSf | bash'])
            shutil.copy('.wasmtime/bin/'+eng, 'wish-you-were-fast/reuse23/build/'+eng+'/'+eng+'-v'+get_version(eng))
    return

def get_version(engine): # helper function for building engine (naming engine with version number)
    if engine in ['v8', 'jsc', 'sm']:
        with open('.jsvu/status.json') as status:
            data = json.load(status)
        if engine == 'sm':
            version = data['spidermonkey']
        elif engine == 'jsc':
            version = data['javascriptcore']
        else: version = data[engine]
    elif engine == 'wasmtime':
        output = subprocess.run(['./.wasmtime/bin/wasmtime --version'], shell=True, capture_output=True, text=True)
        temp = output.stdout.strip()
        version = temp[temp.find('-cli ')+5:].split('\n')[0] # output ex: 'wasmtime-cli 10.0.1'
    return version

def make_timestamp():
    return str(datetime.today())

# checks if an engine has a working config setting; command line call varies by engine
def check_running_configs(): # TODO iwasm, v8, wasmer, wasmnow, wavm, wazero
    working_configs = []
    for config in all_configs:
        exit_code = -1
        if config in ['wasm3', 'wasmtime']: 
            command = subprocess.Popen(['./wish-you-were-fast/reuse23/engines/' + config + '-link --version'], shell=True, stdout=subprocess.DEVNULL)
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
                wasmfile = 'wish-you-were-fast/wasm/suites/'+suite +'0/'+b+'.wasm'
                datafile = data_dir+exp+'/'+suite+'0.'+b+'.'+config+'.txt' # for the zero files
            else: 
                wasmfile = 'wish-you-were-fast/wasm/suites/'+suite+'/'+b+'.wasm' # wasm files to execute 
                datafile = data_dir+exp+'/'+suite+'.'+b+'.'+config+'.txt' # stores results
        
            cmd = './wish-you-were-fast/reuse23/engines/'+config # command to execute the wasm file
            btime(cmd, wasmfile, datafile)

def run_execution_experiment(suite):
    run_btime_experiment(suite)

if __name__ == "__main__":

    engines = common.assign_engines() # for building/updating engines

    exp = common.exp
    suites = common.assign_suites()
    all_configs = common.assign_configs()
    configs = check_running_configs()
    data_dir = os.environ.get('DATA_DIR','wish-you-were-fast/reuse23/') # directory for results to go to; 'wish-you-were-fast/reuse23/'
    btime_options = os.environ.get('BTIME_OPTIONS') # must either be '-l' or '-f'

    if exp == 'execution':
        if not os.path.exists(data_dir+'experiments'+exp):
            os.mkdir(data_dir+'experiments'+exp)
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            run_execution_experiment(suite)