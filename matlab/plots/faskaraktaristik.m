w = 0:0.01:25;
m = 75;
k = 1473;
c = 700;

H = 1./(m*(j*w).^2 + c*j*w + k);
plot(w, angle(H));

xlabel('Vinkelfrekvens [rad/s]')
ylabel('Fasförskjutning [rad]')
title('arg H(\omega)')
grid
