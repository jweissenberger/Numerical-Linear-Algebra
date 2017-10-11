%% HouseHolder QR Factorization

A = [1 2 3;
    4 5 6;
    7 8 9;];

[m,n] = size(A);

for i = 1 : n,
    x = A(i : m, i);
    v = x;
    v(1) = sign(x(1))*norm(x)+ v(1);
    v = v/norm(v);
    A(i : m, i : n) = A(i : m, i : n) - 2*v*(v'*A(i : m, i : n));
    W(i:m,i) = v;
end
