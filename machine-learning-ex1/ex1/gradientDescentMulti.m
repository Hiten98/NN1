function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

n_theta = length(theta') %number of theta

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    % ============================================================

    hypothesis = X * theta;
    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
    
    for theta_iter = 1:n_theta      %theta update loop
      theta(theta_iter,1) = theta(theta_iter,1) - (alpha/m)*sum((hypothesis-y).*X(:,theta_iter));
    end

end

end
