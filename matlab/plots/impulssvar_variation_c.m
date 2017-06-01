t = -.5:0.01:3;

m = 75;
k = 1473;

c = 350;
a = c/(2*m);
w = sqrt(k/m-(c/(2*m))^2);
h3 = 1/(m*w).*exp(-a*t).*sin(w*t).*u(t);
plot(t, h3, 'r--')
hold on

c = 700;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
h1=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);
plot(t, h1, 'b')
hold on

c = 1400;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
h2=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);
plot(t, h2, 'g:')

xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('h(t)')
legend('c = 350', 'c = 700', 'c = 1400')
grid
hold off