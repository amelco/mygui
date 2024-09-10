#!/bin/bash

set -xe

rm mg
odin build main.odin -file -out:mg
./mg
