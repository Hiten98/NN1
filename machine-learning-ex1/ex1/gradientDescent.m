function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

n_theta = length(theta');

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    % ============================================================

    % Save the cost J in every iteration   
    hypothesis = X * theta; 
    J_history(iter) = computeCost(X, y, theta);
    a = J_history(iter);
    for theta_iter = 1:n_theta      %theta update loop
      theta(theta_iter,1) = theta(theta_iter,1) - (alpha/m)*sum((hypothesis-y).*X(:,theta_iter));
    end

end

end
