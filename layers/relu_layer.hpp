//
// Created by eujin on 2/25/21.
//

#ifndef CNNFROMSCRATCH_RELU_LAYER_HPP
#define CNNFROMSCRATCH_RELU_LAYER_HPP

#endif //CNNFROMSCRATCH_RELU_LAYER_HPP

#include <iostream>
#include <armadillo>

class ReluLayer{
public:
    //constructor implementation
    ReluLayer(size_t inputHeight,
              size_t inputWidth,
              size_t inputDepth) :
              inputHeight(inputHeight),
              inputWidth(inputWidth),
              inputDepth(inputDepth){//nothing to do
    }
    void Forward(arma::cube& input, arma::cube& output)
    {
        output = arma::zeros(arma::size(input));
        output = arma::max(input, output);
        this->input = input;
        this->output = output;
    }

    void Backward(arma::cube upstreamGradient)
    {
        gradientWrtInput = input;
        gradientWrtInput.transform( [](double val) { return val > 0? 1 : 0; } );
        gradientWrtInput = gradientWrtInput % upstreamGradient;
    }
    arma::cube getGradientWrtInput() { return gradientWrtInput; }

private:
    size_t inputHeight;
    size_t inputWidth;
    size_t inputDepth;

    arma::cube input;
    arma::cube output;

    arma::cube gradientWrtInput;
};

#endif


};