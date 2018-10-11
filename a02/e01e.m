Ts = 0.001;
t = [0 : Ts : 5];

q = sin(6 * pi * t) + sin(7 * pi * t) + sin(8 * pi * t);

plot(t, q);
xlabel('Tempo(seg)');
ylabel('q(t)');

A = max(q)
#f = 0.5 Hz
#T = 2 s