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
hold off