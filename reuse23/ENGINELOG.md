# Engine Log & Installation Guide

This engine log keeps track of the engine configurations that have been tested and contains instructions on how to build the engines for x86-64-linux with Ubuntu 20.04.

To update engine symlink, navigate to `wish-you-were-fast/reuse23/engine` and excute the following command:
```
# If symlink already exists
$ ln -sf ~/wish-you-were-fast/reuse23/build/<engine name>/<engine-version> ./<engine name>-link

# If creating a new symlink
$ ln -s ~/wish-you-were-fast/reuse23/build/<engine name>/<engine-version> ./<engine name>-link
```    

## Built Engines Log
Last Updated: July 19, 2023

These are lists of the currently built engines. The version numbers for V8, SpiderMonkey, and JavaScriptCore, correspond to the released versions. The version numbers for all other engines correspond to the hash of the commits to their repos.

<details>
<summary><b>V8 Versions</b></summary>
<br>
<ul>
    <li>11.7.105</li>
</ul>
</details>

<details>
<summary><b>SpiderMonkey Versions</b></summary>
<br>
<ul>
    <li>114.0</li>
    <li>116.0</li>
</ul>
</details>

<details>
<summary><b>JavaScriptCore Versions</b></summary>
<br>
<ul>
    <li>264545</li>
    <li>265838</li>
</ul>
</details>

<details>
<summary><b>Wasmer Versions</b></summary>
<br>
<ul>
    <li>77898a7767eb7057834fdc1a80b239e6b68cf44e</li>
</ul>
</details>

<details>
<summary><b>Wasmtime Versions</b></summary>
<br>
<ul>
    <li>0aa00479c9fbb39ef19a9f35d2ed0137454c93f5</li>
    <li>a45abadbc39a57dd3e404231e2751a80cdafa4b0</li>
    <li>dfd6885365b83a40830cf66bcc11e1059e8072ee</li>
    <li>fe69c0437602a59e718de04f1d40bebf0bf51662</li>
</ul>
</details>

<details>
<summary><b>Wasm3 Versions</b></summary>
<br>
<ul>
    <li>6b8bcb1e07bf26ebef09a7211b0a37a446eafd52</li>
    <li>772f8f4648fcba75f77f894a6050db121e7651a2</li>
</ul>
</details>

<details>
<summary><b>Wizard Versions</b></summary>
<br>
<ul>
    <li>45502370cb260e0d6017c2344466e41584e4c18f</li>
    <li>d5f0f5e165b239481a3e9eb7d7ca0bebc2ca95f5</li>
    <li>991d10b6993147ddc1b18c16b2b92139a079275f</li>
</ul>
</details>

<details>
<summary><b>Wavm Versions</b></summary>
<br>
<ul>
    <li>3f9a150cac7faf28eab357a2c5b83d2ec740c7d9</li>
</ul>
</details>

<details>
<summary><b>iWasm Versions</b></summary>
<br>
<ul>
    <li>57abdfdb5c19dab7c2f2a126082910f65ffc7af0</li>
</ul>
</details>

<details>
<summary><b>Wazero Versions</b></summary>
<br>
<ul>
    <li>1cdb72d43163a6c3edd33319b382a0feb0f4d459</li>
    <li>b842d6cbfdf8e6af77a84970ddbdbf0aa2be9f1d</li>
</ul>
</details>

## Engine Installation

### V8, SpiderMonkey, JavaScriptCore

In order to build and update v8, sm, and jsc, [jsvu](https://github.com/GoogleChromeLabs/jsvu) must be installed. This installation requires `Node.js`. The engines are built in `.jsvu/bin/`. The versions of the dowloaded engines are in `status.json`. The engines update through build.py running the `jsvu` command.

### Wasmer FIXME (for build from source and update instructions)

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
The engine is built in `./wasmtime/target/release`. The engine updates through build.py running the following commands
```
git pull
cargo clean
cargo build --release
```
*Disclaimer: Engine can still update if you get this message in the termainal while others things are compiling and the engine is building `warning: Failed to run 'rustfmt' on ISLE-generated code: Os { code: 2, kind: NotFound, message: "No such file or directory" }`

### Wasm3

[Wasm3](https://github.com/wasm3/wasm3) installation requires [CMake](https://cmake.org/install/). Once [CMake](https://cmake.org/install/) is installed, clone the repo and execute the following commands in `wasm/`
```
$ mkdir build && cd build
$ cmake ..
$ make
```

The engine is built in `./wasm3/build/`. The engine updates through build.py running the following commands
```
$ git pull
$ cmake ..
$ make
```

### Wizard

Follow the instructions on the [Wizard Repo](https://github.com/titzer/wizard-engine/blob/master/doc/Building.md). The engine is built in `wizard-engine/bin/`. The engine updates through build.py running `git pull`. The `wizeng-x86-64-linux` is used for testing.

### Wavm

[Wavm](https://github.com/WAVM/WAVM) installation requires CMake and LLVM (instructions in repo). Once the prerequisites are built and repo is cloned, Wavm can alternatively be built using the following commands in the repo
```
$ mkdir build_dir && cd build_dir
$ cmake ..
$ make
```

The engine is built in `WAVM/build_dir/bin/`. The engine updates through build.py running the following commands
```
$ git pull
$ cmake ..
$ make
```

### iWasm

[iWasm](https://github.com/bytecodealliance/wasm-micro-runtime) installation requires CMake and other dependencies (instructions in repo). Once prerequisties are built and repo is cloned, build iWasm with the `Fast JIT` mode. May have to use the following code opposed to repo instructions
```
$ cd product-mini/platforms/linux/
$ mkdir build && cd build
$ cmake .. -DWAMR_DISABLE_WRITE_GS_BASE=1 -DWAMR_BUILD_FAST_JIT=1
$ make
```

The engine is built in `wasm-micro-runtime/product-mini/platforms/linux/build/`. The engine updates through build.py running the following commands
```
$ git pull
$ cmake .. -DWAMR_DISABLE_WRITE_GS_BASE=1 -DWAMR_BUILD_FAST_JIT=1
$ make
```

### Wazero

[Wazero](https://github.com/tetratelabs/wazero) installation requires [Go](https://go.dev/doc/install). Clone the Wazero repo and use the following commands in the repo
```
$ go build
$ go ./cmd/wazero
```

The engine is built in `wazero/`. The engine updates through build.py running `git pull` and `go build ./cmd/wazero`.

#### How to Install Go

On the [Go Installation Page](https://go.dev/doc/install), download the tar. In your local terminal, go to the directory where it was downloaded and run the following command to copy the file to the remote host
```
$ scp go1.20.6.linux-amd64.tar.gz <username>@<server>:/home/<username>
```
In your remote terminal, extract tar in the directory where you copied it to by running the following command
```
$ sudo tar -C /usr/local -xzf go1.20.6.linux-amd64.tar.gz
```
Edit `.bashrc` to update the path
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
