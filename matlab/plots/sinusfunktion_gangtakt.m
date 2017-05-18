t = -1:0.01:3;

x = 200*sin(2*pi*t);
y = 44*sin(2*pi*t-1.9);


plot(t, x);
hold on
grid
xlabel('Tid [s]')
ylabel('Kraft [N] / Amplitud [mm]')
title('Gångtakt')
 
plot(t, y);
legend('Insignal x(t)','Utsignal y(t)')
hold off