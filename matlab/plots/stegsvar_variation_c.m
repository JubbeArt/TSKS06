t = -.5:0.01:3;

m = 75;
k = 1473;

c = 350;
a = c/(2*m);
w = sqrt(k/m-(c/(2*m))^2);
g1 = (w-exp(-a*t).*(a*sin(w*t)+w*cos(w*t)) ) / (m*w*(a^2+w^2)) .*u(t);
plot(t, g1, 'r--')
hold on

c = 700;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
g2=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);
plot(t, g2, 'b')
hold on

c = 1400;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
g3=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);
plot(t, g3, 'g:')

xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('g(t)')
legend('c = 350', 'c = 700', 'c = 1400', 'Location','southeast')
grid
hold off