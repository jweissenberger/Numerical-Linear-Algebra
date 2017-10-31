
% 12.3 Random Matrix

m =1:100;
m(1) = 8;
val = 8;

for i = 2 : 100
    val  = val * 2;
    m(i) = val;
    A = randn(m(i),m(i))/sqrt(m(i));
    scatter(eig(A))
    hold on
end
hold off
