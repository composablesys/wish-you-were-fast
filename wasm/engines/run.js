function empty() { }

var start_time = performance.now();
var log = false;
var stdout = false;

var imports = {
  wasi_snapshot_preview1: {
    "fd_write": (fd, iovecs_ptr, iovecs_len) => {
	if (log) console.log("fd_write(" + fd + ", " + iovecs_ptr + ", " + iovecs_len + ")");
	var total = 0;
	var res = [];
	var base = (iovecs_ptr >> 2);
	for (var i = 0; i < iovecs_len; i++) {
	    var start = uint32_array[base + i * 2];
	    var count = uint32_array[base + i * 2 + 1];
	    if (stdout) {
		var end = start + count;
		for (var j = start; j < end; j++) {
		    res.push(uint8_array[j]);
		}
	    }
	    total += count;
	}
	if (fd == 1 && stdout) console.log(String.fromCharCode.apply(null, res));
	return count;
    },
    "fd_seek": empty,
    "fd_close": empty,
    "proc_exit": x => quit(x), 
    "args_sizes_get": empty,
    "args_get": empty,
    "clock_time_get": (clock_id, lag, ptr) => {
	if (log) console.log("clock");
	var result = (performance.now() - start_time) * 1000000;
	if (log) console.log(result);
	var index = ptr >> 2;
	uint32_array[index]     = (result | 0);
	uint32_array[index + 1] = (result >> 32);
	return 0;
    },
    "random_get" : (ptr, len) => {
	if (log) console.log("random(" + ptr + ", " + len + ")");
	for (var i = ptr; i < len; i++) {
	    uint8_array[i] = (performance.now() * 1000000) & 0xFF + i;
	}
	return 0;
    },
    "poll_oneoff" : () => {
	if (log) console.log("poll");
	return 0;
    },
    "fd_fdstat_get" : () => {
	if (log) console.log("fd_fdstat_get");
	return 0;
    }
  }
};

if (typeof WScript != "undefined") {
  arguments = WScript.Arguments
}

if (typeof scriptArgs == "object") {
  arguments = scriptArgs
}

if (arguments.length > 0) {
  var buffer = typeof readbuffer == "function" ?
      (readbuffer(arguments[0])) :
      (read(arguments[0], 'binary'));

  var module = new WebAssembly.Module(buffer);
  var instance = new WebAssembly.Instance(module, imports);

  var memory = instance.exports["memory"];
  var uint8_array = memory != undefined ? new Uint8Array(memory.buffer): null;  
  var uint32_array = memory != undefined ? new Uint32Array(memory.buffer): null;  
    
  instance.exports["_start"]();
}
