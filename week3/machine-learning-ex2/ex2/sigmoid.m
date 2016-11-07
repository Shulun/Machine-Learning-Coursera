function g = sigmoid(z)
%SIGMOID Compute sigmoid functoon
%   J = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

n = size(g);
if length(n) == 1
for i = 1:n
    g(i) = 1/(1+exp(-z(i)));
end
elseif length(n) == 2
    for i = 1:n(1)
        for j = 1:n(2)
            g(i,j) = 1/(1+exp(-z(i,j)));
        end
    end
% =============================================================

end
