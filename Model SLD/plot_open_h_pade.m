clc
clear all
close all
%%
load C_open.mat
load C_Ht.mat
load C_Ht_omega.mat
load C_p7.mat
load C_p10.mat
figure
FontSize =15;
set(gca,'fontsize',FontSize)
plot(C_open(1,:),C_open(2,:),'k','linewidth',1.5)
hold on
plot(C_Ht(1,:),C_Ht(2,:),'r+','linewidth',1.5)
plot(C_Ht_omega(1,:),C_Ht_omega(2,:),'g-d','linewidth',1.2)
plot(C_p7(1,:),C_p7(2,:),'b:','linewidth',1.5)
plot(C_p10(1,:),C_p10(2,:),'c-.','linewidth',1.5)
xlim([1,3.75])
xlabel('Time-delay $\tau$ [ms]','fontsize',FontSize,'Interpreter','latex')
ylabel('$\lambda$ [mm]','fontsize',FontSize,'Interpreter','latex')
set(gca,'FontSize',FontSize,'box','on');
le=legend('Exact ${h}_1$(t) and time delay','Fourier appr.','Fourier appr. $T=2 ms$', 'Pade appr. $n_\tau=7$', 'Pade appr. $n_\tau=10$');
set(le,'Interpreter','latex','Location','best','FontSize',15,'FontWeight','bold');
grid on
