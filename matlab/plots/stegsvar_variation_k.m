t = -1:0.01:6;

m = 75;
c = 700;

k = 370;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
g1=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);
plot(t, g1, 'r--')
hold on

k = 1473;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
g2=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);
plot(t, g2, 'b')
hold on

k = 3000;
a = c/(2*m);
w = sqrt(k/m-(c/(2*m))^2);
g3 = (w-exp(-a*t).*(a*sin(w*t)+w*cos(w*t)) ) / (m*w*(a^2+w^2)) .*u(t);
plot(t, g3, 'g:')

xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('g(t)')
legend('k = 370', 'k = 1473', 'k = 3000')
grid
hold off