%%% Load Data %%%
LoadData;
%%%%%%%%%%%%%%%%%%%%%%% Medium 50 %%%%%%%%%%%%%%%%%%%%%%%
figure1 = figure();
hold;
axis([20 150 0 0.9])
%%%% Turn %%%%
plot(WS_Turn_mid_76, Turn_mid_76);
%%%% TakeOff %%%%
% Sea Level %
plot(WS_TakeOff_mid_76_SL, TakeOff_mid_76_SL);
% 5000 ft %
plot(WS_TakeOff_mid_76_5000ft, TakeOff_mid_76_5000ft);
%%% Cruise Speed Line %%%
plot(WS_Cruise_Speed_line_mid_76, Cruise_Speed_line_mid_76);
%%% Max Cruise Speed %%%
plot(WS_Max_Cruise_Speed_line_mid_76, Max_Cruise_Speed_line_mid_76)
%%% Stall %%%
% Stall Landing Sea Level %
plot(WS_Stall_Landing_mid_76_SL, Stall_Landing_mid_76_SL)
% Stall Landing 5000 ft %
plot(WS_Stall_Landing_mid_76_5000ft, Stall_Landing_mid_76_5000ft)
% Stall TakeOff Sea Level %
plot(WS_Stall_TakeOff_mid_76_SL, Stall_TakeOff_mid_76_SL)
% Stall Landing 5000 ft %
plot(WS_Stall_TakeOff_mid_76_5000ft, Stall_TakeOff_mid_76_5000ft)
%%% Landing %%%
% Sea Level %
plot(WS_Landing_mid_76_SL, Landing_mid_76_SL)
% 5000 ft %
plot(WS_Landing_mid_76_5000ft, Landing_mid_76_5000ft)
%%% Climb %%%
% All Engine Opration %
plot(WS_Climb_AOE_mid_76, Climb_AOE_mid_76);
% OEI retracted %
plot(WS_Climb_OEI_R_mid_76, Climb_OEI_R_mid_76)
% OEI Open landing Gear % 
plot(WS_Climb_OEI_O_mid_76, Climb_OEI_O_mid_76)
%%% Ceiling %%%
% Cruise %
plot(WS_Cruise_Ceiling_mid_76, Cruise_Ceiling_mid_76);
% Absolute %
plot(WS_Absolute_Cruise_Ceiling_mid_76, Absolute_Cruise_Ceiling_mid_76)
%%%%%%%%%%%%% Legend %%%%%%%%%%%%%
legend('Turn Maneuver', 'Take Off Sea Level', 'Take Off 5000 ft', 'Cruise Speed Line', 'Max Cruise Speed', ...
    'Stall Landing Sea Level', 'Stall Landing 5000 ft', 'Stall Take Off Sea Level', 'Stall Take Off 5000 ft', ...
    'Landing Sea Level', 'Landing 5000 ft', 'Climb All Engine Operating', 'Climb OEI retracted', ...
    'Climb OEI Open Landing Gear', 'Cruise Ceiling', 'Absolute Cruise Ceiling');
%%%%%%%%%%%%% Label %%%%%%%%%%%%%
xlabel('W/S', 'Interpreter', 'latex');
ylabel('T/W', 'Interpreter', 'latex');

print(figure1, 'MachingDiagram76.png','-dpng','-r1500');