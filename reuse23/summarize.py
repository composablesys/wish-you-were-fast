#!/usr/bin/env python3

import os, fnmatch, psycopg2, json, sys, math, linecache
from prettytable import PrettyTable 
import common # common.py file
import numpy as np
from datetime import datetime, date

with open('config.json', 'r') as config_file:
    config_data = json.load(config_file)
    host = config_data['host']
    port = config_data['port']
    dbname = config_data['dbname']
    user = config_data['user']
    pwd = config_data['pwd']

# helps get_line_items() find the line item name
def end_index(file):
    return(file.find('.', file.find('.')+1))

def get_line_items(suite):
    items = []
    for file in os.listdir(PATH):
        if fnmatch.fnmatch(file, suite + '*.txt'): # parse all files for given suite
            start_index = file.find('.') + 1 # get starting index of line item substring
            line_item = file[start_index:end_index(file)]
            if items.count(line_item) == 0: # add new line items to list
                items.append(line_item)
    return(sorted(items))

# helper function for reading 'execution' files that have a 0
def get_zero_file(file):
    if get_config(file) == '-':
        temp = get_suite(file) + '0.' + get_line_item(file) + '.' + file[file.find('.',file.find('.')+1) + 1:file.rfind('.')] + '.txt'
    else:
        temp = get_suite(file) + '0.' + get_line_item(file) + '.' + get_engine(file) + '-' + get_config(file) + '.txt'
    return temp

# helper function for reading 'execution' files
def is_number(string):
    try:
        float(string)
        return True
    except ValueError:
        return False

def get_samples(file):
    if 'startup' in file:
        path = data_dir + 'startup/' + file
    else:
        path = PATH + file
    times = []
    with open(path,"r") as f:
        content = f.readlines()
        for line in content:
            if exp == 'speedup' and LABEL in line:
                res = line.split()
                val = round(float(res[2])/ 10000000,7) # take the value of main:time_us
                times.append(val)
            elif exp == 'execution' and is_number(line) == True:
                val = (float(line))
                times.append(val)
    return times

def get_avg(file):
    all_time = get_samples(file)
    if len(all_time) == 0: # accounts for division by zero in empty files
        return 0
    elif sys.argv[1] == 'TABLE':
        return '%.7f' % (sum(all_time)/len(all_time))
    else:
        return round(sum(all_time)/len(all_time),7)

# helper function for calculating average for setup_time and main_time metrics for 'execution'
def get_difference(file):
    if sys.argv[1] == 'TABLE' and (total_time := get_avg(file)) != 0 and (setup_time := get_avg(get_zero_file(file))) != 0:
        return '%.7f' % (float(total_time) - float(setup_time))
    elif metric_type == 'main_time' and (total_time := get_avg(file)) != 0 and (setup_time := get_avg(get_zero_file(file))) != 0:
        return round(total_time - setup_time, 7)
    elif metric_type == 'setup_time' and (suite0 := get_avg(file)) != 0:
        eng_con = get_eng_con(file)
        if eng_con in read_startup() and (t_empty := get_avg('startup.nop-wasi.' + eng_con + '.txt')) != 0:
            return round(suite0 - t_empty,7)

'''
functions for printing a table of the data
'''
# calculates geomean for 'speedup' and creates a row for the table
def geomean(suite, configs):
    row = []
    exclusions = []
    tup = []
    row.append('GEOMEAN')
    for config in configs:
        values = []
        for line_item in get_line_items(suite):
            file = suite + '.' + line_item + '.' + config + '.txt'
            if exp == 'speedup' and os.path.exists(PATH + file):
                values.append(float(get_avg(file)))
            elif exp == 'execution' and os.path.exists(file) == True and get_difference(file) != None:
                if float(get_difference(file)) < 0:
                    exclusions.append(file)
                else:
                    values.append(float(get_difference(file)))
        if len(values) > 0:
            geomean = '%.7f' % math.sqrt(sum(values))
        else:
            geomean = '-'
        row.append(geomean)
    tup.append(row)
    tup.append(exclusions)
    return tup

