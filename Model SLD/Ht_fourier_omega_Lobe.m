clear all
clc
close all
p_a=2;
Kt_a=6e8; 
Kn_a=2e8; 
C_Ht_omega=Ht_fourier_omega(p_a,Kt_a,Kn_a);%

%%

figure
FontSize =15;
set(gca,'fontsize',FontSize)
hold on
plot(C_Ht_omega(1,:),C_Ht_omega(2,:),'g-d','linewidth',1.5)%

xlabel('Time-delay $\tau$ [ms]','fontsize',FontSize,'Interpreter','latex')
ylabel('$\lambda$ [mm]','fontsize',FontSize,'Interpreter','latex')
set(gca,'FontSize',FontSize,'box','on');
le=legend('Fourier appr. $T=2 ms$');%
set(le,'Interpreter','latex','Location','best','FontSize',15,'FontWeight','bold');
grid on
xlim([1,3.75])
%save('C_Ht_omega.mat','C_Ht_omega')%