Load_DATCOM_data;
%%% CL elevator %%%
Y_cl = data.dcl_sym;
X = -30:5:10; X = X';
Cl_elevator = fit(X,Y_cl,'poly1');
Cl_delta_elevator = Cl_elevator.p1;
%%% Cm elevator %%%
Y_cm = data.dcm_sym;
Cm_elevator = fit(X,Y_cm,'poly1');
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