def make_row(suite, line_item, configs):
    file = suite + '.' + line_item + '.'
    row = []
    row.append(line_item)
    for config in configs:
        if exp == 'speedup':
            if not os.path.exists(PATH + file + config + '.txt') or get_avg(file + config + '.txt') == 0:
                row.append('-')
            else:
                avg = str(get_avg(file + config + '.txt'))
                row.append(avg)
        if exp == 'execution': # table is for 'main_time'
            file1 = file + config +'.txt'
            if os.path.exists(PATH + file1):
                file2 = get_zero_file(file1)
                if os.path.exists(PATH + file2): # check if the pair of file exists and both are not empty
                        if is_number(linecache.getline(PATH + file1, 3)) and is_number(linecache.getline(PATH + file2, 3)): # only reads third line where data list starts
                            row.append(get_difference(file1))
                        else:
                            row.append('-')
            else:
                row.append('-')
    return row

def table(suites, configs):
    for suite in suites:
        print('-------------------------------')
        print('Suite: ' + suite)
        headers = ['Line Item']
        headers.extend(configs)
        table = PrettyTable(headers)
        line_items = get_line_items(suite)
        # make a row for each line item
        for line_item in line_items:
            table.add_row(make_row(suite, line_item, configs))
        geo = geomean(suite, configs)
        table.add_row(geo[0])
        print(table)
        if len(geo[1]) > 0:   
            print('Files excluded: ')
            for ex in geo[1]:
                print(ex)

'''
Database parsing code for upload to db
'''

def get_suite(file):
    if fnmatch.fnmatch(file,'*0.*.*.txt'): # returns suite name without 0 for zero-files
        return file[:file.find('0')]
    else:
        return file[:file.find('.')]


def get_line_item(file):
    return file[file.find('.') + 1 : file.find('.', file.find('.')+1)]

def get_config(file):
    config = file[file.find('.',file.find('.')+1) + 1:file.rfind('.')]
    if exp == "speedup" or exp == "tagging":
        return config
    elif "-" in config:
        return config[config.index("-")+1:]
    else:
        return "-"

def get_engine(file):
    engine_config = file[file.find('.',file.find('.')+1) + 1:file.rfind('.')]
    if exp == "speedup":
        return "wizard"
    elif '-' in engine_config:
        return engine_config[:engine_config.index("-")]
    else:
        return engine_config

# helper function for min, max, pct5, pct95
def read_startup():
    eng_cons = []
    for file in os.listdir(data_dir + 'startup/'):
        if fnmatch.fnmatch(file, 'startup.nop-wasi.*.txt'):
            eng_cons.append(file[file.find('.', file.find('.')+1)+1:file.rfind('.')])
    return eng_cons

# helper function to get engine and configuration substring from filename
def get_eng_con(file):
    if get_config(file) == '-':
        eng_con = get_engine(file)
    else:
        eng_con = get_engine(file) + '-' + get_config(file)
    return eng_con

def get_min(file):
    if exp == 'speedup' or metric_type == 'total_time':
        return min(get_samples(file))
    elif exp == 'execution':
        if metric_type == 'main_time':
            temp = get_zero_file(file)
            return min(get_samples(file)) - min(get_samples(temp))
        elif metric_type == 'setup_time':
            eng_con = get_eng_con(file)
            if eng_con in read_startup():
                t_empty = 'startup.nop-wasi.' + eng_con + '.txt'
                return min(get_samples(file)) - min(get_samples(t_empty))

def get_max(file):
    if exp == 'speedup' or (exp == 'execution' and metric_type == 'total_time'):
        return max(get_samples(file))
    elif exp == 'execution':
        if metric_type == 'main_time':
            temp = get_zero_file(file)
            return max(get_samples(file)) - max(get_samples(temp))
        elif metric_type == 'setup_time':
            eng_con = get_eng_con(file)
            if eng_con in read_startup():
                t_empty = 'startup.nop-wasi.' + eng_con + '.txt'
                return max(get_samples(file)) - max(get_samples(t_empty))

