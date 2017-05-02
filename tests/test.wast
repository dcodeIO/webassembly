(module
 (type $0 (func))
 (type $1 (func (param i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func (param i32) (result i32)))
 (type $4 (func (param i32 i32 i32) (result i32)))
 (type $5 (func (param i32 i32) (result i32)))
 (type $6 (func (result i32)))
 (import "env" "console_log" (func $import$0 (param i32 i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (data (i32.const 4) "0)")
 (data (i32.const 16) "Hello from webassembly")
 (export "add" (func $0))
 (start $1)
 (func $0 (type $5) (param $var$0 i32) (param $var$1 i32) (result i32)
  (i32.add
   (get_local $var$1)
   (get_local $var$0)
  )
 )
 (func $1 (type $0)
  (drop
   (block $label$0 i32
    (block $label$1 i32
     (call $import$0
      (i32.const 16)
      (i32.const 0)
     )
     (i32.const 0)
    )
   )
  )
 )
)

