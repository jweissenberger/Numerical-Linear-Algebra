function [ V ] = InverseIt( A, lambda )
%Outputs the eigen vectors for a Hessenberg matrix given its eigen values

tol=10^(-4);


[m,~] = size(A);


L = length(lambda);

V=zeros(m,m);
for i = 1 : L,
mu = lambda(i);
v = rand(m,1);
flag=1;
while flag > tol,
    
   b = A-mu*eye(m);
   [Q, R] = qr(b);
   
   w = backSub(R, Q'*v)';
   
   vnew = w/norm(w);
    
   munew=vnew'*A*vnew;
   flag=norm(munew-mu);
   mu= munew;
   v=vnew;


end

size(v);
V(:, i) = v;

end


end

