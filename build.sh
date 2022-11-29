#!/bin/bash
sudo apt-get install libopencv-d7ev libopencv-dnn-dev
sed -i 's/GPU=1/GPU=0/' Makefile
rm -r build
mkdir build
cd build
cmake .. -DENABLE_CUDA=OFF & cmake --build . & rm ../darknet & cp darknet ../darknet
cd ..
sed -i 's/GPU=0/GPU=1/' Makefile
rm -r build_gpu
mkdir build_gpu
cd build_gpu
cmake .. & cmake --build . & rm ../darknet_gpu & cp darknet_gpu ../darknet_gpu
cd ..