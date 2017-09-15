d = linspace(-8*pi, 8*pi,10);

f = sin(d);

a = vander(d);

c = inv(a)*f';

x = linspace(-8*pi, 8*pi,100);

s = sin(x);

p = polyval(c,x);

plot(x, s, 'r')
hold on
plot(x, p, 'b--')
plot(d, f, 'go')
xlabel('-8\pi < x < 8\pi')
ylabel('f(x)')
legend('Exact Function','Interpolated Function', 'Data Points')
hold off