%%% Load Data %%%
% Load 50 seat Turn phase Data from exel
TurnData50 = readtable('Turn Maneuver.xlsx', 'sheet', '50 seat');
% Load 76 seat Turn phase Data from exel
TurnData76 = readtable('Turn Maneuver.xlsx', 'sheet', '76 seat');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num
% For all W/S phase seat
%%%%%%%%% 50 Seat %%%%%%%%%
Turn_50 = TurnData50.W_S;
WS_Turn_low_50 = TurnData50.W_S;
WS_Turn_mid_50 = TurnData50.W_S;
WS_Turn_high_50 = TurnData50.W_S;
Turn_low_50 = TurnData50.T_W;
Turn_mid_50 = TurnData50.T_W_1;
Turn_high_50 = TurnData50.T_W_2;
%%%%%%%%% 76 Seat %%%%%%%%%
Turn_76 = TurnData76.W_S;
WS_Turn_low_76 = TurnData76.W_S;
WS_Turn_mid_76 = TurnData76.W_S;
WS_Turn_high_76 = TurnData76.W_S;
Turn_low_76 = TurnData76.T_W;
Turn_mid_76 = TurnData76.T_W_1;
Turn_high_76 = TurnData76.T_W_2;
