%%% load data %%%
make_data76;
%%% ploter %%%
%%% Cm vs Cl %%%
delta_elevator = data.delta;
Cl = 0:.1:3;
figure1 = figure();
xlabel('$C_m$','Interpreter','latex');
ylabel('$C_l$','Interpreter','latex');
hold on;
for i = 1:length(delta_elevator)
    Cm = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl +...
    Cm_delta_elevator_bar * delta_elevator(i);
    plot(Cm, Cl);
end
axis([-0.4 0.4 0 2]);
set ( gca, 'xdir', 'reverse' );
%%% CG boundry %%%
x_cg = 39.208;
x_wing = 28.75;
wing_chord = 15.5;
x_cg_max = 42.33;
x_cg_min = 38.92;
x_cg_bar = (x_cg - x_wing) / wing_chord;
x_cg_max_bar = (x_cg_max - x_wing) / wing_chord;
x_cg_min_bar = (x_cg_min - x_wing) / wing_chord;
x_axis = -10:.1:10;
y1 = 1 / (x_cg_bar - x_cg_max_bar) * x_axis;
y2 = 1 / (x_cg_bar - x_cg_min_bar) * x_axis;
plot(x_axis, y1, 'k:', 'linewidth', 2);
plot(x_axis, y2, 'k:', 'linewidth', 2);
%%% Stall %%%
stall_alpha = 10; % degree
Cl_stall = zeros(1);
Cm_stall = zeros(1);
for i = 1:length(delta_elevator)
Cl_stall(i) = Cl_zero + Cl_alpha * stall_alpha +...
    Cl_delta_elevator * delta_elevator(i);
Cm_stall(i) = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl_stall(i) +...
    Cm_delta_elevator_bar * delta_elevator(i);
end
Stall_line = fit(Cm_stall', Cl_stall', 'poly1');
Cm_stall_axis = -0.4:0.01:0.4;
plot(Cm_stall_axis, Stall_line.p1 * Cm_stall_axis + Stall_line.p2, 'k:', 'linewidth', 2);
%%% Tail Stall %%%
% Positive %
iH = -2;
tai_h = 0.3;
Cl_tail_stall = zeros(1);
Cm_tail_stall = zeros(1);
tail_stall_alpha = zeros(1);
for i = 1:length(delta_elevator)
tail_stall_alpha(i) = (10 + epsilon_zero - iH - tai_h * delta_elevator(i))...
 / (1 - derivate_epsilon_zero);
Cl_tail_stall(i) = Cl_zero + Cl_alpha * tail_stall_alpha(i) +...
    Cl_delta_elevator * delta_elevator(i);
Cm_tail_stall(i) = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl_tail_stall(i) +...
    Cm_delta_elevator_bar * delta_elevator(i);
end
tail_Stall_line = fit(Cm_tail_stall', Cl_tail_stall', 'poly1');
Cm_stall_axis = -0.4:0.01:0.4;
plot(Cm_stall_axis, tail_Stall_line.p1 * Cm_stall_axis +tail_Stall_line.p2, 'k:', 'linewidth', 2);
% negative %
iH = -2;
tai_h = 0.3;
Cl_tail_stall = zeros(1);
Cm_tail_stall = zeros(1);
tail_stall_alpha = zeros(1);
for i = 1:length(delta_elevator)
tail_stall_alpha(i) = (-10 + epsilon_zero - iH - tai_h * delta_elevator(i))...
 / (1 - derivate_epsilon_zero);
Cl_tail_stall(i) = Cl_zero + Cl_alpha * tail_stall_alpha(i) +...
    Cl_delta_elevator * delta_elevator(i);
Cm_tail_stall(i) = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl_tail_stall(i) +...
    Cm_delta_elevator_bar * delta_elevator(i);
end
tail_Stall_line = fit(Cm_tail_stall', Cl_tail_stall', 'poly1');
Cm_stall_axis = -0.4:0.01:0.4;
plot(Cm_stall_axis, tail_Stall_line.p1 * Cm_stall_axis +tail_Stall_line.p2, 'k:', 'linewidth', 2);
%%% min Cl %%%
Cm_min_cl = -4:.01:0.4;
Cl_min = ones(1, length(Cm_min_cl)) * 0.34;
plot(Cm_min_cl,Cl_min, 'k:', 'linewidth', 2);
%%% legends never die %%%
legend('$\delta_e = -30^{\circ}$',...
        '$\delta_e = -20^{\circ}$','$\delta_e = -10^{\circ}$','$\delta_e = -5^{\circ}$',...
        '$\delta_e = 0^{\circ}$','$\delta_e = 5^{\circ}$',...
        '$\delta_e = 10^{\circ}$','$\delta_e = 20^{\circ}$',...
        '$\max x_{cg}$', '$\min x_{cg}$', 'Wing~Stall', '$\min~ C_l$',...
        '$Tail~Stall~Positive~Angle$', '$Tail~Stall~Negative~Angle$', 'Interpreter','latex')
% Save plot %
print(figure1, 'TrimDiagram76.png','-dpng','-r300');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


