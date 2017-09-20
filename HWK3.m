% Jack Weissenberger Homework 3 Problem 4.3

% Given a real 2x2 matrix A, plot the right singular vectors v1 and v2 in
% the unit circle and also the left singular vectors u1 and u2 in the 
% appropriate elipse

A = [1 2;
    -0 2];

[U, S, V] = svd (A);
S = diag(S);

theta=0:2*pi/360:2*pi;

x = cos(theta);
y = sin(theta);

subplot(1,2,1)
plot(x,y)
title('Right Singular Vectors')
hold on
plot([0 V(1,1)], [0 V(2,1)], '-')
plot([0 V(1,2)], [0 V(2,2)], '-')
hold off

unitCirc = [x;y];
elip = A*unitCirc;

subplot(1,2,2)
plot(elip(1,:) , elip(2,:))
title('Left Singular Vectors')
hold on
plot([0 S(1)*U(1,1)], [0 S(1)*U(2,1)], '-')
plot([0 S(2)*U(1,2)], [0 S(2)*U(2,2)], '-')
hold off
