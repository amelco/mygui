function InitWindow() {
    console.log("init_window_fora")
}

const importObject = {
    raylib: {
	InitWindow: InitWindow
    }
};


// entry point
(async () => {
    const wasm = await WebAssembly.instantiateStreaming(fetch("soma.wasm"), importObject)
    let a = 3
    let b = 2
    console.log("Soma: ",wasm.instance.exports.soma(a, b))
    wasm.instance.exports.init_canvas()
})();
