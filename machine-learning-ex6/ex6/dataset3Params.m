function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

C = 1;
sigma = 0.1;

%it = [0.01 0.03 0.1 0.3 1 3 10 30];
%
%opt_err = 1000;
%opt_C = 0;
%opt_sigma = 0;
%
%for iC = 1:8
    %for isigma = 1:8
        %fprintf('%i\n', iC + isigma - 1);
%
        %C = it(iC);
        %sigma = it(isigma);
%
        %model = svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
        %predictions = svmPredict(model, Xval);
        %err = mean(double(predictions ~= yval));
%
        %if opt_err > err
            %opt_err = err;
            %opt_C = C;
            %opt_sigma = sigma;
        %end
    %end
%end
%
%C = opt_C;
%sigma = opt_sigma;
%
%fprintf('optimal C = %f\n', C);
%fprintf('optimal sigma = %f\n', sigma);

% =========================================================================

end
