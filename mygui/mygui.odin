/*
* This is a immediate mode GUI simple library
* Its purpose is to have the most basic functionality for the most used GUI components
*
* Made by: Andre Herman F. Bezerra (2024)
*/

package mygui
import rl "vendor:raylib"
import "core:strings"
import "core:fmt"


// -----------------------------------------------------
// types

Vector2 :: rl.Vector2
INFO :: rl.TraceLogLevel.INFO

// -----------------------------------------------------
// enums


// -----------------------------------------------------
// structs

Vec2 :: struct {
    x: i32,
    y: i32,
}

Dropdown :: struct {
    pos: Vector2,
    size: Vector2,
    items: []string,
    selected_index: i32,
    selected_text: string,
    opened: bool,
    selected: bool,
}

// -----------------------------------------------------
// constants

default_background_color :: rl.Color{240, 240, 240, 255}
default_foreground_color :: rl.LIGHTGRAY
default_text_color       :: rl.Color{20,   20,  20, 255}
FONT_SIZE :: 15


// -----------------------------------------------------
// procedures

to_vec2 :: proc(v: Vector2) -> Vec2 {
    return {cast(i32)v.x, cast(i32)v.y}
}

// check if mouse hovers on thing
is_hovered :: proc(thing_pos: Vec2, thing_size: Vec2) -> bool {
    mouse_pos := to_vec2(rl.GetMousePosition())
    return mouse_pos.x >= thing_pos.x	&& mouse_pos.x <= thing_pos.x+thing_size.x && mouse_pos.y >= thing_pos.y && mouse_pos.y <= thing_pos.y+thing_size.y
}

// It doesn't have a state: must be declared within the main loop
do_button :: proc(pos: Vector2, text: string) -> bool {
    ctext := strings.clone_to_cstring(text);
    cpos := to_vec2(pos)
    
    font_size: i32 = 15
    padding: i32 = cast(i32)(cast(f32)font_size + 1.1)
    size: Vector2 = {
        cast(f32)(rl.MeasureText(ctext, font_size) + padding),
        cast(f32)(15 + padding)
    }

    hovered := is_hovered(cpos, to_vec2(size))
    rl.DrawRectangleV(pos, size, rl.GRAY if hovered else default_foreground_color)
    
    x: i32 = cpos.x + padding / 2
    y: i32 = cpos.y + padding / 2
    rl.DrawText(ctext, x, y, font_size, default_text_color)

    if hovered && rl.IsMouseButtonPressed(rl.MouseButton.LEFT) { return true }
    return false
}

// It does have a state: its struct must be declared before the main loop
do_dropdown :: proc(dd: ^Dropdown) {
    cpos := to_vec2(dd.pos)
    csize := to_vec2(dd.size)
    rl.DrawRectangleLines(cpos.x, cpos.y, csize.x, cast(i32)FONT_SIZE, rl.GRAY)

    main_hovered := is_hovered(cpos, {csize.x, FONT_SIZE})
    if main_hovered && rl.IsMouseButtonPressed(rl.MouseButton.LEFT) {
	dd.opened = true
	dd.selected = false
    }
    
    if dd.opened
    {
	for _,i in dd.items {
    	    item := strings.clone_to_cstring(dd.items[i])
	    x: i32 = cpos.x
            y: i32 = cpos.y + (cast(i32)(i+1) * FONT_SIZE)
	    sx := csize.x
	    sy := cast(i32)(FONT_SIZE-1)

            hovered := is_hovered({x, y}, {sx, sy})	

	    if hovered {rl.DrawRectangle(x, y, sx, sy+2, rl.GRAY)}

	    rl.DrawRectangleLines(x, y, sx, sy+2, rl.GRAY)
            rl.DrawText(item, x + 5, y, FONT_SIZE, default_text_color)

	    if hovered && rl.IsMouseButtonPressed(rl.MouseButton.LEFT) {
		dd.selected = true
		dd.opened = false
		dd.selected_index = cast(i32)i
		dd.selected_text = dd.items[i]
	    }
	}
    } else {
	if dd.selected {
	    rl.DrawText(strings.clone_to_cstring(dd.items[dd.selected_index]), cpos.x + 5, cpos.y, FONT_SIZE, default_text_color)
	}
    }
}
