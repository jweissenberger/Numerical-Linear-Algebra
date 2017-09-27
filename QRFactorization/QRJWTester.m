%% QRJW Tester

%Parameters

n = 100;
A = rand(n,n);

[Q,R] = QRJW(A);

norm(Q*R-A) % this should output 0