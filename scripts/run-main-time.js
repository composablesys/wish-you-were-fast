function empty() { }
function doexit(x) { outtime(); quit(x); }

function clock_time_get() { console.log(arguments[0]); }

function outtime() { console.log("main:time_us   : " + ((performance.now() - before) * 1000)); }

var imports = {
  wasi_snapshot_preview1: {
    "fd_write": empty,
    "fd_seek": empty,
    "fd_close": empty,
    "proc_exit": x => doexit(x), 
    "args_sizes_get": empty,
    "args_get": empty,
    "clock_time_get": clock_time_get,
    "fd_fdstat_get" : empty
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

  var before = performance.now();
  instance.exports["_start"]();
  outtime();
}
