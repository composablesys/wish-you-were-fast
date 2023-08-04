import os

exp = os.environ.get('EXP', 'execution') # for the PrettyTable
# speedup, execution, tagging, baselines, alltiers

def assign_engines(): # TODO add back wavm if testing a previous version
    engines = ['iwasm','sm', 'jsc', 'v8', 'wasm3', 'wasmer', 'wasmnow', 'wasmtime', 'wazero', 'wizeng']
    return engines

def assign_suites():
    suites = []
    s_names = os.environ.get('SUITES', 'polybench ostrich libsodium')
    sn = s_names.split(' ')
    for s in sn:
        suites.append(s)
    return suites

def assign_configs():
    configs = []
    c_names = os.environ.get('CONFIGS')
    # sets defaults based on exp type
    if exp == 'speedup': c_names = 'int jit nok nokfold noisel nomr'
    elif exp == 'execution': c_names = 'iwasm-fjit iwasm-int jsc-bbq jsc-int jsc-omg sm-base sm-opt v8-liftoff v8-turbofan wasm3 wasmer wasmnow wasmtime wavm wazero wizeng-int wizeng-jit' # FIXME: add back wasmer-base if figure it how to do single-pass compiler
    cn = c_names.split(' ')
    for c in cn:
        configs.append(c)
    return configs

# retrieved from jit-paper-exp/polybench-sorted.txt files
def get_benchmarks(suite):
    if suite == 'polybench':
        benchmarks = ['2mm', '3mm', 'adi', 'atax', 'bicg', 'cholesky', 'correlation', 'covariance', 'doitgen', 'durbin', 'fdtd-2d', 'floyd-warshall', 'gemm', 'gemver', 'gesummv', 'gramschmidt', 'heat-3d', 'jacobi-1d', 'jacobi-2d', 'lu', 'ludcmp', 'mvt', 'nussinov', 'seidel-2d', 'symm', 'syr2k', 'syrk', 'trisolv', 'trmm']
    elif suite == 'ostrich':
        benchmarks = ['SRAD', 'back-propagation', 'crc', 'fft', 'hmm', 'lavamd', 'lud', 'nqueens', 'nw', 'page-rank', 'spmv']
    elif suite == 'libsodium':
        benchmarks = ['aead_chacha20poly1305', 'aead_chacha20poly13052', 'aead_xchacha20poly1305', 'auth', 'auth2', 'auth3', 'auth6', 'box', 'box2', 'box_easy', 'box_seal', 'box_seed', 'chacha20', 'codecs', 'generichash', 'generichash2', 'generichash3', 'hash', 'hash3', 'kdf', 'kdf_hkdf', 'keygen', 'onetimeauth', 'onetimeauth2', 'randombytes', 'scalarmult', 'scalarmult2', 'scalarmult5', 'scalarmult6', 'scalarmult7', 'secretbox', 'secretbox2', 'secretbox_easy', 'secretstream_xchacha20poly1305', 'shorthash', 'sign2', 'siphashx24', 'stream3', 'stream4']
    return benchmarks