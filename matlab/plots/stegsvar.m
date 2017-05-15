t = -.5:0.01:3;
m = 75;
k = 1473;
c = 700;

a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);

g1=1/(2*m*w*(a^2-w^2))*((a-w)*exp(-(a+w)*t)-(a+w)*exp(-(a-w)*t)+2*w).*u(t);

plot(t, g1)
xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('g(t)')
grid