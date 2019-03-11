
Ta = 1/100;

% a
T = 1;
t = [0 : Ta : 10*T-Ta]';

x = sin(2*pi*t);
[X, f] = espetro(x, Ta);

%plot(f, abs(X));
%xlabel('Frequência (Hz)');
%ylabel('DFT (magnitude)');

% b
t = [0 : Ta : 5-Ta]';

y = sin(10*pi*t) + cos(12*pi*t) + cos(14*pi*t - pi/4);
[X, f] = espetro(y, Ta);

plot(f, abs(X));
xlabel('Frequência (Hz)');
ylabel('DFT (magnitude)');

reconstroi(X, f);

% c
t1 = [0 : Ta : 0.5-Ta]';
t2 = [0.5 : Ta : 1-Ta]';

z1 = ones(length(t1));
z2 = zeros(length(t2));

zp = [z1 ; z2];
tp = [t1 : t2];

z = [zp ; zp ; zp ; zp ; zp];
t = [0 : Ta : 5-Ta];

[X, f] = espetro(z, Ta);

%plot(f, abs(X));
%xlabel('Frequência (Hz)');
%ylabel('DFT (magnitude)');

% d

t1 = [0 : Ta : 0.25-Ta]';
t2 = [0.25 : Ta : 0.75-Ta]';
t3 = [0.75 : Ta : 1-Ta]';

q1 = (1/0.25)*t1;
q2 = -(1/0.25)*t2;
q3 = (1/0.25)*t3;

qp = [q1 ; q2 ; q3];
tp = [t1 : t2 : t3];

q = [qp ; qp ; qp ; qp ; qp];
t = [0 : Ta : 5-Ta]';

%plot(t, q);

