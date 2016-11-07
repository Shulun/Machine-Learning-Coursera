function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

%{
N = size(X, 1);
obj = zeros(N, K);

for i = 1:N 
    for j = 1:K
        obj(i, j) = sum((X(i,:) - centroids(j,:)).^2);
        %obj = sum((X(i,:) - centroids(j,:)).^2);
        [Y, I] = min(obj(i, :));
        idx(i) = I;
    end
end
%}

N = size(X, 1);
for i = 1:N
    obj_old = realmax();
    for j = 1:K
        obj = sum((X(i,:) - centroids(j,:)).^2);
        if obj < obj_old
            obj_old = obj;
            idx(i) = j;
        end
    end
end
% =============================================================

end

