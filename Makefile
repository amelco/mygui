wasm: ./wasm/wasm.odin
	odin build ./wasm/wasm.odin -o:speed -file -target=freestanding_wasm32 -no-entry-point -no-crt -lld -out:./wasm/mg.wasm
	wasm2wat ./wasm/mg.wasm > ./wasm/mg.wat

mg: ./main.odin mygui/mygui.odin
	odin build main.odin -file -out:mg
