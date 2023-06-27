import os
import common # common.py file

''' TODO automatically download and build engines
- Get engine version from json
- Go to URL for download and build
- Set up error notification if build fails
 '''

# execessive code? Might be easier to read though
def run_execution_experiment(suite):
    run_btime_experiment()

def run_btime_experiment(suite):
    # create an execution directory
    for b in benchmarks:
        for config in configs:
            wasmfile = '/wasm/suites'+suite+'/'+b+'.wasm'
        

''' Code Analysis
 - gets the execution configs
 - mkdir for the txt files
 - sets the benchmarks (line items) for each suite
 - runs the execution experiment for each suite
'''

if __name__ == "__main__":

    suites = common.assign_suites()
    configs = common.assign_configs()
    exp = common.exp

    if exp == 'execution':
        for suite in suites:
            benchmarks = common.get_benchmarks(suite)
            run_execution_experiment(suite)