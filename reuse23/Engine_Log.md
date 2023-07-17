# Engine Log & Installation Guide

This engine log keeps track of the engine configurations that have been tested and contains instructions on how to build the engines for x86-64-linux with Ubuntu 20.04.

## Built Engines Log
Last Updated: July 12, 2023

These are lists of the currently built engines. The version numbers for V8, SpiderMonkey, and JavaScriptCore, correspond to the released versions. The version numbers for all other engines correspond to the hash of the commits to their repos.

**V8:** 11.7.105

**SpiderMonkey:** 114.0, 116.0

**JavaScriptCore:** 264545, 265838

**Wasmer:** 

**Wasmtime:**

**Wasm3:**

**Wizard:**

**Wavm:**

**iWasm:**

**Wazero:**

## Engine Installation

### V8, SpiderMonkey, JavaScriptCore

In order to build and update v8, sm, and jsc, [jsvu](https://github.com/GoogleChromeLabs/jsvu) must be installed. This installation requires `Node.js`. The engines are built in `.jsvu/bin/`. The versions of the dowloaded engines are in `status.json`.

### Wasmer

Following the instructions of the [Wasmer Repo](https://github.com/wasmerio/wasmer), execute the following code (no dependencies required).
```
$ curl https://get.wasmer.io -sSfL | sh
```
The engine is built in `./wasmer/bin/`. The engine updates through build.py running the `self-update` command. TODO wasmer-base installation.

### Wasmtime

Following the instructions of the [Wasmtime Repo](https://github.com/bytecodealliance/wasmtime), exectue the following code (no dependencies required).
```
$ curl https://wasmtime.dev/install.sh -sSf | bash
```
The engine is built in `./wasmtime/bin/`. The engine updates through build.py running the previous command.

### Wasm3

[Wasm3](https://github.com/bytecodealliance/wasm-micro-runtime/tree/main) installation requires [CMake](https://cmake.org/install/). Once [CMake](https://cmake.org/install/) is installed, clone the [Wasm3 Repo](https://github.com/bytecodealliance/wasm-micro-runtime/tree/main). In the repo, execute the following commands
```
$ mkdir build && cd build
$ cmake ..
$ make
```

The engine is built in `./wasm3/build/`. The engine updates through build.py running `git pull`.

### Wizard 

Follow the instructions on the [Wizard Repo](https://github.com/titzer/wizard-engine/blob/master/doc/Building.md). The engine is built in `wizard-engine/bin/`. The engine updates through build.py running `git pull`. The `wizeng-x86-64-linux` is used for testing.

### Wavm TODO

### iWasm TODO
### Wazero TODO




