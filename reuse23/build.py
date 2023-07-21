import os, subprocess, json, shutil, sys, pathlib
import git
import common

# helper function for build_engine() to find directory where engine is built
def engine_dir(engine):
    dir = "Engine does not exist."
    if engine in ['v8','jsc','sm']:
        dir = '.jsvu/bin/'
    elif engine == 'wasmer':
        dir = engine+'/target/release/'
    elif engine == 'wasmtime':
        dir = 'wasmtime/target/release/'
    elif engine == 'wasm3':
        dir = 'wasm3/build/'
    elif engine == 'iwasm': 
        dir = 'wasm-micro-runtime/product-mini/platforms/linux/build/'
    elif engine == 'wizeng':
        dir = 'wizard-engine/bin/'
    elif engine == 'wavm':
        dir = 'WAVM/build_dir/bin/'
    elif engine == 'wazero':
        dir = 'wazero/'
    return dir

def build_engine(): 
    engines = ['wavm', 'iwasm'] # remove after testing; jsvu and wasmtime have NOT been tested
    for eng in engines:
        if not os.path.exists(build_dir + eng): # make a dir for an engine
            os.mkdir(build_dir + eng)

        if eng in ['v8', 'jsc', 'sm']: # built by jsvu
            subprocess.run(['jsvu --engines=javascriptcore,v8,spidermonkey'], shell=True) # run the jsvu command to update the engines
        elif eng == 'wasmtime':
            wasmtime_git = git.cmd.Git('wasmtime')
            wasmtime_git.pull()
            path = str(pathlib.Path.home()) + "/wasmtime"
            subprocess.run('cargo clean', shell=True, cwd=path)
            subprocess.run('cargo build --release', shell=True, cwd=path)
        elif eng == 'wasmer': #FIXME with source build update: $ make build-wasmer
            subprocess.run(['./.wasmer/bin/wasmer', 'self-update'], shell=True)
        elif eng == 'wasm3':
            wasm3_git = git.cmd.Git('wasm3') 
            wasm3_git.pull()
            path = str(pathlib.Path.home()) + "/" + engine_dir(eng)
            subprocess.run('cmake ..', shell=True, cwd=path)
            subprocess.run('make', shell=True, cwd=path)
        elif eng == 'wizeng':
            wizeng_git = git.cmd.Git('wizard-engine')
            wizeng_git.pull()
        elif eng == 'wavm':
            wavm_git = git.cmd.Git('WAVM')
            wavm_git.pull()
            path = str(pathlib.Path.home()) + "/" + engine_dir(eng)
            subprocess.run('cmake ..', shell=True, cwd = path)
            subprocess.run('make', shell=True, cwd = path)
        elif eng == 'wazero':
            wazero_git = git.cmd.Git('wazero')
            wazero_git.pull()
            path = str(pathlib.Path.home()) + "/" + engine_dir(eng)
            subprocess.run('go build ./cmd/wazero', shell=True, cwd=path)
        elif eng == 'iwasm': 
            iwasm_git = git.cmd.Git(engine_dir('iwasm'))
            iwasm_git.pull() 
        else: continue
    
        if (version_exists(eng) == False) and (new_engine(eng)): # makes copy of engine from original build
            dir = engine_dir(eng) 
            if eng == 'wizeng':
                shutil.copy(dir+'wizeng.x86-64-linux', build_dir+eng+'/'+eng+'-v'+get_version(eng))
            else: 
                shutil.copy(dir+eng, build_dir+eng+'/'+eng+'-v'+get_version(eng))
            print('New version of ' + eng + ' has been built.')

# checks if this engine version already exists
def version_exists(engine):
    exists = os.path.exists(build_dir+engine+'/'+engine+'-v'+get_version(engine))
    if exists == True: print(engine + " is already up to date. No new repo commits.")
    return exists

# checks if the new repo commit actually produced a new engine binary file
def new_engine(engine):
    if engine == 'wizeng':
        new_build = str(pathlib.Path.home()) + '/' + engine_dir(engine) + 'wizeng.x86-64-linux'
    else: new_build = str(pathlib.Path.home()) + '/' + engine_dir(engine) + engine
    path = str(pathlib.Path.home()) + "/" + build_dir + engine + "/"
    result = subprocess.run('ls -t | head -1', shell=True, capture_output=True, cwd=path, text=True)
    latest_build = result.stdout.strip()
    output = subprocess.run('diff ' + new_build + ' ' + latest_build, shell=True, capture_output=True, cwd=path, text=True)
    if len(output.stdout) != 0: return True
    else:
        print(engine + " is already up to date. New repo commits did not produce a new binary file.")
        return False

# helper function for building engine (naming engine with version number)
def get_version(engine): # TODO wasmnow, wazero, wizeng
    version = 'error_get_version'
    command = "git log --pretty=format:'%H' -1"
    if engine in ['v8', 'jsc', 'sm']:
        with open('.jsvu/status.json') as status:
            data = json.load(status)
        if engine == 'sm':
            version = data['spidermonkey']
        elif engine == 'jsc':
            version = data['javascriptcore']
        else: version = data[engine]
    else:
        path = str(pathlib.Path.home()) + "/" + engine_dir(engine) + "/"
        result = subprocess.run(command, shell=True, capture_output=True, text=True, cwd=path)
        version = result.stdout
    return version


if __name__ == "__main__":
    build_dir = os.environ.get('BUILD_DIR','wish-you-were-fast/reuse23/build/') # directory to put builds in
    build_engine()
    ''' testing for get_version '''
    # engine = os.environ.get('ENGINE', 'wizeng')
    #if sys.argv[1] == 'VERSION_TESTING':
        #print(get_version(engine))
    ''' testing for new_engine '''
    # engine = os.environ.get('ENGINE', 'wasm3')
    #if sys.argv[1] == 'COMMIT_TESTING':
        #print(new_engine(engine))