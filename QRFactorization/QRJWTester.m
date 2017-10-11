%% QRJW Tester

%Parameters

Z = [1 2 3;
    4 5 6;
    7 8 7;
    4 2 3;
    4 2 2;];

[Q,R] = QRJW(Z);

norm(Q*R-Z); % this should output 0