def get_pct_5(file):
    data = get_samples(file)
    if exp == 'speedup' or (exp == 'execution' and metric_type == 'total_time'):
        return round((np.percentile(data, 5)),7)
    elif exp == 'execution':
        if metric_type == 'main_time':
            temp = get_zero_file(file)
            return round((np.percentile(data, 5) - np.percentile(get_samples(temp), 5)),7)
        elif metric_type == 'setup_time':
            eng_con = get_eng_con(file)
            if eng_con in read_startup():
                t_empty = 'startup.nop-wasi.' + eng_con + '.txt'
                return round((np.percentile(get_samples(file), 5) - np.percentile(get_samples(t_empty), 5)),7)

def get_pct_95(file):
    data = get_samples(file)
    if exp == 'speedup' or (exp == 'execution' and metric_type == 'total_time'):
        return round((np.percentile(data, 95)),7)
    elif exp == 'execution':
        if metric_type == 'main_time':
            temp = get_zero_file(file)
            return round((np.percentile(data, 95) - np.percentile(get_samples(temp), 95)),7)
        elif metric_type == 'setup_time':
            eng_con = get_eng_con(file)
            if eng_con in read_startup():
                t_empty = 'startup.nop-wasi.' + eng_con + '.txt'
                return round((np.percentile(get_samples(file), 95) - np.percentile(get_samples(t_empty), 95)),7)

# reads time stamp format from header of txt file and converts to DateTime form for database entry
def get_timestamp(file):
    path = PATH + file
    if exp == 'speedup':
        with open(path, 'r') as f:
            timestamp = f.readline() # reads the first line; timestamp should be on first line
            return datetime.fromtimestamp(int(timestamp[:timestamp.index('\n')]))
    elif exp == 'execution':
        with open(path, 'r') as f:
            timestamp = f.readline()
            return timestamp
    
# reads time stamp format from header of txt file and converts to date form for database entry
def get_date(file):
    path = PATH + file
    if exp == 'speedup':
        with open(path, 'r') as f:
            timestamp = f.readline()
            return date.fromtimestamp(int(timestamp[:timestamp.index('\n')]))
    elif exp == 'execution':
        with open(path, 'r') as f:
            timestamp = f.readline()
            if ' ' in timestamp: # for timestamps that have both date and time
                return timestamp[:timestamp.index(' ')]
            else: # for timestamps that only have date
                return timestamp[:timestamp.index('\n')]

# reads version from second line of txt file with format "version: __"
def get_version(file):
    path = PATH + file
    if exp == 'speedup':
        return '-'
    elif exp == 'execution':
        with open(path, 'r') as f:
            f.readline() # first line
            version = f.readline() # second line where version is
            return version[9:version.index('\n')]

def get_raw_samples(file):
    path = PATH + file
    times = []
    with open(path,'r') as f:
        content = f.readlines()
        for line in content:
            if is_number(line) == True:
                if metric_type == 'total_time':
                    val = round(float(line), 7)
                    times.append(val)
                elif metric_type == 'setup_time':
                    val = (float(line))
                    eng_con = get_eng_con(file)
                    if eng_con in read_startup():
                        t_empty = 'startup.nop-wasi.' + eng_con + '.txt'
                        avg_tempty = get_avg(t_empty)
                        times.append(round(val - avg_tempty, 7))
                elif metric_type == 'main_time':
                    val = (float(line))
                    avg_zeroFile = get_avg(get_zero_file(file))
                    times.append(round(val - avg_zeroFile, 7))
    return times
  
