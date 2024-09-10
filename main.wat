(module
  (type (;0;) (func (param i32 i32 i32 i32 i32 i64 i32 i32)))
  (type (;1;) (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32 i32 i32 i32 i32 i32)))
  (type (;3;) (func (param i32 i32 i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (result i32)))
  (type (;6;) (func))
  (type (;7;) (func (param i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32)))
  (type (;9;) (func (param i32) (result i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (result f64)))
  (type (;12;) (func (param i32 i32 i32) (result i64)))
  (type (;13;) (func (param i32 i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32 i32 i32)))
  (type (;15;) (func (param i64)))
  (type (;16;) (func (param i32 f32 f32)))
  (type (;17;) (func (param i32 i32 i32) (result i32)))
  (type (;18;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;19;) (func (param i32) (result i64)))
  (type (;20;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (import "raylib" "InitWindow" (func $raylib..InitWindow (type 3)))
  (import "raylib" "SetWindowMonitor" (func $raylib..SetWindowMonitor (type 4)))
  (import "raylib" "SetTargetFPS" (func $raylib..SetTargetFPS (type 4)))
  (import "raylib" "WindowShouldClose" (func $raylib..WindowShouldClose (type 5)))
  (import "raylib" "BeginDrawing" (func $raylib..BeginDrawing (type 6)))
  (import "raylib" "ClearBackground" (func $raylib..ClearBackground (type 4)))
  (import "raylib" "TraceLog" (func $raylib..TraceLog (type 3)))
  (import "raylib" "EndDrawing" (func $raylib..EndDrawing (type 6)))
  (import "raylib" "GetMousePosition" (func $raylib..GetMousePosition (type 4)))
  (import "raylib" "MeasureText" (func $raylib..MeasureText (type 7)))
  (import "raylib" "DrawRectangleV" (func $raylib..DrawRectangleV (type 3)))
  (import "raylib" "DrawText" (func $raylib..DrawText (type 8)))
  (import "raylib" "IsMouseButtonPressed" (func $raylib..IsMouseButtonPressed (type 9)))
  (import "raylib" "DrawRectangleLines" (func $raylib..DrawRectangleLines (type 8)))
  (import "raylib" "DrawTriangle" (func $raylib..DrawTriangle (type 10)))
  (import "raylib" "DrawRectangle" (func $raylib..DrawRectangle (type 8)))
  (import "raylib" "GetKeyPressed" (func $raylib..GetKeyPressed (type 5)))
  (import "raylib" "GetCharPressed" (func $raylib..GetCharPressed (type 5)))
  (import "raylib" "GetTime" (func $raylib..GetTime (type 11)))
  (import "raylib" "DrawLine" (func $raylib..DrawLine (type 8)))
  (func $runtime.bounds_trap (type 6)
    unreachable
    unreachable)
  (func $runtime.stderr_write (type 6)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 0
    global.set $__stack_pointer
    local.get 0
    i32.const 8
    i32.add
    call $runtime._stderr_write-589
    local.get 0
    local.get 0
    i64.load offset=8
    local.tee 1
    i64.store offset=24
    local.get 0
    local.get 1
    i64.store offset=16
    local.get 0
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime._stderr_write-589 (type 4) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 1
    i64.const -4294967296
    i64.store offset=8
    local.get 1
    i64.const -4294967296
    i64.store
    local.get 0
    i64.const -4294967296
    i64.store)
  (func $io.to_writer (type 10) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i64.const 0
    i64.store offset=8
    local.get 4
    local.get 1
    i32.store offset=12
    local.get 4
    local.get 0
    i32.store offset=8
    local.get 0
    local.get 1
    local.get 3
    call $io.query
    drop
    local.get 2
    local.get 4
    i64.load offset=8
    i64.store align=4
    local.get 4
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $io.query (type 12) (param i32 i32 i32) (result i64)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 1
    i32.store offset=28
    local.get 3
    local.get 0
    i32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        br_if 0 (;@2;)
        i64.const 0
        local.set 4
        br 1 (;@1;)
      end
      local.get 3
      i32.const 8
      i32.add
      local.get 3
      i32.load offset=28
      i32.const 9
      i32.const 0
      i32.const 0
      i64.const 0
      i32.const 0
      local.get 2
      local.get 0
      call_indirect (type 0)
      local.get 3
      i64.load offset=8
      local.tee 4
      i64.const 512
      i64.or
      local.get 4
      local.get 4
      i64.const 0
      i64.ne
      select
      local.set 4
    end
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 4)
  (func $begin_program (type 4) (param i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 800
    i32.const 600
    i32.const 1105
    call $raylib..InitWindow
    i32.const 1
    call $raylib..SetWindowMonitor
    i32.const 60
    call $raylib..SetTargetFPS
    local.get 1
    i32.const 40
    i32.add
    i32.const 16
    i32.add
    local.tee 2
    i64.const 0
    i64.store
    local.get 1
    i32.const 8
    i32.store offset=124
    local.get 1
    i32.const 40
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 1
    i32.const 72
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i32.const 40
    i32.add
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 1
    i32.const 80
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i64.const -4294967296
    i64.store
    local.get 3
    i64.const 4812096202965778432
    i64.store
    local.get 1
    i64.const 0
    i64.store offset=40
    local.get 1
    i32.const 5
    i32.store offset=132
    local.get 1
    i32.const 1490
    i32.store offset=128
    local.get 1
    i32.const 1530
    i32.store offset=120
    local.get 1
    i32.const 6
    i32.store offset=116
    local.get 1
    i32.const 1517
    i32.store offset=112
    local.get 1
    i32.const 4
    i32.store offset=108
    local.get 1
    i32.const 1539
    i32.store offset=104
    local.get 1
    i32.const 5
    i32.store offset=100
    local.get 1
    i32.const 1524
    i32.store offset=96
    local.get 1
    i32.const 5
    i32.store offset=92
    local.get 1
    i64.const 4812096202957389824
    i64.store offset=40
    local.get 1
    local.get 1
    i32.const 96
    i32.add
    i32.store offset=88
    local.get 1
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.tee 2
    i64.const 0
    i64.store
    local.get 1
    i32.const 8
    i32.add
    i32.const 24
    i32.add
    i64.const 4
    i64.store
    local.get 1
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    i64.const 4812096202965778432
    i64.store
    local.get 2
    i32.const 0
    i32.store
    local.get 1
    local.get 1
    i64.load offset=88
    i64.store offset=76 align=4
    local.get 1
    i64.const 4848124999976353792
    i64.store offset=8
    local.get 1
    i32.const 1100
    i32.store offset=28
    block  ;; label = @1
      loop  ;; label = @2
        call $raylib..WindowShouldClose
        i32.const 255
        i32.and
        br_if 1 (;@1;)
        call $raylib..BeginDrawing
        local.get 1
        i32.const -986896
        i32.store
        local.get 1
        call $raylib..ClearBackground
        block  ;; label = @3
          local.get 0
          call $mygui.do_button
          i32.const 255
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          i32.const 3
          i32.const 1111
          i32.const 0
          call $raylib..TraceLog
        end
        local.get 1
        i32.const 40
        i32.add
        local.get 0
        call $mygui.do_dropdown
        local.get 1
        i32.const 8
        i32.add
        local.get 0
        call $mygui.do_textbox
        call $raylib..EndDrawing
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 144
    i32.add
    global.set $__stack_pointer)
  (func $mygui.do_button (type 9) (param i32) (result i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 96
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 1484
    i32.const 5
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    i32.const 1648
    local.get 0
    call $strings.clone_to_cstring
    local.set 0
    local.get 1
    i32.const 8
    i32.add
    f32.const 0x1.9p+5 (;=50;)
    f32.const 0x1.9p+5 (;=50;)
    call $mygui.to_vec2
    local.get 1
    i64.const 0
    i64.store offset=80
    local.get 1
    local.get 1
    i64.load offset=8
    i64.store offset=88
    local.get 0
    i32.const 15
    call $raylib..MeasureText
    local.set 2
    local.get 1
    i32.const 1106771968
    i32.store offset=84
    local.get 1
    local.get 2
    i32.const 16
    i32.add
    f32.convert_i32_s
    f32.store offset=80
    local.get 1
    local.get 1
    i64.load offset=80
    i64.store offset=72
    local.get 1
    i32.load offset=88
    local.set 2
    local.get 1
    i32.load offset=92
    local.set 3
    local.get 1
    local.get 1
    f32.load offset=72
    local.get 1
    f32.load offset=76
    call $mygui.to_vec2
    local.get 2
    local.get 3
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    call $mygui.is_hovered
    local.set 2
    local.get 1
    i64.const 4776067405938425856
    i64.store offset=64
    local.get 1
    local.get 1
    i64.load offset=72
    i64.store offset=48
    local.get 1
    i32.const 255
    i32.store8 offset=35
    local.get 1
    i32.const -126
    i32.const -56
    local.get 2
    i32.const 255
    i32.and
    local.tee 3
    select
    local.tee 2
    i32.store8 offset=32
    local.get 1
    local.get 2
    i32.store8 offset=33
    local.get 1
    local.get 2
    i32.store8 offset=34
    local.get 1
    i32.const 64
    i32.add
    local.get 1
    i32.const 48
    i32.add
    local.get 1
    i32.const 32
    i32.add
    call $raylib..DrawRectangleV
    local.get 1
    i32.const -15461356
    i32.store offset=16
    local.get 0
    local.get 1
    i32.load offset=88
    i32.const 8
    i32.add
    local.get 1
    i32.load offset=92
    i32.const 8
    i32.add
    i32.const 15
    local.get 1
    i32.const 16
    i32.add
    call $raylib..DrawText
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.eqz
        br_if 0 (;@2;)
        i32.const 1
        local.set 0
        i32.const 0
        call $raylib..IsMouseButtonPressed
        i32.const 255
        i32.and
        br_if 1 (;@1;)
      end
      i32.const 0
      local.set 0
    end
    local.get 1
    i32.const 96
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $mygui.do_dropdown (type 13) (param i32 i32)
    (local i32 i32 i32 f32 f32 f32 i64 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 224
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 8
    i32.add
    local.get 0
    f32.load
    local.get 0
    i32.const 4
    i32.add
    local.tee 3
    f32.load
    call $mygui.to_vec2
    local.get 2
    local.get 2
    i64.load offset=8
    i64.store offset=216
    local.get 2
    local.get 0
    f32.load offset=8
    local.get 0
    i32.const 12
    i32.add
    f32.load
    call $mygui.to_vec2
    local.get 2
    i32.const -8224126
    i32.store offset=192
    local.get 2
    local.get 2
    i32.load
    local.tee 4
    i32.store offset=208
    local.get 2
    local.get 2
    i32.load offset=4
    i32.store offset=212
    local.get 2
    i32.load offset=216
    local.get 2
    i32.load offset=220
    local.get 4
    i32.const 15
    local.get 2
    i32.const 192
    i32.add
    call $raylib..DrawRectangleLines
    local.get 2
    i64.const 0
    i64.store offset=184
    local.get 2
    i64.const 0
    i64.store offset=168
    local.get 2
    i64.const 0
    i64.store offset=152
    local.get 2
    local.get 3
    f32.load
    local.tee 5
    f32.const 0x1.8p+1 (;=3;)
    f32.add
    local.tee 6
    f32.store offset=188
    local.get 2
    local.get 0
    f32.load
    local.get 0
    f32.load offset=8
    f32.add
    local.tee 7
    f32.const -0x1.ep+3 (;=-15;)
    f32.add
    f32.store offset=184
    local.get 2
    local.get 5
    f32.const 0x1.ap+3 (;=13;)
    f32.add
    f32.store offset=172
    local.get 2
    local.get 7
    f32.const -0x1.4p+3 (;=-10;)
    f32.add
    f32.store offset=168
    local.get 2
    local.get 6
    f32.store offset=156
    local.get 2
    local.get 7
    f32.const -0x1.4p+2 (;=-5;)
    f32.add
    f32.store offset=152
    local.get 2
    local.get 2
    i64.load offset=184
    i64.store offset=176
    local.get 2
    local.get 2
    i64.load offset=168
    local.tee 8
    i64.store offset=160
    local.get 2
    local.get 2
    i64.load offset=152
    i64.store offset=112
    local.get 2
    local.get 2
    i64.load offset=184
    i64.store offset=144
    local.get 2
    local.get 8
    i64.store offset=128
    local.get 2
    i32.const -11513776
    i32.store offset=96
    local.get 2
    i32.const 144
    i32.add
    local.get 2
    i32.const 128
    i32.add
    local.get 2
    i32.const 112
    i32.add
    local.get 2
    i32.const 96
    i32.add
    call $raylib..DrawTriangle
    local.get 2
    i64.const 0
    i64.store offset=88
    local.get 2
    local.get 2
    i32.load offset=208
    local.tee 3
    i32.store offset=88
    local.get 2
    i32.const 15
    i32.store offset=92
    block  ;; label = @1
      local.get 2
      i32.load offset=216
      local.get 2
      i32.load offset=220
      local.get 3
      i32.const 15
      call $mygui.is_hovered
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      call $raylib..IsMouseButtonPressed
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      i32.store8 offset=32
      local.get 0
      i32.const 1
      i32.store8 offset=16
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.load8_u offset=16
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 40
        i32.add
        i32.load
        local.set 9
        i32.const 15
        local.set 10
        i32.const 0
        local.set 11
        i32.const 0
        local.set 3
        loop  ;; label = @3
          local.get 3
          local.get 9
          i32.ge_s
          br_if 2 (;@1;)
          local.get 0
          i32.load offset=36
          local.set 4
          i32.const 1410
          i32.const 49
          i32.const 118
          i32.const 52
          local.get 3
          local.get 0
          i32.load offset=40
          call $runtime.bounds_check_error
          local.get 4
          local.get 11
          i32.add
          local.tee 4
          i32.load
          local.get 4
          i32.load offset=4
          local.get 1
          i32.load
          local.get 1
          i32.load offset=4
          i32.const 1680
          local.get 1
          call $strings.clone_to_cstring
          local.set 12
          local.get 2
          i64.const 0
          i64.store offset=80
          local.get 2
          i64.const 0
          i64.store offset=72
          local.get 2
          local.get 2
          i32.load offset=216
          local.tee 4
          i32.store offset=80
          local.get 2
          i32.const 14
          i32.store offset=76
          local.get 2
          local.get 2
          i32.load offset=208
          local.tee 13
          i32.store offset=72
          local.get 2
          local.get 10
          local.get 2
          i32.load offset=220
          i32.add
          local.tee 14
          i32.store offset=84
          block  ;; label = @4
            block  ;; label = @5
              local.get 4
              local.get 14
              local.get 13
              i32.const 14
              call $mygui.is_hovered
              i32.const 255
              i32.and
              i32.eqz
              br_if 0 (;@5;)
              local.get 2
              i32.const -8224126
              i32.store offset=64
              local.get 4
              local.get 14
              local.get 13
              i32.const 16
              local.get 2
              i32.const 64
              i32.add
              call $raylib..DrawRectangle
              local.get 2
              i32.const -8224126
              i32.store offset=48
              local.get 4
              local.get 14
              local.get 13
              i32.const 16
              local.get 2
              i32.const 48
              i32.add
              call $raylib..DrawRectangleLines
              local.get 2
              i32.const -15461356
              i32.store offset=32
              local.get 12
              local.get 4
              i32.const 5
              i32.add
              local.get 14
              i32.const 15
              local.get 2
              i32.const 32
              i32.add
              call $raylib..DrawText
              i32.const 0
              call $raylib..IsMouseButtonPressed
              i32.const 255
              i32.and
              i32.eqz
              br_if 1 (;@4;)
              local.get 0
              local.get 3
              i32.store offset=20
              local.get 0
              i32.const 0
              i32.store8 offset=16
              local.get 0
              i32.const 1
              i32.store8 offset=32
              local.get 0
              i32.load offset=36
              local.set 4
              i32.const 1410
              i32.const 49
              i32.const 134
              i32.const 31
              local.get 3
              local.get 0
              i32.load offset=40
              call $runtime.bounds_check_error
              local.get 0
              local.get 4
              local.get 11
              i32.add
              i64.load align=4
              i64.store offset=24 align=4
              br 1 (;@4;)
            end
            local.get 2
            i32.const -8224126
            i32.store offset=48
            local.get 4
            local.get 14
            local.get 13
            i32.const 16
            local.get 2
            i32.const 48
            i32.add
            call $raylib..DrawRectangleLines
            local.get 2
            i32.const -15461356
            i32.store offset=32
            local.get 12
            local.get 4
            i32.const 5
            i32.add
            local.get 14
            i32.const 15
            local.get 2
            i32.const 32
            i32.add
            call $raylib..DrawText
          end
          local.get 10
          i32.const 15
          i32.add
          local.set 10
          local.get 11
          i32.const 8
          i32.add
          local.set 11
          local.get 3
          i32.const 1
          i32.add
          local.set 3
          br 0 (;@3;)
        end
      end
      local.get 0
      i32.load8_u offset=32
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=36
      local.set 3
      i32.const 1410
      i32.const 49
      i32.const 139
      i32.const 52
      local.get 0
      i32.load offset=20
      local.tee 4
      local.get 0
      i32.const 40
      i32.add
      i32.load
      call $runtime.bounds_check_error
      local.get 3
      local.get 4
      i32.const 3
      i32.shl
      i32.add
      local.tee 0
      i32.load
      local.get 0
      i32.load offset=4
      local.get 1
      i32.load
      local.get 1
      i32.load offset=4
      i32.const 1712
      local.get 1
      call $strings.clone_to_cstring
      local.set 0
      local.get 2
      i32.const -15461356
      i32.store offset=16
      local.get 0
      local.get 2
      i32.load offset=216
      i32.const 5
      i32.add
      local.get 2
      i32.load offset=220
      i32.const 15
      local.get 2
      i32.const 16
      i32.add
      call $raylib..DrawText
    end
    local.get 2
    i32.const 224
    i32.add
    global.set $__stack_pointer)
  (func $mygui.do_textbox (type 13) (param i32 i32)
    (local i32 i32 i32 f32 i32 i32 i32 f64 i64)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    i32.const 24
    i32.add
    local.get 0
    f32.load
    local.get 0
    f32.load offset=4
    call $mygui.to_vec2
    local.get 2
    local.get 2
    i64.load offset=24
    i64.store offset=136
    local.get 2
    i32.const 16
    i32.add
    local.get 0
    f32.load offset=8
    local.get 0
    i32.const 12
    i32.add
    f32.load
    call $mygui.to_vec2
    local.get 2
    i32.const 104
    i32.add
    i32.const 8
    i32.add
    local.tee 3
    i64.const 0
    i64.store
    local.get 2
    i32.const 104
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 2
    i64.const 0
    i64.store offset=104
    local.get 2
    local.get 2
    i64.load offset=16
    i64.store offset=128
    local.get 1
    i32.load
    local.get 1
    i32.load offset=4
    local.get 2
    i32.const 104
    i32.add
    call $strings.builder_make_none
    local.get 2
    i32.const 80
    i32.add
    i32.const 16
    i32.add
    local.get 4
    i32.load
    i32.store
    local.get 2
    i32.const 80
    i32.add
    i32.const 8
    i32.add
    local.get 3
    i64.load
    i64.store
    local.get 2
    local.get 2
    i64.load offset=104
    i64.store offset=80
    local.get 2
    i32.const 80
    i32.add
    local.get 0
    i32.load offset=20
    local.get 0
    i32.const 24
    i32.add
    i32.load
    local.get 1
    call $strings.write_string
    local.get 2
    i32.const 80
    i32.add
    local.get 1
    call $strings.to_cstring
    local.tee 3
    i32.const 15
    call $raylib..MeasureText
    local.set 4
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        f32.load offset=8
        local.tee 5
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 5
        i32.trunc_f32_s
        local.set 6
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 6
    end
    block  ;; label = @1
      local.get 4
      local.get 6
      i32.sub
      i32.const 15
      i32.add
      local.tee 7
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      i32.const 80
      i32.add
      local.get 1
      call $strings.builder_destroy
      local.get 0
      i32.load offset=28
      local.tee 3
      local.get 0
      i32.load offset=24
      local.tee 4
      local.get 4
      call $runtime.slice_expr_error_lo_hi
      local.get 2
      local.get 4
      local.get 3
      i32.sub
      local.tee 4
      i32.store offset=76
      local.get 2
      local.get 3
      local.get 0
      i32.load offset=20
      i32.add
      local.tee 3
      i32.store offset=72
      local.get 2
      i32.const 80
      i32.add
      local.get 3
      local.get 4
      local.get 1
      call $strings.write_string
      local.get 2
      i32.const 80
      i32.add
      local.get 1
      call $strings.to_cstring
      local.set 3
    end
    local.get 2
    i32.const 0
    i32.const -126
    local.get 0
    i32.load8_u offset=16
    local.tee 4
    select
    i32.store8 offset=64
    local.get 2
    i32.const 121
    i32.const -126
    local.get 4
    select
    i32.store8 offset=65
    local.get 2
    i32.const -15
    i32.const -126
    local.get 4
    select
    i32.store8 offset=66
    local.get 2
    i32.const 255
    i32.store8 offset=67
    local.get 2
    i32.load offset=136
    local.get 2
    i32.load offset=140
    local.get 2
    i32.load offset=128
    i32.const 15
    local.get 2
    i32.const 64
    i32.add
    call $raylib..DrawRectangleLines
    local.get 2
    i32.const -15461356
    i32.store offset=48
    local.get 3
    local.get 2
    i32.load offset=136
    i32.const 5
    i32.add
    local.get 2
    i32.load offset=140
    i32.const 15
    local.get 2
    i32.const 48
    i32.add
    call $raylib..DrawText
    block  ;; label = @1
      local.get 2
      i32.load offset=136
      local.get 2
      i32.load offset=140
      local.get 2
      i32.load offset=128
      local.get 2
      i32.load offset=132
      call $mygui.is_hovered
      local.tee 4
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      call $raylib..IsMouseButtonPressed
      i32.const 255
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 1
      i32.store8 offset=16
    end
    block  ;; label = @1
      local.get 0
      i32.load8_u offset=16
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      i32.const 20
      i32.add
      local.set 6
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              call $raylib..GetKeyPressed
              i32.const -257
              i32.add
              br_table 0 (;@5;) 2 (;@3;) 1 (;@4;) 2 (;@3;)
            end
            local.get 0
            i32.const 0
            i32.store8 offset=16
            br 2 (;@2;)
          end
          local.get 6
          i32.load offset=4
          local.tee 8
          i32.const 1
          i32.lt_s
          br_if 0 (;@3;)
          i32.const 1410
          i32.const 49
          i32.const 175
          i32.const 23
          local.get 8
          i32.const -1
          i32.add
          local.tee 1
          local.get 8
          call $runtime.slice_expr_error_hi
          local.get 2
          local.get 1
          i32.store offset=44
          local.get 2
          local.get 6
          i32.load
          i32.store offset=40
          local.get 6
          local.get 2
          i64.load offset=40
          i64.store align=4
          local.get 7
          i32.const 0
          i32.lt_s
          br_if 1 (;@2;)
          local.get 0
          i32.load offset=28
          local.tee 1
          i32.const 1
          i32.lt_s
          br_if 1 (;@2;)
          local.get 0
          local.get 1
          i32.const -1
          i32.add
          i32.store offset=28
          br 1 (;@2;)
        end
        call $raylib..GetCharPressed
        local.tee 8
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.const 80
        i32.add
        local.get 1
        call $strings.builder_destroy
        local.get 2
        i32.const 80
        i32.add
        local.get 6
        i32.load
        local.get 6
        i32.load offset=4
        local.get 1
        call $strings.write_string
        local.get 2
        i32.const 80
        i32.add
        local.get 8
        local.get 1
        call $strings.write_rune
        local.get 2
        i32.const 8
        i32.add
        local.get 2
        i32.const 80
        i32.add
        call $strings.to_string
        local.get 6
        local.get 2
        i64.load offset=8
        i64.store align=4
        local.get 7
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 0
        local.get 0
        i32.load offset=28
        i32.const 1
        i32.add
        i32.store offset=28
      end
      block  ;; label = @2
        local.get 4
        i32.const 255
        i32.and
        br_if 0 (;@2;)
        i32.const 0
        call $raylib..IsMouseButtonPressed
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 0
        i32.const 0
        i32.store8 offset=16
      end
      call $raylib..GetTime
      local.set 9
      local.get 2
      i32.load offset=136
      local.set 1
      local.get 3
      i32.const 15
      call $raylib..MeasureText
      local.set 4
      local.get 2
      i32.load offset=136
      local.set 6
      local.get 2
      i32.load offset=140
      local.set 7
      local.get 3
      i32.const 15
      call $raylib..MeasureText
      local.set 3
      local.get 2
      i32.const 255
      i32.store8 offset=35
      block  ;; label = @2
        block  ;; label = @3
          local.get 9
          f64.const 0x1.4p+2 (;=5;)
          f64.mul
          local.tee 9
          f64.abs
          f64.const 0x1p+63 (;=9.22337e+18;)
          f64.lt
          i32.eqz
          br_if 0 (;@3;)
          local.get 9
          i64.trunc_f64_s
          local.set 10
          br 1 (;@2;)
        end
        i64.const -9223372036854775808
        local.set 10
      end
      local.get 2
      i32.const 0
      i32.const -16
      local.get 10
      i32.wrap_i64
      i32.const 2
      i32.rem_s
      i32.const 0
      i32.gt_s
      select
      local.tee 0
      i32.store8 offset=32
      local.get 2
      local.get 0
      i32.store8 offset=33
      local.get 2
      local.get 0
      i32.store8 offset=34
      local.get 1
      local.get 4
      i32.add
      i32.const 6
      i32.add
      local.get 7
      i32.const 2
      i32.add
      local.get 6
      local.get 3
      i32.add
      i32.const 6
      i32.add
      local.get 2
      i32.load offset=140
      i32.const 13
      i32.add
      local.get 2
      i32.const 32
      i32.add
      call $raylib..DrawLine
    end
    local.get 2
    i32.const 144
    i32.add
    global.set $__stack_pointer)
  (func $runtime.bounds_check_error (type 2) (param i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 4
      local.get 5
      i32.ge_u
      br_if 0 (;@1;)
      return
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    call $runtime.bounds_check_error.handle_error-0
    unreachable)
  (func $runtime.bounds_check_error.handle_error-0 (type 2) (param i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i32.const 16
    i32.add
    local.tee 7
    i64.const 0
    i64.store
    local.get 6
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 7
    local.get 2
    i32.store
    local.get 6
    i64.const 0
    i64.store offset=8
    local.get 6
    local.get 0
    i32.store offset=8
    local.get 6
    local.get 1
    i32.store offset=12
    local.get 6
    local.get 3
    i32.store offset=20
    local.get 6
    i32.const 8
    i32.add
    call $runtime.print_caller_location
    i32.const 1568
    i32.const 7
    call $runtime.print_string
    local.get 4
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 1544
    i32.const 21
    call $runtime.print_string
    local.get 5
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 10
    call $runtime.print_byte
    call $runtime.bounds_trap
    unreachable)
  (func $strings.builder_make_none (type 3) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 80
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 56
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i32.const 56
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 3
    i32.const 32
    i32.add
    i32.const 8
    i32.add
    local.tee 6
    i64.const 0
    i64.store
    local.get 3
    i32.const 32
    i32.add
    i32.const 16
    i32.add
    local.tee 7
    i32.const 0
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 8
    i64.const 0
    i64.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.tee 9
    i32.const 0
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=56
    local.get 3
    i64.const 0
    i64.store offset=32
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 3
    i32.const 8
    i32.add
    call $runtime.make_dynamic_array-17523
    local.get 6
    local.get 8
    i32.load
    local.tee 0
    i32.store
    local.get 7
    local.get 9
    i32.load
    local.tee 1
    i32.store
    local.get 5
    local.get 0
    i32.store
    local.get 4
    local.get 1
    i32.store
    local.get 2
    local.get 3
    i32.load offset=8
    local.tee 4
    i32.store
    local.get 2
    local.get 3
    i32.load offset=12
    local.tee 5
    i32.store offset=4
    local.get 2
    local.get 0
    i32.store offset=8
    local.get 2
    local.get 3
    i32.load offset=20
    local.tee 0
    i32.store offset=12
    local.get 2
    local.get 1
    i32.store offset=16
    local.get 3
    local.get 4
    i32.store offset=32
    local.get 3
    local.get 5
    i32.store offset=36
    local.get 3
    local.get 0
    i32.store offset=44
    local.get 3
    local.get 4
    i32.store offset=56
    local.get 3
    local.get 5
    i32.store offset=60
    local.get 3
    local.get 0
    i32.store offset=68
    local.get 3
    i32.const 80
    i32.add
    global.set $__stack_pointer)
  (func $runtime.make_dynamic_array-17523 (type 3) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    i32.const 16
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i32.const 8
    i32.add
    i32.const 8
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 3
    i32.const 8
    i32.add
    call $runtime.make_dynamic_array_len_cap-17796
    local.get 2
    i32.const 16
    i32.add
    local.get 4
    i32.load
    i32.store
    local.get 2
    i32.const 8
    i32.add
    local.get 5
    i64.load
    i64.store align=4
    local.get 2
    local.get 3
    i64.load offset=8
    i64.store align=4
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime.slice_handle_error (type 14) (param i32 i32 i32 i32 i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 7
    global.set $__stack_pointer
    local.get 7
    i32.const 16
    i32.add
    local.tee 8
    i64.const 0
    i64.store
    local.get 7
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 8
    local.get 2
    i32.store
    local.get 7
    i64.const 0
    i64.store offset=8
    local.get 7
    local.get 0
    i32.store offset=8
    local.get 7
    local.get 1
    i32.store offset=12
    local.get 7
    local.get 3
    i32.store offset=20
    local.get 7
    i32.const 8
    i32.add
    call $runtime.print_caller_location
    i32.const 1576
    i32.const 23
    call $runtime.print_string
    local.get 4
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 1566
    i32.const 1
    call $runtime.print_string
    local.get 5
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 1544
    i32.const 21
    call $runtime.print_string
    local.get 6
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 10
    call $runtime.print_byte
    call $runtime.bounds_trap
    unreachable)
  (func $runtime.print_caller_location (type 4) (param i32)
    local.get 0
    i32.load
    local.get 0
    i32.load offset=4
    call $runtime.print_string
    i32.const 40
    call $runtime.print_byte
    local.get 0
    i64.load32_s offset=8
    call $runtime.print_u64
    block  ;; label = @1
      local.get 0
      i32.load offset=12
      i32.eqz
      br_if 0 (;@1;)
      i32.const 58
      call $runtime.print_byte
      local.get 0
      i64.load32_s offset=12
      call $runtime.print_u64
    end
    i32.const 41
    call $runtime.print_byte)
  (func $runtime.print_string (type 13) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 2
    local.get 0
    i32.store offset=8
    call $runtime.stderr_write
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $runtime.print_i64 (type 15) (param i64)
    (local i32 i64 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i32.const 15
    i32.add
    i32.const 0
    i32.const 129
    call $memset
    drop
    local.get 0
    local.get 0
    i64.const 63
    i64.shr_s
    local.tee 2
    i64.add
    local.get 2
    i64.xor
    local.set 2
    i32.const 128
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 2
        i64.const 10
        i64.lt_s
        br_if 1 (;@1;)
        local.get 1
        i32.const 15
        i32.add
        local.get 3
        i32.add
        local.get 2
        i64.const 10
        i64.rem_s
        i32.wrap_i64
        i32.const 1024
        i32.add
        i32.load8_u
        i32.store8
        local.get 3
        i32.const -1
        i32.add
        local.set 3
        local.get 2
        i64.const 10
        i64.div_s
        local.set 2
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 15
    i32.add
    local.get 3
    i32.add
    local.tee 4
    local.get 2
    i64.const 10
    i64.rem_s
    i32.wrap_i64
    i32.const 1024
    i32.add
    i32.load8_u
    i32.store8
    block  ;; label = @1
      local.get 0
      i64.const -1
      i64.gt_s
      br_if 0 (;@1;)
      local.get 4
      i32.const -1
      i32.add
      i32.const 45
      i32.store8
      local.get 3
      i32.const -1
      i32.add
      local.set 3
    end
    local.get 1
    i32.const 129
    local.get 3
    i32.sub
    i32.store offset=4
    local.get 1
    local.get 1
    i32.const 15
    i32.add
    local.get 3
    i32.add
    i32.store
    call $runtime.stderr_write
    local.get 1
    i32.const 144
    i32.add
    global.set $__stack_pointer)
  (func $runtime.print_byte (type 4) (param i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    local.get 1
    i64.const 0
    i64.store offset=24
    local.get 1
    local.get 0
    i32.store8 offset=16
    local.get 1
    i32.const 1
    i32.store offset=12
    local.get 1
    i32.const 1
    i32.store offset=28
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=8
    local.get 1
    local.get 1
    i32.const 16
    i32.add
    i32.store offset=24
    call $runtime.stderr_write
    local.get 1
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $mygui.to_vec2 (type 16) (param i32 f32 f32)
    (local i32 i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    i32.const 28
    i32.add
    local.get 2
    f32.store
    local.get 3
    i64.const 0
    i64.store offset=16
    block  ;; label = @1
      block  ;; label = @2
        local.get 2
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 2
        i32.trunc_f32_s
        local.set 4
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 4
    end
    local.get 3
    local.get 4
    i32.store offset=20
    local.get 3
    local.get 1
    f32.store offset=24
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        f32.abs
        f32.const 0x1p+31 (;=2.14748e+09;)
        f32.lt
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.trunc_f32_s
        local.set 4
        br 1 (;@1;)
      end
      i32.const -2147483648
      local.set 4
    end
    local.get 3
    local.get 4
    i32.store offset=16
    local.get 3
    local.get 3
    i64.load offset=16
    local.tee 5
    i64.store offset=8
    local.get 0
    local.get 5
    i64.store)
  (func $memset (type 17) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      local.get 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      i32.const 0
      local.set 3
      loop  ;; label = @2
        local.get 3
        local.get 2
        i32.ge_s
        br_if 1 (;@1;)
        local.get 0
        local.get 3
        i32.add
        local.get 1
        i32.store8
        local.get 3
        i32.const 1
        i32.add
        local.set 3
        br 0 (;@2;)
      end
    end
    local.get 0)
  (func $mygui.is_hovered (type 18) (param i32 i32 i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    local.get 1
    i32.store offset=44
    local.get 4
    local.get 0
    i32.store offset=40
    local.get 4
    local.get 2
    i32.store offset=32
    local.get 4
    local.get 3
    i32.store offset=36
    local.get 4
    i64.const 0
    i64.store offset=24
    local.get 4
    i32.const 24
    i32.add
    call $raylib..GetMousePosition
    local.get 4
    i32.const 8
    i32.add
    local.get 4
    f32.load offset=24
    local.get 4
    f32.load offset=28
    call $mygui.to_vec2
    local.get 4
    local.get 4
    i64.load offset=8
    local.tee 5
    i64.store offset=16
    i32.const 0
    local.set 3
    block  ;; label = @1
      local.get 5
      i32.wrap_i64
      local.tee 2
      local.get 4
      i32.load offset=40
      local.tee 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 4
      i32.load offset=32
      i32.add
      i32.gt_s
      br_if 0 (;@1;)
      local.get 4
      i32.load offset=20
      local.tee 2
      local.get 4
      i32.load offset=44
      local.tee 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 2
      local.get 0
      local.get 4
      i32.load offset=36
      i32.add
      i32.le_s
      local.set 3
    end
    local.get 4
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 3)
  (func $utf8.encode_rune (type 19) (param i32) (result i64)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 1
    i32.const 0
    i32.store offset=44
    block  ;; label = @1
      local.get 0
      i32.const 2047
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 0
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=45
      local.get 1
      local.get 0
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      i32.store8 offset=44
      local.get 1
      i32.const 2
      i32.store offset=28
      local.get 1
      local.get 1
      i32.load offset=44
      i32.store offset=24
      local.get 1
      i64.load offset=24
      return
    end
    block  ;; label = @1
      block  ;; label = @2
        local.get 0
        i32.const 1114111
        i32.gt_u
        br_if 0 (;@2;)
        local.get 0
        local.set 2
        local.get 0
        i32.const 55296
        i32.lt_u
        br_if 1 (;@1;)
        local.get 0
        local.set 2
        local.get 0
        i32.const 57343
        i32.gt_u
        br_if 1 (;@1;)
      end
      i32.const 65533
      local.set 2
    end
    block  ;; label = @1
      local.get 0
      i32.const 65535
      i32.gt_u
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=46
      local.get 1
      local.get 2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      i32.store8 offset=44
      local.get 1
      local.get 2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 offset=45
      local.get 1
      i32.const 3
      i32.store offset=20
      local.get 1
      local.get 1
      i32.load offset=44
      i32.store offset=16
      local.get 1
      i64.load offset=16
      return
    end
    local.get 1
    local.get 2
    i32.const 63
    i32.and
    i32.const 128
    i32.or
    i32.store8 offset=47
    local.get 1
    local.get 2
    i32.const 18
    i32.shr_u
    i32.const 240
    i32.or
    i32.store8 offset=44
    local.get 1
    local.get 2
    i32.const 6
    i32.shr_u
    i32.const 63
    i32.and
    i32.const 128
    i32.or
    i32.store8 offset=46
    local.get 1
    local.get 2
    i32.const 12
    i32.shr_u
    i32.const 63
    i32.and
    i32.const 128
    i32.or
    i32.store8 offset=45
    local.get 1
    i32.const 4
    i32.store offset=12
    local.get 1
    local.get 1
    i32.load offset=44
    i32.store offset=8
    local.get 1
    i64.load offset=8)
  (func $runtime.multi_pointer_slice_handle_error (type 3) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 16
    i32.add
    local.tee 4
    i64.const 0
    i64.store
    local.get 3
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    local.get 4
    local.get 0
    i32.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i32.const 1360
    i32.store offset=8
    local.get 3
    i32.const 49
    i32.store offset=12
    local.get 3
    local.get 1
    i32.store offset=20
    local.get 3
    i32.const 8
    i32.add
    call $runtime.print_caller_location
    i32.const 1576
    i32.const 23
    call $runtime.print_string
    i64.const 0
    call $runtime.print_i64
    i32.const 1566
    i32.const 1
    call $runtime.print_string
    local.get 2
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 10
    call $runtime.print_byte
    call $runtime.bounds_trap
    unreachable)
  (func $strings.clone_to_cstring (type 20) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i64.const 0
    i64.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 1
        i32.add
        local.get 2
        local.get 3
        local.get 4
        local.get 6
        i32.const 40
        i32.add
        local.get 5
        call $runtime.make_slice-17184
        local.tee 2
        i32.const 255
        i32.and
        i32.eqz
        br_if 0 (;@2;)
        local.get 6
        local.get 2
        i32.store8 offset=36
        local.get 6
        i32.const 0
        i32.store offset=32
        local.get 6
        local.get 6
        i64.load offset=32
        local.tee 7
        i64.store offset=24
        local.get 7
        i32.wrap_i64
        local.set 1
        br 1 (;@1;)
      end
      local.get 6
      i32.load offset=44
      local.set 2
      local.get 6
      local.get 6
      i32.load offset=40
      local.tee 3
      i32.store offset=16
      local.get 6
      local.get 2
      i32.store offset=20
      local.get 3
      local.get 2
      local.get 0
      local.get 1
      call $runtime.copy_from_string-17339
      local.get 6
      i32.load offset=16
      local.set 2
      i32.const 1169
      i32.const 48
      i32.const 63
      i32.const 4
      local.get 1
      local.get 6
      i32.load offset=20
      call $runtime.bounds_check_error
      local.get 2
      local.get 1
      i32.add
      i32.const 0
      i32.store8
      local.get 6
      i32.load offset=16
      local.set 1
      i32.const 1169
      i32.const 48
      i32.const 64
      i32.const 20
      i32.const 0
      local.get 6
      i32.load offset=20
      call $runtime.bounds_check_error
      local.get 6
      i32.const 0
      i32.store8 offset=12
      local.get 6
      local.get 1
      i32.store offset=8
      local.get 6
      local.get 6
      i64.load offset=8
      local.tee 7
      i64.store offset=24
      local.get 7
      i32.wrap_i64
      local.set 1
    end
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer
    local.get 1)
  (func $runtime.make_slice-17184 (type 20) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    local.get 6
    i32.const 8
    i32.add
    local.get 5
    call $runtime.make_aligned-17383
    local.set 0
    local.get 4
    local.get 6
    i64.load offset=8
    i64.store align=4
    local.get 6
    i32.const 16
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $runtime.copy_from_string-17339 (type 10) (param i32 i32 i32 i32)
    block  ;; label = @1
      i32.const 0
      local.get 1
      local.get 3
      local.get 1
      local.get 3
      i32.lt_s
      select
      local.tee 1
      local.get 1
      i32.const 0
      i32.lt_s
      select
      local.tee 1
      i32.const 1
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      local.get 1
      call $memmove
      drop
    end)
  (func $memmove (type 17) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=12
        i32.eq
        i32.const 1
        i32.and
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const 1
        i32.and
        br_if 0 (;@2;)
        local.get 2
        i32.const 0
        i32.eq
        i32.const 1
        i32.and
        i32.const 255
        i32.and
        i32.const 0
        i32.const 255
        i32.and
        i32.ne
        i32.const 1
        i32.and
        i32.eqz
        br_if 1 (;@1;)
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    block  ;; label = @1
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.gt_s
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.sub
      local.get 2
      i32.lt_u
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      local.get 2
      i32.const 1
      i32.sub
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          i32.const 0
          i32.ge_s
          i32.const 1
          i32.and
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=8
          i32.add
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.sub
          i32.store offset=8
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    block  ;; label = @1
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      i32.gt_s
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.load offset=12
      local.get 3
      i32.load offset=16
      i32.sub
      local.get 2
      i32.lt_u
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=4
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=4
          local.get 2
          i32.lt_s
          i32.const 1
          i32.and
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=4
          i32.add
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=4
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          local.get 3
          i32.load offset=4
          i32.const 1
          i32.add
          i32.store offset=4
          br 0 (;@3;)
        end
      end
      local.get 3
      i32.const 32
      i32.add
      global.set $__stack_pointer
      local.get 0
      return
    end
    local.get 0
    local.get 1
    local.get 2
    call $memcpy
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $memcpy (type 17) (param i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.set 3
    local.get 3
    local.get 0
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 2
    i32.store offset=20
    local.get 3
    local.get 0
    i32.store offset=16
    local.get 3
    local.get 1
    i32.store offset=12
    block  ;; label = @1
      local.get 3
      i32.load offset=16
      local.get 3
      i32.load offset=12
      i32.ne
      i32.const 1
      i32.and
      i32.const 255
      i32.and
      i32.const 0
      i32.const 255
      i32.and
      i32.ne
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      local.get 3
      i32.const 0
      i32.store offset=8
      block  ;; label = @2
        loop  ;; label = @3
          local.get 3
          i32.load offset=8
          local.get 2
          i32.lt_s
          i32.const 1
          i32.and
          i32.const 255
          i32.and
          i32.const 0
          i32.const 255
          i32.and
          i32.ne
          i32.const 1
          i32.and
          i32.eqz
          br_if 1 (;@2;)
          local.get 3
          i32.load offset=16
          local.get 3
          i32.load offset=8
          i32.add
          local.get 3
          i32.load offset=12
          local.get 3
          i32.load offset=8
          i32.add
          i32.load8_u
          i32.store8
          local.get 3
          local.get 3
          i32.load offset=8
          i32.const 1
          i32.add
          i32.store offset=8
          br 0 (;@3;)
        end
      end
    end
    local.get 3
    i32.load offset=16)
  (func $runtime.slice_expr_error_hi (type 2) (param i32 i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 4
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 4
      local.get 5
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i32.const 0
    local.get 4
    local.get 5
    call $runtime.slice_handle_error
    unreachable)
  (func $runtime.slice_expr_error_lo_hi (type 3) (param i32 i32 i32)
    block  ;; label = @1
      local.get 0
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      local.get 0
      local.get 1
      i32.gt_s
      br_if 0 (;@1;)
      local.get 1
      local.get 2
      i32.gt_s
      br_if 0 (;@1;)
      return
    end
    i32.const 1410
    i32.const 49
    i32.const 157
    i32.const 35
    local.get 0
    local.get 1
    local.get 2
    call $runtime.slice_handle_error
    unreachable)
  (func $io.write (type 2) (param i32 i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    local.get 6
    local.get 2
    i32.store offset=44
    local.get 6
    local.get 1
    i32.store offset=40
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        br_if 0 (;@2;)
        i32.const -1
        local.set 1
        i32.const 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 6
      i32.const 8
      i32.add
      local.get 6
      i32.load offset=44
      i32.const 4
      local.get 3
      local.get 4
      i64.const 0
      i32.const 0
      local.get 5
      local.get 1
      call_indirect (type 0)
      local.get 6
      i32.load offset=8
      local.set 2
      local.get 6
      i32.load offset=16
      local.set 1
    end
    local.get 6
    local.get 1
    i32.store offset=36
    local.get 6
    local.get 2
    i32.store offset=32
    local.get 6
    local.get 6
    i64.load offset=32
    local.tee 7
    i64.store offset=24
    local.get 0
    local.get 7
    i64.store
    local.get 6
    i32.const 48
    i32.add
    global.set $__stack_pointer)
  (func $strings.write_string (type 10) (param i32 i32 i32 i32)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $runtime.append_elem_string-17563)
  (func $strings.to_cstring (type 7) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call $runtime.append_elem-17463
    local.get 0
    local.get 1
    call $runtime.pop-17706
    local.get 0
    i32.load)
  (func $strings.builder_destroy (type 13) (param i32 i32)
    local.get 0
    local.get 1
    call $runtime.delete_dynamic_array-17408
    local.get 0
    i32.const 16
    i32.add
    i32.const 0
    i32.store align=1
    local.get 0
    i32.const 8
    i32.add
    i64.const 0
    i64.store align=1
    local.get 0
    i64.const 0
    i64.store align=1)
  (func $strings.write_rune (type 3) (param i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    local.get 2
    call $strings.to_writer
    local.get 3
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load offset=12
    local.get 1
    local.get 2
    call $io.write_rune
    local.get 3
    local.get 3
    i64.load
    local.tee 4
    i64.store offset=24
    local.get 3
    local.get 4
    i64.store offset=16
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $strings.to_string (type 13) (param i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    i64.const 0
    i64.store offset=8
    local.get 2
    local.get 1
    i32.load offset=4
    local.tee 3
    i32.store offset=4
    local.get 2
    local.get 1
    i32.load
    local.tee 1
    i32.store
    local.get 2
    local.get 1
    i32.store offset=8
    local.get 2
    local.get 3
    i32.store offset=12
    local.get 0
    local.get 3
    i32.store offset=4
    local.get 0
    local.get 1
    i32.store)
  (func $runtime.print_u64 (type 15) (param i64)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 144
    i32.sub
    local.tee 1
    global.set $__stack_pointer
    i32.const 0
    local.set 2
    local.get 1
    i32.const 15
    i32.add
    i32.const 0
    i32.const 129
    call $memset
    drop
    local.get 1
    i32.const 143
    i32.add
    local.set 3
    block  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i64.const 10
        i64.lt_u
        br_if 1 (;@1;)
        local.get 3
        local.get 2
        i32.add
        local.get 0
        i64.const 10
        i64.rem_u
        i32.wrap_i64
        i32.const 1024
        i32.add
        i32.load8_u
        i32.store8
        local.get 2
        i32.const -1
        i32.add
        local.set 2
        local.get 0
        i64.const 10
        i64.div_u
        local.set 0
        br 0 (;@2;)
      end
    end
    local.get 1
    i32.const 15
    i32.add
    local.get 2
    i32.add
    i32.const 128
    i32.add
    local.tee 3
    local.get 0
    i64.const 10
    i64.rem_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    i32.load8_u
    i32.store8
    local.get 1
    i32.const 1
    local.get 2
    i32.sub
    i32.store offset=4
    local.get 1
    local.get 3
    i32.store
    call $runtime.stderr_write
    local.get 1
    i32.const 144
    i32.add
    global.set $__stack_pointer)
  (func $strings._builder_stream_proc-1274 (type 0) (param i32 i32 i32 i32 i32 i64 i32 i32)
    (local i32 i64 i64)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 8
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 2
                i32.const -4
                i32.add
                br_table 0 (;@6;) 4 (;@2;) 4 (;@2;) 1 (;@5;) 2 (;@4;) 3 (;@3;) 4 (;@2;)
              end
              local.get 8
              i32.const 80
              i32.add
              i32.const 8
              i32.add
              local.tee 2
              local.get 1
              local.get 3
              local.get 4
              local.get 7
              call $strings.write_bytes
              i64.extend_i32_s
              local.tee 9
              local.get 4
              i64.extend_i32_s
              i64.lt_s
              i32.store
              local.get 8
              i32.const 64
              i32.add
              i32.const 8
              i32.add
              local.get 2
              i64.load
              local.tee 10
              i64.store
              local.get 8
              local.get 9
              i64.store offset=80
              local.get 8
              local.get 9
              i64.store offset=64
              local.get 10
              i32.wrap_i64
              local.set 2
              br 4 (;@1;)
            end
            local.get 8
            i32.const 48
            i32.add
            i32.const 8
            i32.add
            local.tee 2
            i32.const 0
            i32.store
            local.get 8
            i32.const 64
            i32.add
            i32.const 8
            i32.add
            local.get 2
            i64.load
            local.tee 10
            i64.store
            local.get 8
            local.get 1
            i64.load32_s offset=4
            local.tee 9
            i64.store offset=48
            local.get 8
            local.get 9
            i64.store offset=64
            local.get 10
            i32.wrap_i64
            local.set 2
            br 3 (;@1;)
          end
          local.get 1
          local.get 7
          call $strings.builder_destroy
          local.get 8
          i32.const 32
          i32.add
          i32.const 8
          i32.add
          local.tee 2
          i32.const 0
          i32.store
          local.get 8
          i32.const 64
          i32.add
          i32.const 8
          i32.add
          local.get 2
          i64.load
          local.tee 10
          i64.store
          i64.const 0
          local.set 9
          local.get 8
          i64.const 0
          i64.store offset=32
          local.get 8
          i64.const 0
          i64.store offset=64
          local.get 10
          i32.wrap_i64
          local.set 2
          br 2 (;@1;)
        end
        local.get 8
        i32.const 112
        i32.add
        i32.const 8
        i32.add
        local.tee 2
        i32.const 0
        i32.store
        local.get 8
        i32.const 16
        i32.add
        i32.const 8
        i32.add
        local.tee 1
        local.get 2
        i64.load
        i64.store32
        local.get 8
        i32.const 64
        i32.add
        i32.const 8
        i32.add
        local.get 1
        i64.load
        local.tee 10
        i64.store
        i64.const 912
        local.set 9
        local.get 8
        i64.const 912
        i64.store offset=96
        local.get 8
        i64.const 912
        i64.store offset=16
        local.get 8
        i64.const 912
        i64.store offset=64
        local.get 10
        i32.wrap_i64
        local.set 2
        br 1 (;@1;)
      end
      local.get 8
      i32.const 8
      i32.add
      local.tee 2
      i32.const -1
      i32.store
      local.get 8
      i32.const 64
      i32.add
      i32.const 8
      i32.add
      local.get 2
      i64.load
      local.tee 10
      i64.store
      i64.const 0
      local.set 9
      local.get 8
      i64.const 0
      i64.store
      local.get 8
      i64.const 0
      i64.store offset=64
      local.get 10
      i32.wrap_i64
      local.set 2
    end
    local.get 0
    local.get 9
    i64.store
    local.get 0
    local.get 2
    i32.store offset=8
    local.get 8
    i32.const 128
    i32.add
    global.set $__stack_pointer)
  (func $strings.write_bytes (type 18) (param i32 i32 i32 i32) (result i32)
    (local i32)
    local.get 0
    i32.load offset=4
    local.set 4
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $runtime.append_elems-17498
    local.get 0
    i32.load offset=4
    local.get 4
    i32.sub)
  (func $strings.to_stream (type 13) (param i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store offset=8
    local.get 2
    i32.const 1
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    local.get 2
    i32.const 1
    i32.store offset=8
    local.get 2
    local.get 1
    i32.store offset=12
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    i32.const 1
    i32.store)
  (func $strings.to_writer (type 3) (param i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i64.const 0
    i64.store offset=24
    local.get 3
    i32.const 8
    i32.add
    local.get 1
    call $strings.to_stream
    local.get 3
    i64.const 0
    i64.store offset=16
    local.get 3
    i32.load offset=8
    local.get 3
    i32.load offset=12
    local.get 3
    i32.const 16
    i32.add
    local.get 2
    call $io.to_writer
    local.get 3
    local.get 3
    i32.load offset=16
    local.tee 2
    i32.store offset=24
    local.get 3
    local.get 3
    i32.load offset=20
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 0
    local.get 2
    i32.store
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime.delete_dynamic_array-17408 (type 13) (param i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 16
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    local.get 0
    i32.load offset=8
    local.set 3
    local.get 0
    i32.load
    local.set 4
    local.get 2
    local.get 0
    i64.load offset=12 align=4
    i64.store offset=8
    block  ;; label = @1
      local.get 4
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i32.load offset=8
      local.tee 0
      i32.eqz
      br_if 0 (;@1;)
      local.get 2
      i64.const 0
      i64.store
      local.get 2
      i32.load offset=12
      i32.const 1
      i32.const 0
      i32.const 0
      local.get 4
      local.get 3
      i32.const 1776
      local.get 2
      local.get 1
      local.get 0
      call_indirect (type 1)
      drop
    end
    local.get 2
    i32.const 16
    i32.add
    global.set $__stack_pointer)
  (func $io.write_byte (type 18) (param i32 i32 i32 i32) (result i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 1
    i32.store offset=20
    local.get 4
    local.get 2
    i32.store8 offset=31
    local.get 4
    local.get 4
    i32.const 31
    i32.add
    i32.store offset=16
    local.get 4
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    local.get 4
    i32.const 31
    i32.add
    i32.const 1
    local.get 3
    call $io.write
    local.get 4
    i32.load offset=12
    local.set 0
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer
    local.get 0)
  (func $runtime.append_elem-17463 (type 13) (param i32 i32)
    (local i32 i32 i64 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 128
    i32.sub
    local.tee 2
    global.set $__stack_pointer
    i32.const 0
    local.set 3
    local.get 2
    i32.const 0
    i32.store8 offset=31
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                br_if 0 (;@6;)
                local.get 2
                i32.const 0
                i32.store8 offset=124
                local.get 2
                i32.const 0
                i32.store offset=120
                local.get 2
                local.get 2
                i64.load offset=120
                local.tee 4
                i64.store offset=112
                local.get 4
                i32.wrap_i64
                local.set 0
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=8
                local.tee 5
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.add
                i32.ge_s
                br_if 0 (;@6;)
                i32.const 0
                local.set 3
                local.get 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 5
                i32.const 1
                i32.shl
                i32.const 8
                i32.add
                local.tee 5
                local.get 0
                i32.load offset=8
                i32.le_s
                br_if 0 (;@6;)
                local.get 0
                i32.const 12
                i32.add
                local.set 3
                block  ;; label = @7
                  local.get 0
                  i32.load offset=12
                  br_if 0 (;@7;)
                  local.get 3
                  local.get 1
                  i64.load align=4
                  i64.store align=4
                end
                local.get 3
                i32.load
                i32.eqz
                br_if 2 (;@4;)
                local.get 2
                local.get 3
                i64.load align=4
                local.tee 4
                i64.store offset=56
                local.get 2
                i64.const 0
                i64.store offset=48
                local.get 2
                i64.const 0
                i64.store offset=40
                local.get 0
                i32.load offset=8
                local.set 6
                local.get 0
                i32.load
                local.set 7
                local.get 2
                i32.load offset=60
                local.set 8
                local.get 2
                i64.const 0
                i64.store offset=72
                local.get 2
                i64.const 0
                i64.store offset=64
                local.get 2
                local.get 4
                i32.wrap_i64
                local.tee 3
                i32.store offset=120
                local.get 2
                local.get 8
                i32.store offset=124
                local.get 2
                i64.const 0
                i64.store offset=112
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 3
                    br_if 0 (;@8;)
                    local.get 2
                    i64.const 0
                    i64.store offset=64
                    local.get 2
                    i64.const 0
                    i64.store offset=112
                    i32.const 0
                    local.set 3
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 5
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 7
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 2
                      i64.const 0
                      i64.store offset=104
                      local.get 2
                      i32.load offset=124
                      i32.const 1
                      i32.const 0
                      i32.const 0
                      local.get 7
                      local.get 6
                      i32.const 1808
                      local.get 2
                      i32.const 104
                      i32.add
                      local.get 1
                      local.get 3
                      call_indirect (type 1)
                      local.set 3
                      local.get 2
                      local.get 2
                      i64.load offset=112
                      i64.store offset=64
                      br 2 (;@7;)
                    end
                    local.get 2
                    local.get 2
                    i64.load offset=112
                    i64.store offset=64
                    i32.const 0
                    local.set 3
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 7
                    br_if 0 (;@8;)
                    local.get 2
                    i64.const 0
                    i64.store offset=104
                    local.get 2
                    i32.load offset=124
                    i32.const 0
                    local.get 5
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    i32.const 1808
                    local.get 2
                    i32.const 104
                    i32.add
                    local.get 1
                    local.get 3
                    call_indirect (type 1)
                    local.set 3
                    local.get 2
                    local.get 2
                    i32.load offset=104
                    local.tee 7
                    i32.store offset=112
                    local.get 2
                    local.get 2
                    i32.load offset=108
                    local.tee 8
                    i32.store offset=116
                    local.get 2
                    local.get 7
                    i32.store offset=64
                    local.get 2
                    local.get 8
                    i32.store offset=68
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 6
                    local.get 5
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 6
                    i32.const -1
                    i32.le_s
                    br_if 5 (;@3;)
                    local.get 2
                    local.get 6
                    i32.store offset=108
                    local.get 2
                    local.get 7
                    i32.store offset=104
                    local.get 2
                    local.get 2
                    i64.load offset=104
                    local.tee 4
                    i64.store offset=112
                    local.get 2
                    local.get 4
                    i64.store offset=64
                    i32.const 0
                    local.set 3
                    br 1 (;@7;)
                  end
                  local.get 2
                  i64.const 0
                  i64.store offset=104
                  local.get 2
                  i32.load offset=124
                  i32.const 3
                  local.get 5
                  i32.const 1
                  local.get 7
                  local.get 6
                  i32.const 1808
                  local.get 2
                  i32.const 104
                  i32.add
                  local.get 1
                  local.get 2
                  i32.load offset=120
                  call_indirect (type 1)
                  local.set 3
                  local.get 2
                  local.get 2
                  i64.load offset=104
                  i64.store offset=112
                  block  ;; label = @8
                    local.get 3
                    i32.const 255
                    i32.and
                    i32.const 4
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 2
                    i64.const 0
                    i64.store offset=96
                    local.get 2
                    i32.load offset=124
                    i32.const 0
                    local.get 5
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    i32.const 1808
                    local.get 2
                    i32.const 96
                    i32.add
                    local.get 1
                    local.get 2
                    i32.load offset=120
                    call_indirect (type 1)
                    local.set 3
                    local.get 2
                    local.get 2
                    i64.load offset=96
                    i64.store offset=112
                    block  ;; label = @9
                      local.get 3
                      i32.const 255
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 2
                      local.get 2
                      i64.load offset=112
                      i64.store offset=64
                      br 2 (;@7;)
                    end
                    local.get 6
                    i32.const -1
                    i32.le_s
                    br_if 6 (;@2;)
                    local.get 2
                    i32.load offset=116
                    local.set 3
                    local.get 2
                    i32.load offset=112
                    local.set 8
                    local.get 2
                    local.get 6
                    i32.store offset=92
                    local.get 2
                    local.get 7
                    i32.store offset=88
                    block  ;; label = @9
                      i32.const 0
                      local.get 3
                      local.get 6
                      local.get 3
                      local.get 6
                      i32.lt_s
                      select
                      local.tee 3
                      local.get 3
                      i32.const 0
                      i32.lt_s
                      select
                      local.tee 3
                      i32.const 1
                      i32.lt_s
                      br_if 0 (;@9;)
                      local.get 8
                      local.get 7
                      local.get 3
                      call $memmove
                      drop
                    end
                    local.get 2
                    i64.const 0
                    i64.store offset=80
                    local.get 2
                    i32.load offset=124
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    local.get 7
                    local.get 6
                    i32.const 1808
                    local.get 2
                    i32.const 80
                    i32.add
                    local.get 1
                    local.get 2
                    i32.load offset=120
                    call_indirect (type 1)
                    local.set 3
                  end
                  local.get 2
                  local.get 2
                  i64.load offset=112
                  i64.store offset=64
                end
                local.get 2
                local.get 2
                i64.load offset=64
                local.tee 4
                i64.store offset=40
                local.get 3
                i32.const 255
                i32.and
                br_if 0 (;@6;)
                local.get 2
                i32.load offset=44
                local.set 3
                local.get 2
                local.get 4
                i32.wrap_i64
                local.tee 7
                i32.store offset=48
                local.get 2
                local.get 3
                i32.store offset=52
                block  ;; label = @7
                  local.get 7
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 3
                  local.get 5
                  i32.const 0
                  i32.gt_s
                  br_if 1 (;@6;)
                end
                local.get 0
                local.get 5
                i32.store offset=8
                local.get 0
                local.get 2
                i32.load offset=48
                i32.store
                i32.const 0
                local.set 3
              end
              block  ;; label = @6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=8
                  local.get 0
                  i32.load offset=4
                  i32.sub
                  i32.const 1
                  i32.ge_s
                  br_if 0 (;@7;)
                  i32.const 0
                  local.set 1
                  br 1 (;@6;)
                end
                local.get 0
                i32.load
                local.tee 5
                i32.eqz
                br_if 5 (;@1;)
                local.get 5
                local.get 0
                i32.load offset=4
                i32.add
                local.get 2
                i32.load8_u offset=31
                i32.store8
                i32.const 1
                local.set 1
                local.get 0
                local.get 0
                i32.load offset=4
                i32.const 1
                i32.add
                i32.store offset=4
              end
              local.get 2
              local.get 3
              i32.store8 offset=124
              local.get 2
              local.get 1
              i32.store offset=120
              local.get 2
              local.get 2
              i64.load offset=120
              local.tee 4
              i64.store offset=112
              local.get 4
              i32.wrap_i64
              local.set 0
            end
            local.get 2
            i32.load8_u offset=116
            local.set 3
            local.get 2
            local.get 0
            i32.store offset=16
            local.get 2
            local.get 3
            i32.store8 offset=20
            local.get 2
            local.get 2
            i64.load offset=16
            i64.store offset=8
            local.get 2
            i32.const 128
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 1904
          local.get 1
          call $runtime.assert.internal-0
          unreachable
        end
        i32.const 194
        i32.const 24
        local.get 6
        call $runtime.multi_pointer_slice_handle_error
        unreachable
      end
      i32.const 212
      i32.const 28
      local.get 6
      call $runtime.multi_pointer_slice_handle_error
      unreachable
    end
    i32.const 1808
    local.get 1
    call $runtime.assert.internal-0
    unreachable)
  (func $runtime.pop-17706 (type 13) (param i32 i32)
    local.get 0
    i32.load offset=4
    i32.const 0
    i32.gt_s
    local.get 1
    call $runtime.assert
    local.get 0
    local.get 0
    i32.load offset=4
    i32.const -1
    i32.add
    i32.store offset=4)
  (func $runtime.assert (type 13) (param i32 i32)
    block  ;; label = @1
      local.get 0
      br_if 0 (;@1;)
      i32.const 1840
      local.get 1
      call $runtime.assert.internal-0
      unreachable
    end)
  (func $io.write_rune (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 64
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        local.get 3
        i32.const 127
        i32.gt_s
        br_if 0 (;@2;)
        local.get 5
        local.get 1
        local.get 2
        local.get 3
        local.get 4
        call $io.write_byte
        local.tee 3
        i32.store offset=60
        local.get 5
        local.get 3
        i32.eqz
        i32.store offset=56
        local.get 5
        local.get 5
        i64.load offset=56
        local.tee 6
        i64.store offset=48
        local.get 6
        i32.wrap_i64
        local.set 3
        br 1 (;@1;)
      end
      local.get 5
      local.get 3
      call $utf8.encode_rune
      local.tee 6
      i64.store offset=40
      local.get 5
      local.get 6
      i64.store32 offset=36
      i32.const 1267
      i32.const 38
      i32.const 330
      i32.const 21
      local.get 5
      i32.load offset=44
      local.tee 3
      i32.const 4
      call $runtime.slice_expr_error_hi
      local.get 5
      local.get 3
      i32.store offset=28
      local.get 5
      local.get 5
      i32.const 36
      i32.add
      i32.store offset=24
      local.get 5
      i32.const 8
      i32.add
      local.get 1
      local.get 2
      local.get 5
      i32.const 36
      i32.add
      local.get 3
      local.get 4
      call $io.write
      local.get 5
      local.get 5
      i64.load offset=8
      local.tee 6
      i64.store offset=48
      local.get 5
      local.get 6
      i64.store offset=16
      local.get 6
      i32.wrap_i64
      local.set 3
    end
    local.get 5
    i32.load offset=52
    local.set 4
    local.get 0
    local.get 3
    i32.store
    local.get 0
    local.get 4
    i32.store offset=4
    local.get 5
    i32.const 64
    i32.add
    global.set $__stack_pointer)
  (func $runtime.append_elems-17498 (type 10) (param i32 i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 112
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 0
                br_if 0 (;@6;)
                local.get 4
                i32.const 0
                i32.store8 offset=108
                local.get 4
                i32.const 0
                i32.store offset=104
                local.get 4
                local.get 4
                i64.load offset=104
                local.tee 5
                i64.store offset=96
                local.get 5
                i32.wrap_i64
                local.set 2
                br 1 (;@5;)
              end
              i32.const 0
              local.set 6
              block  ;; label = @6
                local.get 2
                i32.const 0
                i32.gt_s
                br_if 0 (;@6;)
                local.get 4
                i32.const 0
                i32.store8 offset=108
                local.get 4
                i32.const 0
                i32.store offset=104
                local.get 4
                local.get 4
                i64.load offset=104
                local.tee 5
                i64.store offset=96
                local.get 5
                i32.wrap_i64
                local.set 2
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=8
                local.tee 7
                local.get 0
                i32.load offset=4
                local.get 2
                i32.add
                i32.ge_s
                br_if 0 (;@6;)
                i32.const 0
                local.set 6
                local.get 0
                i32.eqz
                br_if 0 (;@6;)
                local.get 7
                i32.const 1
                i32.shl
                i32.const 8
                local.get 2
                local.get 2
                i32.const 8
                i32.lt_s
                select
                i32.add
                local.tee 7
                local.get 0
                i32.load offset=8
                i32.le_s
                br_if 0 (;@6;)
                local.get 0
                i32.const 12
                i32.add
                local.set 6
                block  ;; label = @7
                  local.get 0
                  i32.load offset=12
                  br_if 0 (;@7;)
                  local.get 6
                  local.get 3
                  i64.load align=4
                  i64.store align=4
                end
                local.get 6
                i32.load
                i32.eqz
                br_if 2 (;@4;)
                local.get 4
                local.get 6
                i64.load align=4
                local.tee 5
                i64.store offset=40
                local.get 4
                i64.const 0
                i64.store offset=32
                local.get 4
                i64.const 0
                i64.store offset=24
                local.get 0
                i32.load offset=8
                local.set 8
                local.get 0
                i32.load
                local.set 9
                local.get 4
                i32.load offset=44
                local.set 10
                local.get 4
                i64.const 0
                i64.store offset=56
                local.get 4
                i64.const 0
                i64.store offset=48
                local.get 4
                local.get 5
                i32.wrap_i64
                local.tee 6
                i32.store offset=104
                local.get 4
                local.get 10
                i32.store offset=108
                local.get 4
                i64.const 0
                i64.store offset=96
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 6
                    br_if 0 (;@8;)
                    local.get 4
                    i64.const 0
                    i64.store offset=48
                    local.get 4
                    i64.const 0
                    i64.store offset=96
                    i32.const 0
                    local.set 6
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 7
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 9
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      i64.const 0
                      i64.store offset=88
                      local.get 4
                      i32.load offset=108
                      i32.const 1
                      i32.const 0
                      i32.const 0
                      local.get 9
                      local.get 8
                      i32.const 1744
                      local.get 4
                      i32.const 88
                      i32.add
                      local.get 3
                      local.get 6
                      call_indirect (type 1)
                      local.set 6
                      local.get 4
                      local.get 4
                      i64.load offset=96
                      i64.store offset=48
                      br 2 (;@7;)
                    end
                    local.get 4
                    local.get 4
                    i64.load offset=96
                    i64.store offset=48
                    i32.const 0
                    local.set 6
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    br_if 0 (;@8;)
                    local.get 4
                    i64.const 0
                    i64.store offset=88
                    local.get 4
                    i32.load offset=108
                    i32.const 0
                    local.get 7
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    i32.const 1744
                    local.get 4
                    i32.const 88
                    i32.add
                    local.get 3
                    local.get 6
                    call_indirect (type 1)
                    local.set 6
                    local.get 4
                    local.get 4
                    i32.load offset=88
                    local.tee 9
                    i32.store offset=96
                    local.get 4
                    local.get 4
                    i32.load offset=92
                    local.tee 10
                    i32.store offset=100
                    local.get 4
                    local.get 9
                    i32.store offset=48
                    local.get 4
                    local.get 10
                    i32.store offset=52
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    local.get 7
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 8
                    i32.const -1
                    i32.le_s
                    br_if 5 (;@3;)
                    local.get 4
                    local.get 8
                    i32.store offset=92
                    local.get 4
                    local.get 9
                    i32.store offset=88
                    local.get 4
                    local.get 4
                    i64.load offset=88
                    local.tee 5
                    i64.store offset=96
                    local.get 4
                    local.get 5
                    i64.store offset=48
                    i32.const 0
                    local.set 6
                    br 1 (;@7;)
                  end
                  local.get 4
                  i64.const 0
                  i64.store offset=88
                  local.get 4
                  i32.load offset=108
                  i32.const 3
                  local.get 7
                  i32.const 1
                  local.get 9
                  local.get 8
                  i32.const 1744
                  local.get 4
                  i32.const 88
                  i32.add
                  local.get 3
                  local.get 4
                  i32.load offset=104
                  call_indirect (type 1)
                  local.set 6
                  local.get 4
                  local.get 4
                  i64.load offset=88
                  i64.store offset=96
                  block  ;; label = @8
                    local.get 6
                    i32.const 255
                    i32.and
                    i32.const 4
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 4
                    i64.const 0
                    i64.store offset=80
                    local.get 4
                    i32.load offset=108
                    i32.const 0
                    local.get 7
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    i32.const 1744
                    local.get 4
                    i32.const 80
                    i32.add
                    local.get 3
                    local.get 4
                    i32.load offset=104
                    call_indirect (type 1)
                    local.set 6
                    local.get 4
                    local.get 4
                    i64.load offset=80
                    i64.store offset=96
                    block  ;; label = @9
                      local.get 6
                      i32.const 255
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 4
                      local.get 4
                      i64.load offset=96
                      i64.store offset=48
                      br 2 (;@7;)
                    end
                    local.get 8
                    i32.const -1
                    i32.le_s
                    br_if 6 (;@2;)
                    local.get 4
                    i32.load offset=100
                    local.set 6
                    local.get 4
                    i32.load offset=96
                    local.set 10
                    local.get 4
                    local.get 8
                    i32.store offset=76
                    local.get 4
                    local.get 9
                    i32.store offset=72
                    block  ;; label = @9
                      i32.const 0
                      local.get 6
                      local.get 8
                      local.get 6
                      local.get 8
                      i32.lt_s
                      select
                      local.tee 6
                      local.get 6
                      i32.const 0
                      i32.lt_s
                      select
                      local.tee 6
                      i32.const 1
                      i32.lt_s
                      br_if 0 (;@9;)
                      local.get 10
                      local.get 9
                      local.get 6
                      call $memmove
                      drop
                    end
                    local.get 4
                    i64.const 0
                    i64.store offset=64
                    local.get 4
                    i32.load offset=108
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    local.get 9
                    local.get 8
                    i32.const 1744
                    local.get 4
                    i32.const 64
                    i32.add
                    local.get 3
                    local.get 4
                    i32.load offset=104
                    call_indirect (type 1)
                    local.set 6
                  end
                  local.get 4
                  local.get 4
                  i64.load offset=96
                  i64.store offset=48
                end
                local.get 4
                local.get 4
                i64.load offset=48
                local.tee 5
                i64.store offset=24
                local.get 6
                i32.const 255
                i32.and
                br_if 0 (;@6;)
                local.get 4
                i32.load offset=28
                local.set 6
                local.get 4
                local.get 5
                i32.wrap_i64
                local.tee 9
                i32.store offset=32
                local.get 4
                local.get 6
                i32.store offset=36
                block  ;; label = @7
                  local.get 9
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 6
                  local.get 7
                  i32.const 0
                  i32.gt_s
                  br_if 1 (;@6;)
                end
                local.get 0
                local.get 7
                i32.store offset=8
                local.get 0
                local.get 4
                i32.load offset=32
                i32.store
                i32.const 0
                local.set 6
              end
              block  ;; label = @6
                local.get 0
                i32.load offset=8
                local.get 0
                i32.load offset=4
                i32.sub
                local.tee 7
                local.get 2
                local.get 7
                local.get 2
                i32.lt_s
                select
                local.tee 2
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 0
                i32.load
                local.tee 7
                i32.eqz
                br_if 5 (;@1;)
                local.get 7
                local.get 0
                i32.load offset=4
                i32.add
                local.get 1
                local.get 2
                call $memmove
                drop
                local.get 0
                local.get 0
                i32.load offset=4
                local.get 2
                i32.add
                i32.store offset=4
              end
              local.get 4
              local.get 6
              i32.store8 offset=108
              local.get 4
              local.get 2
              i32.store offset=104
              local.get 4
              local.get 4
              i64.load offset=104
              local.tee 5
              i64.store offset=96
              local.get 5
              i32.wrap_i64
              local.set 2
            end
            local.get 4
            i32.load8_u offset=100
            local.set 0
            local.get 4
            local.get 2
            i32.store offset=8
            local.get 4
            local.get 0
            i32.store8 offset=12
            local.get 4
            local.get 4
            i64.load offset=8
            i64.store
            local.get 4
            i32.const 112
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 1904
          local.get 3
          call $runtime.assert.internal-0
          unreachable
        end
        i32.const 194
        i32.const 24
        local.get 8
        call $runtime.multi_pointer_slice_handle_error
        unreachable
      end
      i32.const 212
      i32.const 28
      local.get 8
      call $runtime.multi_pointer_slice_handle_error
      unreachable
    end
    i32.const 1744
    local.get 3
    call $runtime.assert.internal-0
    unreachable)
  (func $runtime.make_aligned-17383 (type 20) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i64)
    global.get $__stack_pointer
    i32.const 48
    i32.sub
    local.tee 6
    global.set $__stack_pointer
    block  ;; label = @1
      local.get 0
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      local.get 6
      i64.const 0
      i64.store offset=24
      local.get 6
      local.get 1
      i32.store offset=40
      local.get 6
      local.get 2
      i32.store offset=44
      block  ;; label = @2
        block  ;; label = @3
          local.get 0
          br_if 0 (;@3;)
          local.get 6
          i64.const 0
          i64.store offset=24
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        block  ;; label = @3
          local.get 6
          i32.load offset=40
          local.tee 1
          br_if 0 (;@3;)
          local.get 6
          i64.const 0
          i64.store offset=24
          i32.const 0
          local.set 1
          br 1 (;@2;)
        end
        local.get 6
        i64.const 0
        i64.store offset=32
        local.get 6
        i32.load offset=44
        i32.const 0
        local.get 0
        i32.const 1
        i32.const 0
        i32.const 0
        local.get 3
        local.get 6
        i32.const 32
        i32.add
        local.get 5
        local.get 1
        call_indirect (type 1)
        local.set 1
        local.get 6
        local.get 6
        i64.load offset=32
        i64.store offset=24
      end
      local.get 6
      local.get 6
      i64.load offset=24
      local.tee 7
      i64.store offset=16
      block  ;; label = @2
        block  ;; label = @3
          local.get 7
          i32.wrap_i64
          br_if 0 (;@3;)
          local.get 4
          i64.const 0
          i64.store align=4
          br 1 (;@2;)
        end
        local.get 6
        i64.const 0
        i64.store offset=8
        local.get 6
        local.get 0
        i32.store offset=12
        local.get 6
        local.get 6
        i32.load offset=16
        i32.store offset=8
        local.get 4
        local.get 6
        i64.load offset=8
        local.tee 7
        i64.store align=4
        local.get 6
        local.get 7
        i64.store
      end
      local.get 6
      i32.const 48
      i32.add
      global.set $__stack_pointer
      local.get 1
      return
    end
    local.get 3
    call $runtime.print_caller_location
    i32.const 1600
    i32.const 32
    call $runtime.print_string
    local.get 0
    i64.extend_i32_s
    call $runtime.print_i64
    i32.const 10
    call $runtime.print_byte
    call $runtime.bounds_trap
    unreachable)
  (func $runtime.make_dynamic_array_len_cap-17796 (type 3) (param i32 i32 i32)
    (local i32 i32 i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 3
    global.set $__stack_pointer
    local.get 3
    i32.const 24
    i32.add
    local.tee 4
    i32.const 0
    i32.store
    local.get 3
    i32.const 16
    i32.add
    local.tee 5
    i64.const 0
    i64.store
    local.get 3
    i64.const 0
    i64.store offset=8
    local.get 3
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    call $runtime._make_dynamic_array_len_cap
    local.get 2
    local.get 3
    i64.load offset=8
    i64.store align=4
    local.get 2
    local.get 5
    i64.load
    i64.store offset=8 align=4
    local.get 2
    local.get 4
    i32.load
    i32.store offset=16
    local.get 3
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime._make_dynamic_array_len_cap (type 3) (param i32 i32 i32)
    (local i32 i32)
    global.get $__stack_pointer
    local.set 3
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i32.const 16
    i32.add
    local.tee 4
    local.get 2
    i32.store
    local.get 3
    i32.const 32
    i32.sub
    local.tee 3
    i64.const 0
    i64.store offset=8
    local.get 0
    local.get 1
    i32.store offset=12
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    i32.const 0
    i32.store
    local.get 4
    local.get 2
    i32.store
    local.get 3
    i32.const 0
    i32.store
    local.get 3
    local.get 3
    i32.load offset=12
    i32.store offset=4)
  (func $runtime.append_elem_string-17563 (type 10) (param i32 i32 i32 i32)
    (local i32)
    global.get $__stack_pointer
    i32.const 32
    i32.sub
    local.tee 4
    global.set $__stack_pointer
    local.get 4
    i32.const 8
    i32.add
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    call $runtime._append_elem_string-17750
    local.get 4
    local.get 4
    i32.load8_u offset=12
    i32.store8 offset=28
    local.get 4
    local.get 4
    i32.load offset=8
    i32.store offset=24
    local.get 4
    local.get 4
    i64.load offset=24
    i64.store offset=16
    local.get 4
    i32.const 32
    i32.add
    global.set $__stack_pointer)
  (func $runtime.default_assertion_failure_proc (type 2) (param i32 i32 i32 i32 i32 i32)
    unreachable
    unreachable)
  (func $runtime._append_elem_string-17750 (type 8) (param i32 i32 i32 i32 i32)
    (local i32 i64 i32 i32 i32 i32 i32)
    global.get $__stack_pointer
    i32.const 208
    i32.sub
    local.tee 5
    global.set $__stack_pointer
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                br_if 0 (;@6;)
                local.get 5
                i32.const 0
                i32.store8 offset=116
                local.get 5
                i32.const 0
                i32.store offset=112
                local.get 5
                local.get 5
                i64.load offset=112
                local.tee 6
                i64.store offset=104
                local.get 6
                i32.wrap_i64
                local.set 3
                br 1 (;@5;)
              end
              i32.const 0
              local.set 7
              block  ;; label = @6
                local.get 3
                i32.const 0
                i32.gt_s
                br_if 0 (;@6;)
                local.get 5
                i32.const 0
                i32.store8 offset=116
                local.get 5
                i32.const 0
                i32.store offset=112
                local.get 5
                local.get 5
                i64.load offset=112
                local.tee 6
                i64.store offset=104
                local.get 6
                i32.wrap_i64
                local.set 3
                br 1 (;@5;)
              end
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.tee 8
                local.get 1
                i32.load offset=4
                local.get 3
                i32.add
                i32.ge_s
                br_if 0 (;@6;)
                i32.const 0
                local.set 7
                local.get 1
                i32.eqz
                br_if 0 (;@6;)
                local.get 8
                i32.const 1
                i32.shl
                i32.const 8
                local.get 3
                local.get 3
                i32.const 8
                i32.lt_s
                select
                i32.add
                local.tee 8
                local.get 1
                i32.load offset=8
                i32.le_s
                br_if 0 (;@6;)
                local.get 1
                i32.const 12
                i32.add
                local.set 7
                block  ;; label = @7
                  local.get 1
                  i32.load offset=12
                  br_if 0 (;@7;)
                  local.get 7
                  local.get 4
                  i64.load align=4
                  i64.store align=4
                end
                local.get 7
                i32.load
                i32.eqz
                br_if 2 (;@4;)
                local.get 5
                local.get 7
                i64.load align=4
                local.tee 6
                i64.store offset=48
                local.get 5
                i64.const 0
                i64.store offset=40
                local.get 5
                i64.const 0
                i64.store offset=32
                local.get 1
                i32.load offset=8
                local.set 9
                local.get 1
                i32.load
                local.set 10
                local.get 5
                i32.load offset=52
                local.set 11
                local.get 5
                i64.const 0
                i64.store offset=64
                local.get 5
                i64.const 0
                i64.store offset=56
                local.get 5
                local.get 6
                i32.wrap_i64
                local.tee 7
                i32.store offset=112
                local.get 5
                local.get 11
                i32.store offset=116
                local.get 5
                i64.const 0
                i64.store offset=104
                block  ;; label = @7
                  block  ;; label = @8
                    local.get 7
                    br_if 0 (;@8;)
                    local.get 5
                    i64.const 0
                    i64.store offset=56
                    local.get 5
                    i64.const 0
                    i64.store offset=104
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 8
                    br_if 0 (;@8;)
                    block  ;; label = @9
                      local.get 10
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      i64.const 0
                      i64.store offset=96
                      local.get 5
                      i32.load offset=116
                      i32.const 1
                      i32.const 0
                      i32.const 0
                      local.get 10
                      local.get 9
                      i32.const 1872
                      local.get 5
                      i32.const 96
                      i32.add
                      local.get 4
                      local.get 7
                      call_indirect (type 1)
                      local.set 7
                      local.get 5
                      local.get 5
                      i64.load offset=104
                      i64.store offset=56
                      br 2 (;@7;)
                    end
                    local.get 5
                    local.get 5
                    i64.load offset=104
                    i64.store offset=56
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 10
                    br_if 0 (;@8;)
                    local.get 5
                    i64.const 0
                    i64.store offset=96
                    local.get 5
                    i32.load offset=116
                    i32.const 0
                    local.get 8
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    i32.const 1872
                    local.get 5
                    i32.const 96
                    i32.add
                    local.get 4
                    local.get 7
                    call_indirect (type 1)
                    local.set 7
                    local.get 5
                    local.get 5
                    i32.load offset=96
                    local.tee 10
                    i32.store offset=104
                    local.get 5
                    local.get 5
                    i32.load offset=100
                    local.tee 11
                    i32.store offset=108
                    local.get 5
                    local.get 10
                    i32.store offset=56
                    local.get 5
                    local.get 11
                    i32.store offset=60
                    br 1 (;@7;)
                  end
                  block  ;; label = @8
                    local.get 9
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 9
                    i32.const -1
                    i32.le_s
                    br_if 5 (;@3;)
                    local.get 5
                    local.get 9
                    i32.store offset=100
                    local.get 5
                    local.get 10
                    i32.store offset=96
                    local.get 5
                    local.get 5
                    i64.load offset=96
                    local.tee 6
                    i64.store offset=104
                    local.get 5
                    local.get 6
                    i64.store offset=56
                    i32.const 0
                    local.set 7
                    br 1 (;@7;)
                  end
                  local.get 5
                  i64.const 0
                  i64.store offset=96
                  local.get 5
                  i32.load offset=116
                  i32.const 3
                  local.get 8
                  i32.const 1
                  local.get 10
                  local.get 9
                  i32.const 1872
                  local.get 5
                  i32.const 96
                  i32.add
                  local.get 4
                  local.get 5
                  i32.load offset=112
                  call_indirect (type 1)
                  local.set 7
                  local.get 5
                  local.get 5
                  i64.load offset=96
                  i64.store offset=104
                  block  ;; label = @8
                    local.get 7
                    i32.const 255
                    i32.and
                    i32.const 4
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 5
                    i64.const 0
                    i64.store offset=88
                    local.get 5
                    i32.load offset=116
                    i32.const 0
                    local.get 8
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    i32.const 1872
                    local.get 5
                    i32.const 88
                    i32.add
                    local.get 4
                    local.get 5
                    i32.load offset=112
                    call_indirect (type 1)
                    local.set 7
                    local.get 5
                    local.get 5
                    i64.load offset=88
                    i64.store offset=104
                    block  ;; label = @9
                      local.get 7
                      i32.const 255
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      local.get 5
                      local.get 5
                      i64.load offset=104
                      i64.store offset=56
                      br 2 (;@7;)
                    end
                    local.get 9
                    i32.const -1
                    i32.le_s
                    br_if 6 (;@2;)
                    local.get 5
                    i32.load offset=108
                    local.set 7
                    local.get 5
                    i32.load offset=104
                    local.set 11
                    local.get 5
                    local.get 9
                    i32.store offset=84
                    local.get 5
                    local.get 10
                    i32.store offset=80
                    block  ;; label = @9
                      i32.const 0
                      local.get 7
                      local.get 9
                      local.get 7
                      local.get 9
                      i32.lt_s
                      select
                      local.tee 7
                      local.get 7
                      i32.const 0
                      i32.lt_s
                      select
                      local.tee 7
                      i32.const 1
                      i32.lt_s
                      br_if 0 (;@9;)
                      local.get 11
                      local.get 10
                      local.get 7
                      call $memmove
                      drop
                    end
                    local.get 5
                    i64.const 0
                    i64.store offset=72
                    local.get 5
                    i32.load offset=116
                    i32.const 1
                    i32.const 0
                    i32.const 0
                    local.get 10
                    local.get 9
                    i32.const 1872
                    local.get 5
                    i32.const 72
                    i32.add
                    local.get 4
                    local.get 5
                    i32.load offset=112
                    call_indirect (type 1)
                    local.set 7
                  end
                  local.get 5
                  local.get 5
                  i64.load offset=104
                  i64.store offset=56
                end
                local.get 5
                local.get 5
                i64.load offset=56
                local.tee 6
                i64.store offset=32
                local.get 7
                i32.const 255
                i32.and
                br_if 0 (;@6;)
                local.get 5
                i32.load offset=36
                local.set 7
                local.get 5
                local.get 6
                i32.wrap_i64
                local.tee 10
                i32.store offset=40
                local.get 5
                local.get 7
                i32.store offset=44
                block  ;; label = @7
                  local.get 10
                  br_if 0 (;@7;)
                  i32.const 1
                  local.set 7
                  local.get 8
                  i32.const 0
                  i32.gt_s
                  br_if 1 (;@6;)
                end
                local.get 1
                local.get 8
                i32.store offset=8
                local.get 1
                local.get 5
                i32.load offset=40
                i32.store
                i32.const 0
                local.set 7
              end
              block  ;; label = @6
                local.get 1
                i32.load offset=8
                local.get 1
                i32.load offset=4
                i32.sub
                local.tee 8
                local.get 3
                local.get 8
                local.get 3
                i32.lt_s
                select
                local.tee 3
                i32.const 1
                i32.lt_s
                br_if 0 (;@6;)
                local.get 1
                i32.load
                local.tee 8
                i32.eqz
                br_if 5 (;@1;)
                local.get 8
                local.get 1
                i32.load offset=4
                i32.add
                local.get 2
                local.get 3
                call $memmove
                drop
                local.get 1
                local.get 1
                i32.load offset=4
                local.get 3
                i32.add
                i32.store offset=4
              end
              local.get 5
              local.get 7
              i32.store8 offset=116
              local.get 5
              local.get 3
              i32.store offset=112
              local.get 5
              local.get 5
              i64.load offset=112
              local.tee 6
              i64.store offset=104
              local.get 6
              i32.wrap_i64
              local.set 3
            end
            local.get 5
            i32.load8_u offset=108
            local.set 1
            local.get 5
            local.get 3
            i32.store offset=16
            local.get 5
            local.get 1
            i32.store8 offset=20
            local.get 5
            local.get 5
            i64.load offset=16
            local.tee 6
            i64.store offset=8
            local.get 0
            local.get 5
            i32.load8_u offset=12
            i32.store8 offset=4
            local.get 0
            local.get 6
            i64.store32
            local.get 5
            i32.const 208
            i32.add
            global.set $__stack_pointer
            return
          end
          i32.const 1904
          local.get 4
          call $runtime.assert.internal-0
          unreachable
        end
        i32.const 194
        i32.const 24
        local.get 9
        call $runtime.multi_pointer_slice_handle_error
        unreachable
      end
      i32.const 212
      i32.const 28
      local.get 9
      call $runtime.multi_pointer_slice_handle_error
      unreachable
    end
    i32.const 1872
    local.get 4
    call $runtime.assert.internal-0
    unreachable)
  (func $runtime.assert.internal-0 (type 13) (param i32 i32)
    (local i32)
    i32.const 1151
    i32.const 17
    i32.const 0
    i32.const 0
    local.get 0
    local.get 1
    local.get 1
    i32.load offset=16
    local.tee 2
    i32.const 2
    local.get 2
    select
    call_indirect (type 2)
    unreachable)
  (table (;0;) 3 3 funcref)
  (memory (;0;) 2)
  (global $__stack_pointer (mut i32) (i32.const 67472))
  (export "memory" (memory 0))
  (export "begin_program" (func $begin_program))
  (elem (;0;) (i32.const 1) func $strings._builder_stream_proc-1274 $runtime.default_assertion_failure_proc)
  (data $.rodata (i32.const 1024) "0123456789abcdefghijklmnopqrstuvwxyz\00builder_destroy\00_reserve_dynamic_array\00test\00Hello\00Botao pressionado\00do_dropdown\00do_button\00runtime assertion\00/home/andreb/gits/Odin/core/strings/strings.odin\00/home/andreb/gits/Odin/core/strings/builder.odin\00/home/andreb/gits/Odin/core/io/io.odin\00/home/andreb/gits/Odin/base/runtime/core_builtin.odin\00/home/andreb/gits/Odin/base/runtime/internal.odin\00/home/andreb/projetos/odin/mygui/mygui/mygui.odin\00to_cstring\00write_string\00Teste\00leite\00_builder_stream_proc\00banana\00aveia\00melancia\00maca\00 is out of range 0..<\00:\00 Index \00 Invalid slice indices \00 Invalid slice length for make: \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\82\05\00\001\00\00\00J\00\00\00\0e\00\00\00u\04\00\00\09\00\00\00\00\00\00\00\00\00\00\00\82\05\00\001\00\00\00v\00\00\00\12\00\00\00i\04\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\82\05\00\001\00\00\00\8b\00\00\00\12\00\00\00i\04\00\00\0b\00\00\00\00\00\00\00\00\00\00\00\c2\04\00\000\00\00\00\ab\00\00\00\0b\00\00\00\d8\05\00\00\14\00\00\00\00\00\00\00\00\00\00\00\c2\04\00\000\00\00\00\db\00\00\00\02\00\00\00%\04\00\00\0f\00\00\00\00\00\00\00\00\00\00\00\c2\04\00\000\00\00\00*\01\00\00\02\00\00\00\b4\05\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\c2\04\00\000\00\00\00+\01\00\00\02\00\00\00\b4\05\00\00\0a\00\00\00\00\00\00\00\00\00\00\00\c2\04\00\000\00\00\00\f4\01\00\00\02\00\00\00\bf\05\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\1a\05\00\005\00\00\00\eb\02\00\00\02\00\00\005\04\00\00\16\00\00\00"))
