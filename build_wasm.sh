#!/bin/bash

set -xe

odin build main.odin -o:size -file -target:freestanding_wasm32 -out:tmp.wasm -custom-attribute:export
wasm2wat tmp.wasm > tmp.wat
cat tmp.wat | sed 's/system:raylib/raylib/g' > main.wat
wat2wasm main.wat
rm tmp.*
