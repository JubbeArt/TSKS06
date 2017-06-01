w = 0:0.01:7;
m = 75;
c = 700;

k = 370;
H1 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H1, 'r--')
hold on

k = 1473;
H2 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H2, 'b')
hold on

k = 3000;
H3 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H3, 'g:')

xlabel('Vinkelfrekvens [rad/s]')
ylabel('Amplitudskalning')
title('|H(\omega)|')
legend('k = 370', 'k = 1473', 'k = 3000')
grid
hold off