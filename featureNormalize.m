function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));%one row two colums


sigma = zeros(1, size(X, 2));%one row two colums

m = size(X,1)%47 rows of X

mu=mean(X)% 1x2 containg mean value for each colum of X

sigma=std(X)% 1x2 containing std for each colum of X
%This code is just manipulating matrices to regularise all the x data points
%correctly using the correct STD and Mean as there are 2 features 
%there are two different STD and mean values

one=ones(m, 1)
mu_matrix= one*mu
sigma_matrix = one * sigma
medium_x=X_norm-mu_matrix

X_norm= medium_x./sigma %devision element wise








% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 

%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
