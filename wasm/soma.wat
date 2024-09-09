(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32)))
  (import "raylib" "InitWindow" (func $raylib..InitWindow (type 0)))
  (func $soma (type 1) (param i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    local.get 1
    i32.add
    local.set 3
    local.get 3
    return)
  (func $init_canvas (type 2) (param i32)
    (local i32 i32 i32)
    i32.const 800
    local.set 1
    i32.const 600
    local.set 2
    i32.const 1024
    local.set 3
    local.get 1
    local.get 2
    local.get 3
    call $raylib..InitWindow
    return)
  (table (;0;) 1 1 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 66592))
  (export "memory" (memory 0))
  (export "soma" (func $soma))
  (export "init_canvas" (func $init_canvas))
  (data $.rodata (i32.const 1024) "hello from raylib\00"))
