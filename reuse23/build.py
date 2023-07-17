import os, subprocess, json, shutil, sys, pathlib
import git
import common

# helper fupipnction for build_engine() to find directory where engine is built
def engine_dir(engine):
    if engine in ['v8','jsc','sm']:
        dir = 'jsvu'
    elif engine in ['wasmtime', 'wasmer','wasm3']:
        dir = engine
    elif engine == 'iwasm':
        dir = 'wasm-micro-runtime/product-mini/platforms/linux'
    elif engine == 'wizeng':
        dir = 'wizard-engine'
    return dir
    
'''Notes
- JSVU must be installed
- Must have wasm3 git repo copied in home directory
- Must have iwasm git repo copied in home directory (wasm-micro-runtime)
'''

def build_engine(): 
    engines = [] # remove after testing
    for eng in engines:
        if not os.path.exists(build_dir + eng): # make a dir for an engine
            os.mkdir(build_dir + eng)

        if eng in ['v8', 'jsc', 'sm']: # built by jsvu
            subprocess.run(['jsvu', '--engines=javascriptcore,v8,spidermonkey'], shell=True) # run the jsvu command to update the engines
        elif eng == 'wasmtime':
            subprocess.run(['curl', 'https://wasmtime.dev/install.sh', '-sSf', '|', 'bash'], shell=True) 
        elif eng == 'wasmer':
            subprocess.run(['./.wasmer/bin/wasmer', 'self-update'], shell=True)
        elif eng == 'wasm3':
            wasm3_git = git.cmd.Git('wasm3') 
            wasm3_git.pull() # git pull to update 
        elif eng == 'wizeng':
            wizeng_git = git.cmd.Git('wizard-engine')
            wizeng_git.pull()
        # elif eng == 'iwasm': # TODO fix iwasm build
        #     iwasm_git = git.cmd.Git(engine_dir('iwasm'))
        #     iwasm_git.pull() 
        else: continue
    
        if version_exists(eng) == False: 
            dir = engine_dir(eng) 
            if eng in ['v8', 'sm', 'jsc', 'wasmtime', 'wasmer']:
                shutil.copy('.'+dir+'/bin/'+eng, build_dir+eng+'/'+eng+'-v'+get_version(eng)) # jsvu, wasmtime, wasmer
            elif eng == 'wasm3':
                shutil.copy(dir+'/build/'+eng, build_dir+eng+'/'+eng+'-v'+get_version(eng)) # wasm3
            elif eng == 'wizeng':
                shutil.copy(dir+'/bin/wizeng.x86-64-linux',  build_dir+eng+'/'+eng+'-v'+get_version(eng)) # wizeng

# checks if this engine version already exists
def version_exists(engine):
    exists = os.path.exists(build_dir+engine+'/'+engine+'-v'+get_version(engine))
    return exists

# FIXME change how the engine gets the version number (hash number from git log)
# helper function for building engine (naming engine with version number)
def get_version(engine): # TODO wasmnow, wavm, wazero, wizeng
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
    elif engine in ['wasmtime', 'wasmer']: # FIXME get version from git log (these are NOT repos)
        output = subprocess.run(['./.'+engine+'/bin/'+engine+' --version'], shell=True, capture_output=True, text=True)
        temp = output.stdout.strip()
        if engine == 'wasmtime': version = temp[temp.find('-cli ')+5:].split('\n')[0] # output ex: 'wasmtime-cli 10.0.1'
        elif engine == 'wasmer': version = temp[temp.find('r')+2:].split('\n')[0] # output ex: 'wasmer 4.0.0'
    elif engine == 'wasm3':
        path = str(pathlib.Path.home()) + "/wasm-micro-runtime/"
        result = subprocess.run(command, shell=True, capture_output=True, text=True, cwd=path)
        version = result.stdout
    elif engine in ['wasm3', 'iwasm']: # FIXME get version from git log (these are repos)
        output = subprocess.run(['./'+engine_dir(engine)+'/build/'+engine+' --version'], shell=True, capture_output=True, text=True)
        temp = output.stdout.strip()
        if engine == 'wasm3': version = temp[temp.find('Wasm3 v')+7:temp.find('on')-1].split('\n')[0] # output ex: 'Wasm3 v0.5.0 on x86_64'
        # elif engine == 'iwasm': version = temp[temp.find('m')+2:].split('\n')[0]
    elif engine == 'wizeng':
        # assumes user has wizard-engine directory in home directory
        path = str(pathlib.Path.home()) + "/wizard-engine/"
        result = subprocess.run(command, shell=True, capture_output=True, text=True, cwd=path)
        version = result.stdout
    return version


if __name__ == "__main__":
    build_dir = os.environ.get('BUILD_DIR','wish-you-were-fast/reuse23/build/') # directory to put builds in
    engine = os.environ.get('ENGINE', 'wizeng')
    if sys.argv[1] == 'VERSION_TESTING':
        print(get_version(engine))
   