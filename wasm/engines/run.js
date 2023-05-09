function empty() { }

var imports = {
  wasi_snapshot_preview1: {
    "fd_write": empty,
    "fd_seek": empty,
    "fd_close": empty,
    "proc_exit": x => quit(x), 
    "args_sizes_get": empty,
    "args_get": empty,
    "clock_time_get": (clock_id, lag, ptr) => {
	console.log("clock");
	var result = performance.now() * 1000000;
	console.log(result);
	var array = new Uint32Array(memory.buffer);
	var index = ptr >> 2;
//	array[index]     = (result | 0);
//	array[index + 1] = (result >> 32);
	return 0;
    },
    "random_get" : (ptr, len) => {
	console.log("random");
	var array = new Uint8Array(memory.buffer);
	for (var i = ptr; i < len; i++) {
//	    array[i] = 0x1E + i;
	}
	return 0;
    },
    "poll_oneoff" : () => {
	console.log("poll");
	return 0;
    },
    "fd_fdstat_get" : () => {
	console.log("fd_fdstat_get");
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
    
  instance.exports["_start"]();
}
