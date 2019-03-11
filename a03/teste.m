

t = [0 : 0.001 : 6];
w = 2 * pi * 1;

f1 = 0;
f2 = pi/3;
f3 = -pi/3;

x = sin(w*t + f1) + sin(w*t + f2) + sin(w*t + f3);

plot(x);