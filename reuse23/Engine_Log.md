# reuse23

This engine log keeps track of the engine configurations that have been tested and contains instructions on how to build the engines for Linux.

## Testing Log

7/12/2023: v8-v11.7.105, sm-v116.0b1, jsc-v265838, wasmer-v4.0.0, wasmtime-v10.0.1, wasm3-v0.5.0, wizeng-v23α.1346

## Engine Installation

### V8, SpiderMonkey, JavaScriptCore

In order to build and update v8, sm, and jsc, [jsvu](https://github.com/GoogleChromeLabs/jsvu) must be installed. This installation requires `Node.js`.

The engines are built in `.jsvu/bin/`. The versions of the dowloaded engines are in `status.json`.

### Wasmer

Following the instructions of the [Wasmer Repo](https://github.com/wasmerio/wasmer), execute the following code (no dependencies required).
`curl https://get.wasmer.io -sSfL | sh`

The engine is built in `.wasmer/bin/`. The engine updates through build.py running the `self-update` command. TODO wasmer-base installation.

### Wasmtime

Following the instructions of the [Wasmtime Repo](https://github.com/bytecodealliance/wasmtime), exectue the following code (no dependencies required).
`curl https://wasmtime.dev/install.sh -sSf | bash`

The engine is built in `./wasmtime/bin/`. The engine updates through build.py running the previous command.

### Wasm3

[Wasm3](https://github.com/bytecodealliance/wasm-micro-runtime/tree/main) installation requires [CMake](https://cmake.org/install/).

Once [CMake](https://cmake.org/install/) is installed, clone the [Wasm3 Repo](https://github.com/bytecodealliance/wasm-micro-runtime/tree/main). In the repo, execute the following commands
```
$ mkdir build && cd build
$ cmake ..
$ make
```

The engine is built in `./wasm3/build/`. The engine updates through build.py running `git pull`.

### Wizard TODO
### Wavm TODO
### iWasm TODO
### Wazero TODO




