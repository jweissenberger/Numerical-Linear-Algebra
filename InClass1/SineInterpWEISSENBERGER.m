d = linspace(-2*pi, 2*pi,10);

f = sin(d);

a = vander(d);

c = inv(a)*f';

x = linspace(-2*pi, 2*pi,100);

s = sin(x);

p = polyval(c,x);

plot(x, s, 'r')
hold on
plot(x, p, 'b--')
plot(d, f, 'go')
xlabel('-2\pi < x < 2\pi')
ylabel('f(x)')
legend('Exact Function','Interpolated Function', 'Data Points')
hold off