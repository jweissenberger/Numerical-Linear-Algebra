d = linspace(-4*pi, 4*pi,10);

f = sin(d);

a = vander(d);

c = inv(a)*f';

x = linspace(-4*pi, 4*pi,100);

s = sin(x);

p = polyval(c,x);

plot(x, s, 'r')
hold on
plot(x, p, 'b--')
plot(d, f, 'go')
xlabel('-4\pi < x < 4\pi')
ylabel('f(x)')
legend('Exact Function','Interpolated Function', 'Data Points')
hold off