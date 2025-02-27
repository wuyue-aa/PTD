clear all
clc
close all
%%
p_a=2;
Kt_a=6e8; 
Kn_a=2e8;
%%
% pade_a=7;
% C_p7=pade_approximation_(p_a,Kt_a,Kn_a,pade_a);
%%
pade_a=10;
C_p10=pade_approximation_(p_a,Kt_a,Kn_a,pade_a);
%%
figure
FontSize =15;
set(gca,'fontsize',FontSize)
hold on
%%
% plot(C_p7(1,:),C_p7(2,:),'c-.','linewidth',1.5)
%%
plot(C_p10(1,:),C_p10(2,:),'c-.','linewidth',1.5)
%%
xlabel('Time-delay $\tau$ [ms]','fontsize',FontSize,'Interpreter','latex')
ylabel('$\lambda$ [mm]','fontsize',FontSize,'Interpreter','latex')
set(gca,'FontSize',FontSize,'box','on');
le=legend('Pade appr. $n_\tau=10$');
set(le,'Interpreter','latex','Location','best','FontSize',15,'FontWeight','bold');
grid on
xlim([1,3.75])
%%
% save('C_p7.mat','C_p7')
%save('C_p10.mat','C_p10')