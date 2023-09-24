#!/bin/bash

rm -rf examples/FactoryPresets200/*.hex

# run xxd on every file in examples/FactoryPresets200 and save it to a file with the same initial name, but .hex as the file extension
for file in examples/FactoryPresets200/*
do 
echo $file
xxd "$file" "$file.hex"
done