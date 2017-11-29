function [ W, R ] = houseHolder( A )
%Computes the QR of a matrix A, using the householder algorithm
%   Inputs: A
%   Outputs: W, R

[m,n] = size(A);

for i = 1 : n,
    x = A(i : m, i);
    v = x;
    v(1) = sign(x(1))*norm(x)+ v(1);
    v = v/norm(v);
    A(i : m, i : n) = A(i : m, i : n) - 2*v*(v'*A(i : m, i : n));
    W(i:m,i) = v;
end

R = A;

end

