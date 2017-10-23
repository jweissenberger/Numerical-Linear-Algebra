
%A = randn(m,m)/sqrt(m);

m =1:10;
m(1) = 8;
val = 8;

for i = 2 : 10
    val  = val * 2;
    m(i) = val;
    A = randn(m(i),m(i))/sqrt(m(i));
end

