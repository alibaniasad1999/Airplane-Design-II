clear;
clc;
%%% load data %%%
seven_four_seven_low_cruise;
%%% ploter %%%
%%% Cm vs Cl %%%
delta_elevator = -30:5:15;
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
%axis([-0.4 0.4 0 2]);
set ( gca, 'xdir', 'reverse' );
%%% CG boundry %%%
%{
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
tail_stall_alpha = (10 + epsilon_zero) / (1 - derivate_epsilon_zero);
Cl_tail_stall = zeros(1);
Cm_tail_stall = zeros(1);
for i = 1:length(delta_elevator)
Cl_tail_stall(i) = Cl_zero + Cl_alpha * tail_stall_alpha +...
    Cl_delta_elevator * delta_elevator(i);
Cm_tail_stall(i) = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl_stall(i) +...
    Cm_delta_elevator_bar * delta_elevator(i);
end
tail_Stall_line = fit(Cm_tail_stall', Cl_tail_stall', 'poly1');
Cm_stall_axis = -0.4:0.01:0.4;
plot(Cm_stall_axis, tail_Stall_line.p1 * Cm_stall_axis + tail_Stall_line.p2, 'k:', 'linewidth', 2);
%}
%%% legends never die %%%
legend('$\delta_e = -30^{\circ}$','$\delta_e = -25^{\circ}$',...
        '$\delta_e = -20^{\circ}$','$\delta_e = -15^{\circ}$','$\delta_e = -10^{\circ}$','$\delta_e = -5^{\circ}$',...
        '$\delta_e = 0^{\circ}$','$\delta_e = 5^{\circ}$',...
        '$\delta_e = 10^{\circ}$','$\delta_e = 15^{\circ}$',...
        'Interpreter','latex')