%clc;
%clear;
Load_DATCOM_data76;
%%% CL elevator %%%
csvArrayData = table2array(csvData);
Y_cl = zeros(1);
for i = 1:length(data.delta)
    finder = find(csvArrayData == data.delta(i));
    Y_cl(i) = csvArrayData(finder(1), 2);
end
X = data.delta; X = X';
Cl_elevator = fit(X,Y_cl','poly1');
Cl_delta_elevator = Cl_elevator.p1;
%%% Cm elevator %%%
Y_cm = zeros(1);
for i = 1:length(data.delta)
    finder = find(csvArrayData == data.delta(i));
    Y_cm(i) = csvArrayData(finder(2), 2);
end
Cm_elevator = fit(X,Y_cm','poly1');
Cm_delta_elevator = Cm_elevator.p1;
%%% Cl zero %%%
zero_index = find(data.alpha == 0);
Cl_zero = data.cl(zero_index);
%%% Cm zero %%%
Cm_zero = data.cm(zero_index);
%%% Cm alpha %%%
cruise_alpha_index = find(data.alpha == 2);
Cl_alpha = data.cla(cruise_alpha_index);
%%% Cm alpha %%%
Cm_alpha = data.cma(cruise_alpha_index);
%%% Cm zero bar %%%
Cm_zero_bar = Cm_zero - (Cm_alpha / Cl_alpha) * Cl_zero;
%%% Cm delta elevator bar %%%
Cm_delta_elevator_bar = Cm_delta_elevator - (Cm_alpha / Cl_alpha) * Cl_delta_elevator;
%%% downWash %%%
epsilon_zero = data.eps(zero_index);
derivate_epsilon_zero = data.depsdalp(zero_index);
Cl_iH = 0;
Cm_iH = 0;
iH = 0;
x_cg = 39.208;
x_wing = 28.75;
wing_chord = 15.5;
x_cg_max = 42.33;
x_cg_min = 38.92;
x_cg_bar = (x_cg - x_wing) / wing_chord;
x_cg = x_cg_bar;

