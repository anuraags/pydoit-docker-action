#!/bin/sh -l

echo "Running $1..."
time=$(date)
doit $1
echo ::set-output name=time::$time