# Kotlin WASM/WASI Benchmark

This is a simple benchmark that computes the prime numbers up to 100000 (or 1M, 10K, 1K).
It's written in Kotlin and can be compiled to a standalone WASM file using WASI.

The standalone WASM file can be executed with WasmEdge.

`wasmedge --enable-function-reference --enable-gc --enable-exception-handling kotlin-prime-100K.wasm dummy`

Original repo: https://github.com/r-carissimi/kotlin-wasm-wasi-benchmark