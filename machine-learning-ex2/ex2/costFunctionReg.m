function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
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
% =============================================================

%hypotheis
hypothesis = X*theta;

%h_theta
h_theta = sigmoid(hypothesis);

%calculate y*log(h_theta)
y1 = -(y'*log(h_theta));

%calculate (1-y)*log(1-h_theta)
y2 = (y-1)'*(log(1-h_theta));

%regularizing term
sq = sum(theta.^2) -  (theta.^2)(1,1);

%calculate J
J = (y1+y2)/m + lambda*sq/(2*m);

%calculating gradient (vectorised)
grad = X'*(h_theta - y)/m

%regularising grad:
temp = lambda*theta/m
temp(1,1) = 0
grad = grad + tempd

end
