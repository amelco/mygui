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
    active: bool,
    selected_index: i32,
    selected_text: string,
    item_selected: bool,
    items: []string,
}

Textbox :: struct {
    pos: Vector2,
    size: Vector2,
    active: bool,
    text: string,
    extra_chars: i32
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

    // draw box
    rl.DrawRectangleLines(cpos.x, cpos.y, csize.x, cast(i32)FONT_SIZE, rl.GRAY)
    p1: Vector2 = {dd.pos.x + dd.size.x - 15, dd.pos.y + 3}
    p2: Vector2 = {dd.pos.x + dd.size.x - 10, dd.pos.y + 13}
    p3: Vector2 = {dd.pos.x + dd.size.x - 5, dd.pos.y + 3}
    rl.DrawTriangle(p1, p2, p3, rl.DARKGRAY)

    // TODO(Andre): dropdown list must be closed when clicked outside and
    // the selected item should not be changed (if any) when this happens
    box_hovered := is_hovered(cpos, {csize.x, FONT_SIZE})
    if box_hovered && rl.IsMouseButtonPressed(rl.MouseButton.LEFT) {
	dd.active = true
	dd.item_selected = false
    }

    if dd.active
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
		dd.item_selected = true
		dd.active = false
		dd.selected_index = cast(i32)i
		dd.selected_text = dd.items[i]
	    }
	}
    } else {
	if dd.item_selected {
	    rl.DrawText(strings.clone_to_cstring(dd.items[dd.selected_index]), cpos.x + 5, cpos.y, FONT_SIZE, default_text_color)
	}
    }
}

do_textbox :: proc(tb: ^Textbox) {
    cpos := to_vec2(tb.pos)
    csize := to_vec2(tb.size)
    sb := strings.builder_make()
    strings.write_string(&sb, tb.text)
    ctxt := strings.to_cstring(&sb)
    ctxtsize := rl.MeasureText(ctxt, FONT_SIZE)
    
    // text is bigger than the box
    folga : i32 = 15
    big := ctxtsize - cast(i32)tb.size.x + folga >= 0
    if (big) {
	strings.builder_destroy(&sb)
	strings.write_string(&sb, tb.text[tb.extra_chars:])
	ctxt = strings.to_cstring(&sb)
    }
    
    rl.DrawRectangleLines(cpos.x, cpos.y, csize.x, cast(i32)FONT_SIZE, rl.BLUE if tb.active else rl.GRAY)
    rl.DrawText(ctxt, cpos.x + 5, cpos.y, FONT_SIZE, default_text_color)

    hovered := is_hovered(cpos, csize)
    if hovered && rl.IsMouseButtonPressed(rl.MouseButton.LEFT) {
	tb.active = true
    }

    if tb.active {
	k := rl.GetKeyPressed()
	// TODO(Andre): implement arrow keys (left/right) behavior
	if k == rl.KeyboardKey.ENTER { tb.active = false }
	else if k == rl.KeyboardKey.BACKSPACE && len(tb.text) > 0 {
	    // TODO(Andre): keep deleting when hold
	    tb.text = tb.text[:len(tb.text) - 1]
	    if (big && tb.extra_chars > 0) {
		tb.extra_chars -=1
	    }
	}
	else {
	    c := rl.GetCharPressed()
	    if (c != 0) {
		strings.builder_destroy(&sb)
		strings.write_string(&sb, tb.text)
		strings.write_rune(&sb, c)
		tb.text = strings.to_string(sb)
		if big {
		    tb.extra_chars += 1
		}
	    }
	}
	if !hovered && rl.IsMouseButtonPressed(rl.MouseButton.LEFT) {
	    tb.active = false
	}
	// blinking cursor
	blinktime := cast(i32)(rl.GetTime()*5)%2 > 0
	rl.DrawLine(cpos.x + rl.MeasureText(ctxt, FONT_SIZE) + 5+1, cpos.y+2, cpos.x + rl.MeasureText(ctxt, FONT_SIZE) + 5+1, cpos.y + FONT_SIZE-2, rl.BLACK if blinktime else default_background_color)
    }
}
