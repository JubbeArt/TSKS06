t = 0:0.01:1.5;

x = 250*sin(6*pi*t);
y = 8.75*sin(6*pi*t-2.66);


plot(t, x);
hold on
grid
xlabel('Tid [s]')
ylabel('Kraft [N] / Amplitud [mm]')
title('Löptakt')
 
plot(t, y);
legend('Insignal x(t)','Utsignal y(t)')
hold off