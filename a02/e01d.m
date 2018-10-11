Ts = 0.001;
t = [0 : Ts : 5];

w = sin(6 * pi * t) + sin(8 * pi * t + 0.1);

plot(t, w);
xlabel('Tempo(seg)');
ylabel('w(t)');

A = max(w)
#f = 1 Hz
#T = 1 s