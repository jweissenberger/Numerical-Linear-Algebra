function [ H ] = Hess( A )
%Finds the Hessenberg matrix H of the input matrix A
%   Input: A
%   Output: H

[m,~] = size(A);

for i = 1 : (m-2),
    x = A(i+1 : m, i);
    v = x;
    v(1) = sign(x(1))*norm(x)+ v(1);
    v = v/norm(v);
    A((i+1) : m, i : m) = A((i+1) : m, i : m) - 2*v*(v'*A((i+1) : m, i : m));
    A(1:m, (i+1):m) = A(1:m, (i+1):m) - 2*(A(1:m,(i+1):m)*v)*v';
end

H = A;

end

