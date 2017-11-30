function [ V, lambda ] = MyEig( A )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

A = A'*A;

H = Hess(A);
lambda = Lambda(H);
V = InverseIt(A, lambda);

end

