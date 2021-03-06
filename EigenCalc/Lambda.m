function [ E ] = Lambda( H )
%Lambda: outputs a vector containing the eignen values for a matrix
%   takes in a Hessenberg matrix and applies the QR algorithm until it 
%   converges. The output of this function will be a vector containing the 
%   eigenvalues of A. Can use Matlab�s built in command qr for this algorithm

%   Input: Hessenberg matrix H
%   Output: vector E containing the eignevalues

tol = 10^(-14);
err = 10;

while err > tol,
    [q,r] = qr(H);
    H = r*q;
    err = max(abs(diag(H,-1)));
end

E = diag(H);

end