#!/bin/bash

model=$1
# echo $model
files=$(ls weight/$model)
# echo $files
for filename in $files
do
    echo $filename
    python test.py --model $filename --path 1
done
for filename in $files
do
    echo $filename
    python test.py --model $filename --path 2
done