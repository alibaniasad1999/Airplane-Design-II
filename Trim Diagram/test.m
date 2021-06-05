iH = -2;
theta_h = 0.3;
Cl_tail_stall = zeros(1);
Cm_tail_stall = zeros(1);
tail_stall_alpha = zeros(1);
for i = 1:length(delta_elevator)
tail_stall_alpha(i) = (-10 + epsilon_zero - iH - theta_h * delta_elevator(i))...
 / (1 - derivate_epsilon_zero);
Cl_tail_stall(i) = Cl_zero + Cl_alpha * tail_stall_alpha(i) +...
    Cl_delta_elevator * delta_elevator(i);
Cm_tail_stall(i) = Cm_zero_bar + (Cm_alpha / Cl_alpha) * Cl_tail_stall(i) +...
    Cm_delta_elevator_bar * delta_elevator(i);
end
tail_Stall_line = fit(Cm_tail_stall', Cl_tail_stall', 'poly1');
Cm_stall_axis = -0.4:0.01:0.4;
plot(Cm_stall_axis, tail_Stall_line.p1 * Cm_stall_axis +tail_Stall_line.p2, 'k:', 'linewidth', 2);