t = -.5:0.01:3;
k = 1473;
c = 700;

m = 20;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
h2=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);
plot(t, h2, 'r--')
hold on

m = 75;
a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);
h1=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);
plot(t, h1, 'b')
hold on

m = 200;
a = c/(2*m);
w = sqrt(k/m-(c/(2*m))^2);
h3 = 1/(m*w).*exp(-a*t).*sin(w*t).*u(t);
plot(t, h3, 'g:')

xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('h(t)')
legend('m = 20', 'm = 75', 'm = 200')
grid
hold off