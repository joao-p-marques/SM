Ta = 0.001;
t = [0:Ta:5];
tw = [0:Ta:10];

x = 2*sin(4*pi*t);
y = cos(10*pi*t);
z = x.*y;
w = 3*sin(pi*tw) + 2*sin(6*pi*tw);

#plot(t, x, t, y, t, z, tw, w)
#plot(t, x, '-r', t, y, '--b', t, z, '.-g', tw, w, 'y')

plot(t, x, 'r');
hold on;
plot(t, y, '--', 'LineWidth', 2, 'color', [0 0 0.8]);
plot(t, z, '.-', 'Color', [0.2 0.8 0.2]);
plot(tw, w, '-y', 'LineWidth', 2);
hold off;
xlabel('Tempo(seg)');
ylabel('Amplitude');
legend('x', 'y', 'z', 'w');