'''
functions to insert data into DB
'''
def upload_sum(exp_label, machine, table_name):
    for file in sorted(os.listdir(PATH)):
        if not fnmatch.fnmatch(file,'*0.*.*.txt') and (exp == 'speedup' or metric_type == 'total_time') and get_avg(file) !=0:
            insert = get_avg(file)
        elif not fnmatch.fnmatch(file,'*0.*.*.txt') and (exp == 'execution' and metric_type == 'main_time'):
            file2 = get_zero_file(file)
            if os.path.exists(PATH + file2): # check if the pair of file exists and both are not empty
                with open(PATH + file, 'r') as f, open(PATH + file2, 'r') as f2: 
                    f.readline() # timestamp
                    f.readline() # version
                    f2.readline() # timestamp
                    f2.readline() # version
                    if is_number(f.readline()) and is_number(f2.readline()):
                        insert = get_difference(file)
                    else: continue
            else: continue
        elif fnmatch.fnmatch(file, '*0.*.*.txt') and metric_type == 'setup_time' and get_difference(file) != 0:
            insert = get_difference(file)
        else: continue # continue loop if file data unavailable
        conn = psycopg2.connect(host=host, port=port, database=dbname,user=user,password=pwd)
        cur = conn.cursor()
        cur.execute('''INSERT INTO ''' + table_name + '''(exp_date, exp_label, benchmark_suite, benchmark_item, engine, version, config, machine, metric_type, avg, percentile_5, percentile_95,
            min, max, time) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)''', 
            (get_date(file), exp_label, get_suite(file), get_line_item(file), get_engine(file), get_version(file), get_config(file), machine, metric_type,
            insert, get_pct_5(file), get_pct_95(file), get_min(file), get_max(file), get_timestamp(file)))
        conn.commit()
        cur.close()
        conn.close()
    print('UPLOAD_SUM COMPLETE')

def upload_raw(exp_label, machine, table_name):
    for file in sorted(os.listdir(PATH)):
        if exp == 'speedup' and get_avg(file) != 0:
            insert = get_samples(file)
        elif not fnmatch.fnmatch(file,'*0.*.*.txt') and metric_type == 'total_time' and get_avg(file) != 0:
            insert = get_raw_samples(file)
        elif not fnmatch.fnmatch(file,'*0.*.*.txt') and (exp == 'execution' and metric_type == 'main_time'):
            file2 = get_zero_file(file)
            if os.path.exists(PATH + file2): # check if the pair of file exists and both are not empty
                with open(PATH + file, 'r') as f, open(PATH + file2, 'r') as f2: 
                    f.readline() # timestamp
                    f.readline() # version
                    f2.readline() # timestamp
                    f2.readline() # version
                    if is_number(f.readline()) and is_number(f2.readline()):
                        insert = get_raw_samples(file)
                    else: continue
            else: continue
        elif metric_type == 'setup_time' and fnmatch.fnmatch(file, '*0.*.*.txt') and get_difference(file) != 0:
            insert = get_raw_samples(file)
        else: continue
        conn = psycopg2.connect(host=host, port=port, database=dbname,user=user,password=pwd)
        cur = conn.cursor()
        cur.execute('''INSERT INTO ''' + table_name + '''(exp_date, exp_label, benchmark_suite, benchmark_item, engine, version, config, machine, metric_type, samples, time) 
            VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)''', 
            (get_date(file), exp_label, get_suite(file), get_line_item(file), get_engine(file), get_version(file), get_config(file), machine, metric_type, insert, 
            get_timestamp(file)))
        conn.commit()
        cur.close()
        conn.close()
    print('UPLOAD_RAW COMPLETE')
    
# command line arguments with defaults
if __name__ == "__main__":

    data_dir = os.environ.get('DATA_DIR')
    if data_dir is None:
        print('Data directory not set')

    exp_label = os.environ.get('EXP_LABEL', 'ec2_t2.micro_cvenen')
    machine = os.environ.get('MACHINE', 'ec2_t2.micro')

    table_name = os.environ.get('TABLE_NAME', 'summary')
    metric_type = os.environ.get('METRIC_TYPE', 'total_time') # for the DB
    exp = common.exp # for the PrettyTable

    suites = common.assign_suites()
    configs = common.assign_configs()

    ''' HARD CODE TO CHANGE '''
    LABEL = 'main:time_us'
    PATH = data_dir + exp + '/'

    if sys.argv[1] == 'TABLE':
        table(suites, configs)
    elif sys.argv[1] == 'UPLOAD_SUM':
        upload_sum(exp_label, machine, table_name)
    elif sys.argv[1] == 'UPLOAD_RAW':
        upload_raw(exp_label, machine, table_name)
    else:
        print('No function specified')