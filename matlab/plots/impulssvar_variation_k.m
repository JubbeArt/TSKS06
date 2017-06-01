t = -1:0.01:6;

m = 75;
c = 700;

k = 370;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
h2=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);
plot(t, h2, 'r--')
hold on

k = 1473;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
h1=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);
plot(t, h1, 'b')
hold on

k = 3000;
a = c/(2*m);
w = sqrt(k/m-(c/(2*m))^2);
h3 = 1/(m*w).*exp(-a*t).*sin(w*t).*u(t);
plot(t, h3, 'g:')

xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('h(t)')
legend('k = 370', 'k = 1473', 'k = 3000')
grid
hold off