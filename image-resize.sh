#!/bin/bash

mkdir "${PWD}/1x"
mkdir "${PWD}/2x"
mkdir "${PWD}/3x"

for entry in "${PWD}"/*.png
do
        orig=$(basename "$entry")
        cp "$orig" "${PWD}/1x"
        cp "$orig" "${PWD}/2x/${orig/.png/@2x.png}"
        cp "$orig" "${PWD}/3x/${orig/.png/@3x.png}"

done

cd 1x
sips -Z $1 *.png

cd ../2x
sips -Z $2 *.png

cd ../3x
sips -Z $3 *.png