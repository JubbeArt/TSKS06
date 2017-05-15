t = -.5:0.01:2.5;

k = 1473;
c = 700;

m=20;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
g1=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);
plot(t, g1);
hold on

m = 75;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);

g2=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);
plot(t, g2, '--')
hold on

m=200;
a = c/(2*m);
w = sqrt(k/m-(c/(2*m))^2);
g3=(w-exp(-a*t).*(a*sin(w*t)+w*cos(w*t)) ) / (m*w*(a^2+w^2)) .*u(t);

plot(t, g3, ':');
xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('g(t)')
legend('m = 20', 'm = 75', 'm = 200', 'Location','southeast')
grid

hold off