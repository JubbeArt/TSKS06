poles = [-1.5, -0.5+0.0000000000000000000000001j];

plot(poles, 'x', 'linewidth', 3, 'markersize', 16)
hold on
axis([-2 1 -2 2]);
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.YTick = [];
ax.XTick = [];
xlabel('\sigma', 'fontsize', 20);
ylabel('j\omega', 'fontsize', 16);

text(-1.8, 1.6, '$K=\displaystyle\frac{1}{m}$','interpreter','latex', 'fontsize', 14);
hold off