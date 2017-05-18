w = 0:0.01:16;
m = 75;
k = 1473;
c = 700;

H = 1./(sqrt((k-m*w.^2).^2 + (c*w).^2) );

plot(w, H)
%hold on
%H = 1./(m*(j*w).^2 + c*j*w + k);
%plot(w, abs(H), '--')


xlabel('Vinkelfrekvens [rad/s]')
ylabel('Amplitudskalning')
title('|H(\omega)|')
axis([0 16 0 0.0009])
grid