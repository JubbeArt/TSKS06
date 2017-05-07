subplot(2, 1, 1)
t = -6:0.01:6;
y = 3 * sin(2*t) + sin(4*t);
plot(t, y)
title('Tidsdomän')
xlabel('Tid')
grid

subplot(2, 1, 2)
x = [2,4];
y = [3,1];
stem(x, y, 'filled', 'linewidth', 1.5)
axis([0, 7, 0, 5])
title('Frekvensdomän')
xlabel('Frekvens')
grid