function [ V, lambda ] = MyEig( A )
%Outputs a matrix with the eignevectors and a vector with the eigenvalues
%given a matrix A
%   Calls the functions Hess, Lambda and Inverse to calculate the
%   eigenvalues and eigenvectors for a matrix A

A = A'*A;

H = Hess(A);
lambda = Lambda(H);
V = InverseIt(A, lambda);

end

