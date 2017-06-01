w = 0:0.01:16;
k = 1473;
c = 700;

m = 20;
H1 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H1, 'r--')
hold on

m = 75;
H2 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H2, 'b')
hold on

m = 200;
H3 = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );
plot(w, H3, 'g:')

xlabel('Vinkelfrekvens [rad/s]')
ylabel('Amplitudskalning')
title('|H(\omega)|')
legend('m = 20', 'm = 75', 'm = 200')
grid
hold off