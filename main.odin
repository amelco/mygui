package main
import rl "vendor:raylib"
import mg "mygui"
import "core:fmt"
import "core:strings"

INFO :: rl.TraceLogLevel.INFO

main :: proc() {   
    rl.InitWindow(800, 600, "Hello")
    rl.SetWindowMonitor(1)

    // define GUI elements
    dd := mg.Dropdown {{50, 100}, {100, 100}, -1, "", false, false, {"aveia", "maca", "banana", "melancia", "leite"}};
    tb := mg.Textbox {{50, 200}, {100, 100}, "test", false}
    
    for !rl.WindowShouldClose() {
	rl.BeginDrawing()
	rl.ClearBackground(mg.default_background_color)
	
        if mg.do_button({50, 50}, "Teste") {
	    
            rl.TraceLog(INFO, "Botao pressionado")
	}

	mg.do_dropdown(&dd)
	mg.do_textbox(&tb)

	rl.EndDrawing()
    }
}
