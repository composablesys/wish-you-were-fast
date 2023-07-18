# Engine Log & Installation Guide

This engine log keeps track of the engine configurations that have been tested and contains instructions on how to build the engines for x86-64-linux with Ubuntu 20.04.

To update engine symlink, navigate to `wish-you-were-fast/reuse23/engine` and excute the following command:
```
# If symlink already exists
$ ln -sf ~/wish-you-were-fast/reuse23/build/<engine name> ./<engine name>-link

# If creating a new symlink
$ ln -s ~/wish-you-were-fast/reuse23/build/<engine name> ./<engine name>-link
```    

## Built Engines Log
Last Updated: July 18, 2023

These are lists of the currently built engines. The version numbers for V8, SpiderMonkey, and JavaScriptCore, correspond to the released versions. The version numbers for all other engines correspond to the hash of the commits to their repos.

**V8:** 11.7.105

**SpiderMonkey:** 114.0, 116.0

**JavaScriptCore:** 264545, 265838

**Wasmer:** 

**Wasmtime:** 0aa00479c9fbb39ef19a9f35d2ed0137454c93f5, a45abadbc39a57dd3e404231e2751a80cdafa4b0, dfd6885365b83a40830cf66bcc11e1059e8072ee

**Wasm3:**

**Wizard:**

**Wavm:** 3f9a150cac7faf28eab357a2c5b83d2ec740c7d9

**iWasm:**

**Wazero:** 1cdb72d43163a6c3edd33319b382a0feb0f4d459

## Engine Installation

### V8, SpiderMonkey, JavaScriptCore

In order to build and update v8, sm, and jsc, [jsvu](https://github.com/GoogleChromeLabs/jsvu) must be installed. This installation requires `Node.js`. The engines are built in `.jsvu/bin/`. The versions of the dowloaded engines are in `status.json`.

### Wasmer

Clone the [Wasmer Repo](https://github.com/wasmerio/wasmer) into your home directory. Following the instructions of the repo, execute the following code (no dependencies required).
```
$ curl https://get.wasmer.io -sSfL | sh
```
The engine is built in `./wasmer/bin/`. The engine updates through build.py running the `self-update` command. TODO wasmer-base installation.

### Wasmtime

[Wasmtime](https://github.com/bytecodealliance/wasmtime) installation requires [Rust toolchain](https://www.rust-lang.org/tools/install) to be installed. Clone the repo and initialize the git submodules with the following command in the repo
```
$ git submodule update --init
```
Then run this command in the root of the repository to make an optimized build
```
$ cargo build --release
```
The engine is built in `./wasmtime/target/release`. The engine updates through build.py running `git pull`.

### Wasm3

[Wasm3](https://github.com/wasm3/wasm3) installation requires [CMake](https://cmake.org/install/). Once [CMake](https://cmake.org/install/) is installed, clone the [Wasm3 Repo](https://github.com/wasm3/wasm3). 
In the repo, execute the following commands
```
$ mkdir build && cd build
$ cmake ..
$ make
```

The engine is built in `./wasm3/build/`. The engine updates through build.py running `git pull`.

### Wizard 

Follow the instructions on the [Wizard Repo](https://github.com/titzer/wizard-engine/blob/master/doc/Building.md). The engine is built in `wizard-engine/bin/`. The engine updates through build.py running `git pull`. The `wizeng-x86-64-linux` is used for testing.

### Wavm

[Wavm](https://github.com/WAVM/WAVM) installation requires CMake and LLVM (instructions in repo). Once the prerequisites are built and engine is cloned, Wavm can alternatively be built using the following commands in the repo
```
$ mkdir build_dir && cd build_dir
$ cmake ..
$ make
```

The engine is built in `WAVM/build_dir/bin/`. The engine updates through build.py running `git pull`.

### iWasm TODO

Clone the [iwasm repo](https://github.com/bytecodealliance/wasm-micro-runtime).

### Wazero TODO

[Wazero](https://github.com/tetratelabs/wazero) installation requires [go](https://go.dev/doc/install). Clone the wazero repo and use the following commands in the repo
```
$ go build
$ go ./cmd/wazero
```

The engine is built in `wazero/`. The engine updates through build.py running `git pull`.

#### how to install go

On the go install page, download the tar. In your local terminal, go to the directory where it was downloaded and run the following command to copy the file to the remote host
```
$ scp go1.20.6.linux-amd64.tar.gz <username>@<server>:/home/<username>
```
In your remote terminal, extract tar in the directory where you copied it to by running the following command
```
$ sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz
```
Edit .bashrc to update the path
```
$ vi .bashrc
```
`shift + G` to get to the bottom of that file and add `export PATH=$PATH:/usr/local/go/bin`. Close the file and source it by running the following command
```
$ source .bashrc
```
Verify that you've installed go with the command
```
$ go version
```
