x = linspace(-10, 10,20);

func = cos(x);

a = vander(x);

c = inv(a)*func';

l = linspace(-10, 10,100);

s = cos(l);

p = polyval(c,l);

plot(l, s, 'r')
hold on
plot(l, p, 'b--')
plot(x, func, 'go')
xlabel('-10 < x < 10')
ylabel('f(x)')
legend('Exact Function','Interpolated Function', 'Data Points')
hold off