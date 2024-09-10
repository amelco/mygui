const importObject = {
    raylib: {
	InitWindow: () => {
	    console.log("InitWindow not implemented")
	},
	SetWindowMonitor: () => {
	    console.log("SetWindowMonitor not implemented")
	},
	SetTargetFPS: () => {
	    console.log("SetTargetFPS not implemented")
	},
	WindowShouldClose: () => {
	    console.log("WindowShouldClose not implemented")
	},
	BeginDrawing: () => {
	    console.log("BeginDrawing not implemented")
	},
	ClearBackground: () => {
	    console.log("ClearBackground not implemented")
	},
	TraceLog: () => {
	    console.log("TraceLog not implemented")
	},
	EndDrawing: () => {
	    console.log("EndDrawing not implemented")
	},
	DrawRectangleLines: () => {
	    console.log("DrawRectangle not implemented")
	},
	DrawTriangle: () => {
	    console.log("DrawTriangle not implemented")
	},
	DrawRectangle: () => {
	    console.log("DrawRectangle not implemented")
	},
	GetKeyPressed: () => {
	    console.log("GetKeyPressed not implemented")
	},
	GetCharPressed: () => {
	    console.log("GetCharPressed not implemented")
	},
	GetTime: () => {
	    console.log("GetTime not implemented")
	},
	DrawLine: () => {
	    console.log("DrawLine not implemented")
	},
	GetMousePosition: () => {
	    console.log("GetMousePosition not implemented")
	},
	MeasureText: () => {
	    console.log("MeasureText not implemented")
	},
	DrawRectangleV: () => {
	    console.log("DrawRectangleV not implemented")
	},
	DrawText: () => {
	    console.log("DrawText not implemented")
	},
	IsMouseButtonPressed: () => {
	    console.log("IsMouseButtonPressed not implemented")
	},
    }
};


// entry point
(async () => {
    const wasm = await WebAssembly.instantiateStreaming(
	fetch("main.wasm"),
	importObject
    );
    
    console.log(wasm)
    
    wasm.instance.exports.begin_program();
})();
