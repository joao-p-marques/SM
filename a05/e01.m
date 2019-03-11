% A

Ta = 0.2;
t = [0 : Ta : 5-Ta]';
x = sin(2*pi*t);
%plot(x);
ReconstroiSinal(x, Ta);

% B

Ta = 0.04;
t = [0 : Ta : 5-Ta]';
y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t-pi/4);
ReconstroiSinal(y, Ta);

% C

Ta = 0.1;
t = [-5 : Ta : 5-Ta]';
z = sinc(5*t);
ReconstroiSinal(z, Ta);