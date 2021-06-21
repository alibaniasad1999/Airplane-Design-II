%%% Cm vs alpha %%%
alpha = 0:10; % degree
Cl_vsalpha = zeros(1, 11);
Cm_vsalpha= zeros(1, 11);
for i = 1:length(delta_elevator)
temp = Cl_zero  + Cl_delta_elevator * delta_elevator(i); 
Cl_vsalpha(i, :) =  Cl_alpha * alpha;
Cl_vsalpha(i, :) = Cl_vsalpha(i, :) + temp;
Cm_vsalpha(i, :) = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl_vsalpha(i, :) +...
    Cm_delta_elevator_bar * delta_elevator(i);
end
subplot(2,1,1);
plot(alpha, Cm_vsalpha);
legend('$\delta_e = -30^{\circ}$',...
'$\delta_e = -20^{\circ}$','$\delta_e = -10^{\circ}$','$\delta_e = -5^{\circ}$',...
'$\delta_e = 0^{\circ}$','$\delta_e = 5^{\circ}$',...
'$\delta_e = 10^{\circ}$','$\delta_e = 20^{\circ}$', 'Interpreter','latex')
xlabel('$\alpha$','Interpreter','latex');
ylabel('$C_m$','Interpreter','latex');
subplot(2,1,2); 
plot(alpha, Cl_vsalpha);
legend('$\delta_e = -30^{\circ}$',...
'$\delta_e = -20^{\circ}$','$\delta_e = -10^{\circ}$','$\delta_e = -5^{\circ}$',...
'$\delta_e = 0^{\circ}$','$\delta_e = 5^{\circ}$',...
'$\delta_e = 10^{\circ}$','$\delta_e = 20^{\circ}$', 'Interpreter','latex')
axis([0 10 0 0.75])
xlabel('$\alpha$','Interpreter','latex');
ylabel('$C_l$','Interpreter','latex');

