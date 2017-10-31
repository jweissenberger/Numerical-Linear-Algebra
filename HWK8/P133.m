% Jack Weissenberger 
% Problem 13.3
% plot each funtion individually to see how the computer generates
% different values for two functions that should be identical

x = -1.920:.001:2.080;

p = x.^9 - 18.*x.^8 + 144.*x.^7 - 672.*x.^6 + 2016.*x.^5 - 4032.*x.^4 + 5376.*x.^3 - 4608.*x.^2 + 2304.*x - 512;

plot(x, p)

hold on

P = (x-2).^9;

plot(P, x)

hold off