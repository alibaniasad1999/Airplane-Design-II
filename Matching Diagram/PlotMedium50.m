%%% Load Data %%%
LoadData;
%%%%%%%%%%%%%%%%%%%%%%% Medium 50 %%%%%%%%%%%%%%%%%%%%%%%
figure;
hold;
axis([20 150 0 0.9])
%%%% Turn %%%%
plot(WS_Turn_mid_50, Turn_mid_50);
%%%% TakeOff %%%%
% Sea Level %
plot(WS_TakeOff_mid_50_SL, TakeOff_mid_50_SL);
% 5000 ft %
plot(WS_TakeOff_mid_50_5000ft, TakeOff_mid_50_5000ft);
%%% Cruise Speed Line %%%
plot(WS_Cruise_Speed_line_mid_50, Cruise_Speed_line_mid_50);
%%% Max Cruise Speed %%%
plot(WS_Max_Cruise_Speed_line_mid_50, Max_Cruise_Speed_line_mid_50)
%%% Stall %%%
% Stall Landing Sea Level %
plot(WS_Stall_Landing_mid_50_SL, Stall_Landing_mid_50_SL)
% Stall Landing 5000 ft %
plot(WS_Stall_Landing_mid_50_5000ft, Stall_Landing_mid_50_5000ft)
% Stall TakeOff Sea Level %
plot(WS_Stall_TakeOff_mid_50_SL, Stall_TakeOff_mid_50_SL)
% Stall Landing 5000 ft %
plot(WS_Stall_TakeOff_mid_50_5000ft, Stall_TakeOff_mid_50_5000ft)
%%% Landing %%%
% Sea Level %
plot(WS_Landing_mid_50_SL, Landing_mid_50_SL)
% 5000 ft %
plot(WS_Landing_mid_50_5000ft, Landing_mid_50_5000ft)
%%%%%%%%%%%%% Legend %%%%%%%%%%%%%
legend('Turn Maneuver', 'Take Off Sea Level', 'Take Off 5000 ft', 'Cruise Speed Line', 'Max Cruise Speed', ...
    'Stall Landing Sea Level', 'Stall Landing 5000 ft', 'Stall Take Off Sea Level', 'Stall Take Off 5000 ft', ...
    'Landing Sea Level', 'Landing 5000 ft');
%%%%%%%%%%%%% Label %%%%%%%%%%%%%
xlabel('W/S', 'Interpreter', 'latex');
ylabel('T/W', 'Interpreter', 'latex');

