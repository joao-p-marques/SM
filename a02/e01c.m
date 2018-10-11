Ts = 0.001;
t = [0 : Ts : 5];

z = sin(6 * pi * t) + sin(8 * pi * t);

plot(t, z);
xlabel('Tempo(seg)');
ylabel('z(t)');

A = max(z)
#f = 2 Hz
#T = 0.5 s