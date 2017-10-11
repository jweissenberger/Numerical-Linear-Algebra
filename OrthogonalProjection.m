%% Finds the orthogonal projection of Matrix A 

A = [1 2;
    0 1;
    1 0];

p = inv(A'*A);

C = A * p;

C * A'