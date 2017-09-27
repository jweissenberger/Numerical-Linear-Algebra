function [ Q, R ] = QRJW( A )
%QRJW, This computes the QR factroization of a nxn matrix A
%   Inputs, A(nxn)

%% Extracting information from A and allocating space for matricies

[~, n] = size(A);
Q = zeros(n,n);
R = zeros(n,n);

%% Main Loop
for j = 1:n,
    v = A(:, j);
    
    for i = 1:j-1,
       qi = Q(:,i);
       aj = A(:,j);
       R(i,j) = qi'*aj;
       v = v- R(i,j) * qi; 
    end
    R(j,j)= norm(v);
    qj = v/R(j,j);
    Q(:,j) = qj;
end

end


