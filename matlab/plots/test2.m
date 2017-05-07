w=0:0.01:16;
H=j*2*w./(5-w.^2+j*2*w);    % Se till att du inte ändrar j till något annat än den imaginära enheten
subplot(2,1,1)        % En övre delgraf görs aktuell, amplitudkaraktäristiken skall ritas
plot(w,abs(H),'linewidth',1.5)
axis([0 16 0 1.1])
grid
title('|H(\omega)|','fontsize',14)
subplot(2,1,2)         % En undre delgraf görs aktuell, faskaraktäristiken skall ritas
plot(w,angle(H),'linewidth',1.5)
grid
title('arg H(\omega)','fontsize',14)
xlabel('Vinkelfrekvens  [rad/s]','fontsize',14)