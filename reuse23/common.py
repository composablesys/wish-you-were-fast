import os

exp = os.environ.get('EXP', 'speedup') # for the PrettyTable

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
    if exp == 'speedup': c_names = 'int jit nok nokfold noisel nomr'
    elif exp == 'execution': c_names = 'iwasm-fjit iwasm-int jsc-bbq jsc-int jsc-omg sm-base sm-opt v8-liftoff v8-turbofan wasm3 wasmer-base wasmer wasmnow wasmtime wavm wazero wizeng-int wizeng-jit'
    cn = c_names.split(' ')
    for c in cn:
        configs.append(c)
    return configs