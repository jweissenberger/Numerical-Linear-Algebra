function [x] = backSub(R,y)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   Solving by back substitution
%
%   Inputs
%   1. R= nxn upper triangular matrix
%   2. y= nx1 vector
%
%   Output
%   1. x= nx1 vector of solution to Rx=y
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[n,~]=size(y);


for j=n:-1:1,
    x(j)=y(j);
    
    for k=j+1:n,
        x(j)=x(j)-R(j,k)*x(k);
    end
    x(j)=x(j)/R(j,j);
end

end

