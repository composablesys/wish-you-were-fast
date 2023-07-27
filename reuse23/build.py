import os, subprocess, json, shutil, sys, pathlib, requests
from bs4 import BeautifulSoup
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
        elif eng == 'wasmer':
            wasmer_git = git.cmd.Git('wasmer')
            wasmer_git.pull()
            path = str(pathlib.Path.home()) + "/wasmer"
            subprocess.run('make build-wasmer', shell=True, cwd=path)
        elif eng in ['wasm3', 'wavm']:
            if eng == 'wasm3': eng_git = git.cmd.Git('wasm3') 
            else: eng_git = git.cmd.Git('WAVM')
            eng_git.pull()
            path = str(pathlib.Path.home()) + "/" + engine_dir(eng)
            subprocess.run('cmake ..', shell=True, cwd=path)
            subprocess.run('make', shell=True, cwd=path)
        elif eng == 'wizeng':
            wizeng_git = git.cmd.Git('wizard-engine')
            wizeng_git.pull()
        elif eng == 'iwasm':
            iwasm_git = git.cmd.Git(engine_dir('iwasm'))
            iwasm_git.pull()
            path = str(pathlib.Path.home()) + "/" + engine_dir(eng)
            subprocess.run('cmake .. -DWAMR_DISABLE_WRITE_GS_BASE=1 -DWAMR_BUILD_FAST_JIT=1', shell=True, cwd=path)
            subprocess.run('make', shell=True, cwd=path)
        elif eng == 'wazero':
            wazero_git = git.cmd.Git('wazero')
            wazero_git.pull()
            path = str(pathlib.Path.home()) + "/" + engine_dir(eng)
            subprocess.run('go build ./cmd/wazero', shell=True, cwd=path)
        else: continue
    
        if (version_exists(eng) == False) and (new_engine(eng)): # makes copy of engine from original build
            dir = engine_dir(eng) 
            version = get_version(eng)
            if eng == 'wizeng':
                shutil.copy(dir+'wizeng.x86-64-linux', build_dir+eng+'/'+eng+'-v'+version)
            else: 
                shutil.copy(dir+eng, build_dir+eng+'/'+eng+'-v'+version)
            print('New version of ' + eng + ' has been built.')
            add_version_data(eng, version)

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
def get_version(engine):
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
        path = str(pathlib.Path.home()) + "/" + engine_dir(engine)
        result = subprocess.run(command, shell=True, capture_output=True, text=True, cwd=path)
        version = result.stdout
    return version

def add_version_data(engine, version): # TODO 
    with open(build_dir + "engines.json", "r") as file:
        data = json.load(file)
    
    if engine == 'v8':
        v8_git = git.cmd.Git('v8')
        v8_git.pull()
        path = str(pathlib.Path.home()) + "/v8"
        command = "git log -1 --format=%ai " + version
        result = subprocess.run(command, shell=True, capture_output=True, text=True, cwd=path)
        timestamp = result.stdout
        new_date = timestamp[:timestamp.rindex(' ')]
    elif engine == 'jsc': #FIXME: file with the version not found
        url = "https://webkitgtk.org/jsc-built-products/x86_64/release/"
        try:
            response = requests.get(url)
            response.raise_for_status() # raises an exception for 4xx or 5xx status codes
            
            # parse the HTML content of the directory listing
            soup = BeautifulSoup(response.content, 'html.parser')

            # finding link that contains the version
            file_link = None
            print(soup.find_all('a')) # prints empty list
            for link in soup.find_all('a'):
                if version in link.get('href'):
                    file_link = link.get('href')
                    break
            
            if file_link:
                file_url = url.rstrip('/') + '/' + file_link
                file_response = requests.head(file_url)
                file_response.raise_for_status()

                last_modified = file_response.headers.get('Last-Modified')
                print('File URL:', file_url) # for testing
                print('Last Modified:', last_modified) # for testing
                new_date = last_modified # remove once debugged
            else:
                print('File with the version not found.')
                new_date = "" # remove once debugged
        except requests.exceptions.RequestException as e:
            print('Failed to retrieve data:', e)
        # new_date = last_modified FIXME: remove comment once debugged
    elif engine == 'sm':
        url = "https://product-details.mozilla.org/1.0/firefox_history_development_releases.json"
        try:
            response = requests.get(url)
            response.raise_for_status() # raises an exception for 4xx or 5xx status codes
            json_data = response.json()
            try:
                new_date = json_data[version]
            except KeyError:
                print('Key ' + version + ' not found in the JSON data.')
        except requests.exception.RequestException as e:
            print('Failed to retrieve data:', e)
    elif engine in ['wasmtime', 'wasmer', 'wasm3', 'wizeng', 'wavm', 'wazero', 'iwasm']:
        path = str(pathlib.Path.home()) + "/" + engine_dir(engine)
        command = "git show --no-patch --format='%cd' --date=format:'%Y-%m-%d %H:%M:%S' " + version
        output = subprocess.run(command, shell=True, capture_output=True, text=True, cwd=path)
        timestamp = output.stdout
        new_date = timestamp[:timestamp.index('\n')]
    print(new_date) # for testing
    engine_versions = data['engines'][engine]
    new_version = {"version": version, "date": new_date}
    engine_versions.append(new_version)
        
    with open(build_dir + "engines.json", "w") as file:
        json.dump(data, file, indent=2)

if __name__ == "__main__":

    build_dir = os.environ.get('BUILD_DIR','wish-you-were-fast/reuse23/build/') # directory to put builds in
    engines = common.assign_engines()
    build_engine()

    ''' testing for get_version '''
    # engine = os.environ.get('ENGINE', 'wizeng')
    #if sys.argv[1] == 'VERSION_TESTING':
        #print(get_version(engine))

    ''' testing for new_engine '''
    # engine = os.environ.get('ENGINE', 'wasm3')
    #if sys.argv[1] == 'COMMIT_TESTING':
        #print(new_engine(engine))

    ''' testing for add_version_data '''
    # engine = os.environ.get('ENGINE', 'v8')
    # version = os.environ.get('VERSION', '11.7.254')
    # if sys.argv[1] == 'DOC_EDIT':
    #     add_version_data(engine, version)