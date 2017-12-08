function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
% =============================================================

%get row and col size of z
n_row_iter = size(z)(1);
n_col_iter = size(z)(2);

%iterate and find sigmoid for each value
for r_iter = 1:n_row_iter
	for c_iter = 1:n_col_iter
		g(r_iter,c_iter) = 1/(1+e^(-z(r_iter,c_iter)));
	end
end

end