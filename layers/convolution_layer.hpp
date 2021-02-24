//
// Created by eujin on 2/24/21.
//

#ifndef CNNFROMSCRATCH_CONVOLUTION_LAYER_HPP
#define CNNFROMSCRATCH_CONVOLUTION_LAYER_HPP

#endif //CNNFROMSCRATCH_CONVOLUTION_LAYER_HPP

#include <armadillo> //armadillo for linear algebra utilities
#include <vector>
#include <iostream>
#include <cmath>
#include <cassert>

class ConvolutionLayer{
public:
    //constructor implementation
    ConvolutionLayer(
            //size_t is an unsigned integer type of at least 16 bits
            size_t inputHeight,
            size_t inputWidth,
            size_t inputDepth,
            size_t filterHeight,
            size_t filterWidth,
            size_t horizontalStride,
            size_t verticalStride,
            size_t numFilters) :
            inputHeight(inputHeight),
            inputWidth(inputWidth),
            inputDepth(inputDepth),
            filterHeight(filterHeight),
            filterWidth(filterWidth),
            horizontalStride(horizontalStride),
            verticalStride(verticalStride),
            numFilters(numFilters){
        //initialize filters
        filters.resize(numFilters);
        for

    }

    void Forward(arma::cube& input, arma::cube& output)
    {
        // The filter dimensions and strides must satisfy some contraints for
        // the convolution operation to be well defined.
        assert((inputHeight - filterHeight)%verticalStride == 0);
        assert((inputWidth - filterWidth)%horizontalStride == 0);

        // Output initialization.
        output = arma::zeros((inputHeight - filterHeight)/verticalStride + 1,
                             (inputWidth - filterWidth)/horizontalStride + 1,
                             numFilters);

        // Perform convolution for each filter.
        for (size_t fidx = 0; fidx < numFilters; fidx++)
        {
            for (size_t i=0; i <= inputHeight - filterHeight; i += verticalStride)
                for (size_t j=0; j <= inputWidth - filterWidth; j += horizontalStride)
                    output((i/verticalStride), (j/horizontalStride), fidx) = arma::dot(
                            arma::vectorise(
                                    input.subcube(i, j, 0,
                                                  i+filterHeight-1, j+filterWidth-1, inputDepth-1)
                            ),
                            arma::vectorise(filters[fidx]));
        }

        // Store the input and output. This will be needed by the backward pass.
        this->input = input;
        this->output = output;
};