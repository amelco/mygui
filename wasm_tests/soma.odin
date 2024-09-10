package wasm

import rl "vendor:raylib"

@export
soma :: proc(a: i32, b: i32) -> i32 {
    return a + b
}

@export
init_canvas :: proc() {
    rl.InitWindow(800, 600, "hello from raylib")
}
