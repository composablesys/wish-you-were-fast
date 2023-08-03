# Engine Log & Installation Guide

This engine log keeps track of the engine configurations that have been tested and contains instructions on how to build the engines for x86-64-linux with Ubuntu 20.04.

To update engine symlink, navigate to `wish-you-were-fast/reuse23/engines` and excute the following command:
```
# If symlink already exists
$ ln -sf ~/wish-you-were-fast/reuse23/build/<engine name>/<engine-version> ./<engine name>-link

# If creating a new symlink
$ ln -s ~/wish-you-were-fast/reuse23/build/<engine name>/<engine-version> ./<engine name>-link
```    

## Built Engines & Experiments Log
Last Updated: August 3, 2023

These are lists of the currently built engines and if/when they have been used in an experiment. The version numbers for V8, SpiderMonkey, and JavaScriptCore, correspond to the released versions. The version numbers for all other engines correspond to the hash of the commits to their repos.

<details>
<summary><b>V8 Versions</b></summary>
<br>
<ul>
    <li>11.7.105 (tested 2023-07-25)</li>
    <li>11.7.254 (tested 2023-07-26)</li>
    <li>11.7.400</li>
</ul>
</details>

<details>
<summary><b>SpiderMonkey Versions</b></summary>
<br>
<ul>
    <li>114.0 (tested 2023-07-26)</li>
    <li>116.0b1 (tested 2023-07-25)</li>
    <li>116.0b7 (tested 2023-07-27)</li>
</ul>
</details>

<details>
<summary><b>JavaScriptCore Versions</b></summary>
<br>
<ul>
    <li>265838 (tested 2023-07-25)</li>
    <li>266180 (tested 2023-07-26)</li>
</ul>
</details>

<details>
<summary><b>Wasmer Versions</b></summary>
<br>
<ul>
    <li>77898a7767eb7057834fdc1a80b239e6b68cf44e (tested 2023-07-25)</li>
    <li>4380bb3fee503f2cf20f3cf9e662bec243111bd9 (tested 2023-07-26)</li>
    <li>edc4a52565b92ef4f1073d05aea070291b97663a (tested 2023-07-27)</li>
    <li>6aea19e30de253aea8b8f4d260a5b182f78275c5 (tested 2023-07-31)</li>
</ul>
</details>

<details>
<summary><b>Wasmtime Versions</b></summary>
<br>
<ul>
    <li>0aa00479c9fbb39ef19a9f35d2ed0137454c93f5 (tested 2023-07-25)</li>
    <li>a45abadbc39a57dd3e404231e2751a80cdafa4b0 (tested 2023-07-26)</li>
    <li>dfd6885365b83a40830cf66bcc11e1059e8072ee (tested 2023-07-27)</li>
    <li>fe69c0437602a59e718de04f1d40bebf0bf51662 (tested 2023-07-31)</li>
</ul>
</details>

<details>
<summary><b>Wasm3 Versions</b></summary>
<br>
<ul>
    <li>6b8bcb1e07bf26ebef09a7211b0a37a446eafd52 (tested 2023-07-25)</li>
    <li>772f8f4648fcba75f77f894a6050db121e7651a2 (tested 2023-07-26)</li>
</ul>
</details>

<details>
<summary><b>Wizard Versions</b></summary>
<br>
<ul>
    <li>45502370cb260e0d6017c2344466e41584e4c18f (tested 2023-07-25)</li>
    <li>d5f0f5e165b239481a3e9eb7d7ca0bebc2ca95f5 (tested 2023-07-26)</li>
    <li>991d10b6993147ddc1b18c16b2b92139a079275f (tested 2023-07-27)</li>
</ul>
</details>

<details>
<summary><b>Wavm Versions</b></summary>
<br>
<ul>
    <li>3f9a150cac7faf28eab357a2c5b83d2ec740c7d9 (tested 2023-07-25)</li>
</ul>
</details>

<details>
<summary><b>iWasm Versions</b></summary>
<br>
<ul>
    <li>57abdfdb5c19dab7c2f2a126082910f65ffc7af0 (tested 2023-07-25)</li>
    <li>1cafa375680b6ea8b120e0d4d6006521d858ae2d (tested 2023-07-26)</li>
    <li>7db4815e837bc34942e95aba292ca0eca318cc54 (tested 2023-07-31)</li>
    <li>851819705324419376a63c23fe2e5acb17ce9d8c</li>
    <li>28125ec538c86de90d2b9be332d50760e7dd42bc</li>
</ul>
</details>

<details>
<summary><b>Wazero Versions</b></summary>
<br>
<ul>
    <li>1cdb72d43163a6c3edd33319b382a0feb0f4d459 (tested 2023-07-25)</li>
    <li>b842d6cbfdf8e6af77a84970ddbdbf0aa2be9f1d (tested 2023-07-26)</li>
    <li>6b4328c66e4104f9b0db303d6cf450cde468dc24 (tested 2023-07-27)</li>
    <li>023a38349a0402b61f76023d66cbb9f63912bf94 (tested 2023-07-31)</li>
    <li>1f8c908f1c61c964192c731af495caf1d720418c</li>
</ul>
</details>

## Engine Installation

### V8, SpiderMonkey, JavaScriptCore

In order to build and update v8, sm, and jsc, clone the [jsvu repo](https://github.com/GoogleChromeLabs/jsvu) and follow the instructions. This installation requires `Node.js`. The engines are built in `.jsvu/bin/`. The versions of the dowloaded engines are in `status.json`. The engines update through build.py running the `jsvu` command.

In order to parse the date for when a v8 engine version was created (which is necessary when building it), clone the [v8 repo](https://github.com/v8/v8). The python script will run the `git log` command to find the timestmap.

### Wasmer FIXME (add update instructions)

Clone the [Wasmer Repo](https://github.com/wasmerio/wasmer) into your home directory. Verify that `rustc` and `cargo` are updated to version 1.67 (as of 7/20/23). In the repo, execute the following command and ensure [singlepass compiler is enabled](https://docs.wasmer.io/developers/build-from-source)
```
$ make build-wasmer
```
The engine is built in the directory `target/release/`. The engine updates through build.py running `git pull` and the same command.

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
$ git pull
$ cargo clean
$ cargo build --release
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
