function [ q ] = task3( x )
%Task3 Plots a function and an interpolating polynomial
%   Input: x: a vector of twenty values
%   Gets 20 values of x on 0-20 then calculates the values of the function 
%   for those x values and plots the interpolating polynomial through those 
%   points on the interval [?10, 10]. The points do
%   not need to be uniformly spaced.

func = x.^6;

a = vander(x);

c = a\func';

l = linspace(-10, 10,100);

s = l.^6;

p = polyval(c,l);

plot(l, s, 'r')
hold on
plot(l, p, 'b--')
plot(x, func, 'go')
xlabel('-10 < x < 10')
ylabel('f(x)')
legend('Exact Function','Interpolated Function', 'Data Points')
hold off

q= 'The function has been plotted';
end

