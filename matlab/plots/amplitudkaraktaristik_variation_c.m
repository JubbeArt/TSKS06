w = 0:0.01:16;
k = 1473;
m = 75;

c = 350;
H1 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H1, 'r--')
hold on

c = 700;
H2 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H2, 'b')
hold on

c = 1400;
H3 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H3, 'g:')

xlabel('Vinkelfrekvens [rad/s]')
ylabel('Amplitudskalning')
title('|H(\omega)|')
legend('c = 350', 'c = 700', 'c = 1400')
grid
hold off