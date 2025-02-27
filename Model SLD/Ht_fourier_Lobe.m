clear all
clc
close all
p_a=2;
Kt_a=6e8; 
Kn_a=2e8; 
C_Ht=Ht_fourier(p_a,Kt_a,Kn_a);

%%

figure
FontSize =15;
set(gca,'fontsize',FontSize)
hold on
plot(C_Ht(1,:),C_Ht(2,:),'r+','linewidth',1.5)

xlabel('Time-delay $\tau$ [ms]','fontsize',FontSize,'Interpreter','latex')
ylabel('$\lambda$ [mm]','fontsize',FontSize,'Interpreter','latex')
set(gca,'FontSize',FontSize,'box','on');
le=legend('Fourier appr.');
set(le,'Interpreter','latex','Location','best','FontSize',15,'FontWeight','bold');
grid on
xlim([1,3.75])
%save('C_Ht.mat','C_Ht')