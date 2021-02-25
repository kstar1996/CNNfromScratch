cmake_minimum_required(VERSION 3.17)
project(CNNfromScratch)

set(CMAKE_CXX_STANDARD 14)

add_executable(CNNfromScratch main.cpp layers/convolution_layer.hpp layers/relu_layer.hpp)