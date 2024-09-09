#!/bin/bash

set -xe

# When compiling to wasm, imported raylib functions
# are created with a system: prefix in it.
# Ex. (import "system:raylib" "InitWindow" ...)
# TODO(Andre): discover a way to either eliminate this prefix
# or to import it in js file as it is.
odin build soma.odin -file -target:freestanding_wasm32
wasm2wat soma.wasm > soma.wat
