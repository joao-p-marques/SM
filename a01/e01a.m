Ta = 0.001;
t = [0:Ta:5];

x = 2*sin(4*pi*t);

plot(t, x)
xlabel('Tempo(seg)');
ylabel('Sinal x');
xlim([0 5]);
ylim([-3 3]);


