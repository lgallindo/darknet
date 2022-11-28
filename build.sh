#!/bin/bash
sudo apt-get install libopencv-dev libopencv-dnn-dev
cd build
cmake .. -DENABLE_CUDA=OFF & cmake --build .
cd ..
rm darknet
cp build/darknet darknet
