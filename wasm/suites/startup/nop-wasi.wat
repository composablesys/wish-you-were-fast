(module
  (import "wasi_snapshot_preview1" "proc_exit" (func (param i32))) ;; stupid wavm
  (memory (export "memory") 0 0)
  (func (export "main"))
  (func (export "_start"))
)
