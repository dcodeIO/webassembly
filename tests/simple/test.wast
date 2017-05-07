(module
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32)))
 (type $2 (func (param f64) (result f64)))
 (type $3 (func (param i32 i32)))
 (type $4 (func (param i32 i32) (result i32)))
 (type $5 (func (result i32)))
 (type $6 (func))
 (import "env" "Math_sin" (func $import$0 (param f64) (result f64)))
 (import "env" "console_log" (func $import$1 (param i32 i32)))
 (import "env" "malloc" (func $import$2 (param i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (table 0 anyfunc)
 (data (i32.const 4) "\80\'")
 (data (i32.const 16) "Hello from webassembly!")
 (data (i32.const 48) "Did you know that the sine of %lf is %lf in C / %lf in JS?")
 (export "add" (func $2))
 (export "malloc_" (func $1))
 (export "main" (func $0))
 (start $3)
 (func $0 (type $5) (result i32)
  (local $var$0 i32)
  (block $label$0 i32
   (i32.store
    (i32.const 4)
    (tee_local $var$0
     (i32.sub
      (i32.load
       (i32.const 4)
      )
      (i32.const 32)
     )
    )
   )
   (call $import$1
    (i32.const 16)
    (i32.const 0)
   )
   (f64.store
    (i32.add
     (get_local $var$0)
     (i32.const 16)
    )
    (call $import$0
     (f64.const 3.141592653589793)
    )
   )
   (i64.store offset=8
    (get_local $var$0)
    (i64.const 4368955796522032135)
   )
   (i64.store
    (get_local $var$0)
    (i64.const 4614256656552045848)
   )
   (call $import$1
    (i32.const 48)
    (get_local $var$0)
   )
   (i32.store
    (i32.const 4)
    (i32.add
     (get_local $var$0)
     (i32.const 32)
    )
   )
   (i32.const 0)
  )
 )
 (func $1 (type $0) (param $var$0 i32) (result i32)
  (call $import$2
   (get_local $var$0)
  )
 )
 (func $2 (type $4) (param $var$0 i32) (param $var$1 i32) (result i32)
  (i32.add
   (get_local $var$1)
   (get_local $var$0)
  )
 )
 (func $3 (type $6)
  (drop
   (call $0)
  )
 )
)

