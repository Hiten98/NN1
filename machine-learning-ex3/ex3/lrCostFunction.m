function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%

%calculating h_theta = sigmoid(hypothesis) , hypothesis = X*theta;
h_theta = sigmoid(X*theta);

%calculate y1 (cost for first)
y1 = -(y'*log(h_theta));

%calculate y2 (cost for second)
y2 = (y-1)'*(log(1-h_theta));

%add bot costs and average it
J = (y1+y2)/m;

%regularising: theta(2:end) will just do the operations from 2nd to last row of theta
sq = sum(theta(2:end).^2); %-  (theta.^2)(1,1);

%calculate J (regularised)
J = J + lambda*sq/(2*m);
% =============================================================

%gradient:

%calculating gradient
grad = X'*(h_theta - y)/m;

%regularising grad: (grad(2:end) will replace all rows of grad except first (from 2 to end))
grad(2:end) = grad(2:end) + lambda * theta(2:end)/m;


end
