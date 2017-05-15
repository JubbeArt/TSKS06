t = -.5:0.01:3;
m = 75;
k = 1473;
c = 700;

a = c/(2*m);
w = sqrt((c/(2*m))^2-k/m);

h1=1/(2*m*w)*(exp(-(a-w)*t)-exp(-(a+w)*t)).*u(t);

plot(t, h1)
xlabel('Tid [s]')
ylabel('Amplitud [m]')
title('h(t)')
grid