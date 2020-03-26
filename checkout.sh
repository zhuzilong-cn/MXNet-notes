#!/bin/bash

git clone --recursive https://github.com/apache/incubator-mxnet
cd incubator-mxnet

find .|grep gitmodules|awk '{print "cat", $1;}'
git checkout 6eec9da55c5096079355d1f1a5fa58dcf35d6752

cd 3rdparty/ctc_include

cd ../dlpack && git checkout b90e939
cd ../dmlc-core && git checkout 0e13243
cd ../googletest && git checkout eb9225c
cd ../mkldnn && git checkout a0a87d6
cd ../nvidia_cub && git checkout c3cceac
cd ../onnx-tensorrt && git checkout f4745fc
cd ../openmp && git checkout b76842e
cd ../ps-lite && git checkout 60b826e
cd ../tvm && git checkout afd4b3e

cd ../onnx-tensorrt/third_party/onnx && git checkout 765f5ee
cd third_party/benchmark && git checkout e776aa0
cd ../pybind11 && git checkout a104119
cd tools/clang && git checkout 6a00cbc

cd ../../../../../../../tvm
cd 3rdparty/dlpack && git checkout 0acb731
cd ../dmlc-core && git checkout 3943914
cd ../rang && git checkout cabe04d
