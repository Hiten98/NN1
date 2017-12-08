function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

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
% Note: grad should have the same dimensions as theta
% =============================================================

%hypotheis
hypothesis = X*theta;

%h_theta
h_theta = sigmoid(hypothesis);

%calculate y*log(h_theta)
y1 = -(y'*log(h_theta));

%calculate (1-y)*log(1-h_theta)
y2 = (y-1)'*(log(1-h_theta));

%calculate J
J = (y1+y2)/m;

n_theta = length(theta);

%calculating gradient
for theta_iter = 1:n_theta      %theta update loop
      grad(theta_iter,1) = (1/m)*sum((h_theta-y).*X(:,theta_iter));
    end

end
