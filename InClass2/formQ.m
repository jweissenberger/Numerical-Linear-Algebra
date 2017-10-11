function [ Q ] = formQ( W )
%formQ takes the matrix W outputted by the householder function
%and generates the corresponding mxm orthogonal matrix Q
%   Inputs: W
%   Outputs: Q

[m,n] = size(W);

for i = n:-1:1,
    a = W(i : m, i);
    Q(i:m, :) = Q(i:m, :) -2*a*(a'*Q(i:m,:));
end

end

