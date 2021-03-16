%%% Load Data %%%
%%%%%%%%%%%%%%%% 50 Seat %%%%%%%%%%%%%%%%
%%%% Low %%%%
Climb_Low_Data50 = readtable('Climb.xlsx', 'sheet', 'low 50');
%%%% Medium %%%%
Climb_mid_Data50 = readtable('Climb.xlsx', 'sheet', 'mid 50');
%%%% High %%%%
Climb_high_Data50 = readtable('Climb.xlsx', 'sheet', 'high 50');
%%%%%%%%%%%%%%%% 76 Seat %%%%%%%%%%%%%%%%
%%%% Low %%%%
Climb_Low_Data76 = readtable('Climb.xlsx', 'sheet', 'low 76');
%%%% Medium %%%%
Climb_mid_Data76 = readtable('Climb.xlsx', 'sheet', 'mid 76');
%%%% High %%%%
Climb_high_Data76 = readtable('Climb.xlsx', 'sheet', 'high 76');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num
% For all W/S For All W/S  WS - Phase of Aircraft - Technology Level - Seat Num
%%%%%%%%% 50 Seat Sea Level %%%%%%%%%
% Low %
WS_Climb_AOE_low_50 = Climb_Low_Data50.W_S;
WS_Climb_OEI_R_low_50 = Climb_Low_Data50.W_S;
WS_Climb_OEI_O_low_50 = Climb_Low_Data50.W_S;
% All Engine Opration %
Climb_AOE_low_50 = Climb_Low_Data50.AOE;
% OEI retracted %
Climb_OEI_R_low_50 = Climb_Low_Data50.x121Retracted;
% OEI Open landing Gear % 
Climb_OEI_O_low_50 = Climb_Low_Data50.x121OpenLandingGear;
% Medium %
WS_Climb_AOE_mid_50 = Climb_mid_Data50.W_S;
WS_Climb_OEI_R_mid_50 = Climb_mid_Data50.W_S;
WS_Climb_OEI_O_mid_50 = Climb_mid_Data50.W_S;
% All Engine Opration %
Climb_AOE_mid_50 = Climb_mid_Data50.AOE;
% OEI retracted %
Climb_OEI_R_mid_50 = Climb_mid_Data50.x121Retracted;
% OEI Open landing Gear % 
Climb_OEI_O_mid_50 = Climb_mid_Data50.x121OpenLandingGear;
% High %
WS_Climb_AOE_high_50 = Climb_high_Data50.W_S;
WS_Climb_OEI_R_high_50 = Climb_high_Data50.W_S;
WS_Climb_OEI_O_high_50 = Climb_high_Data50.W_S;
% All Engine Opration %
Climb_AOE_high_50 = Climb_high_Data50.AOE;
% OEI retracted %
Climb_OEI_R_high_50 = Climb_high_Data50.x121Retracted;
% OEI Open landing Gear % 
Climb_OEI_O_high_50 = Climb_high_Data50.x121OpenLandingGear;
%%%%%%%%% 76 Seat Sea Level %%%%%%%%%
% Low %
WS_Climb_AOE_low_76 = Climb_Low_Data76.W_S;
WS_Climb_OEI_R_low_76 = Climb_Low_Data76.W_S;
WS_Climb_OEI_O_low_76 = Climb_Low_Data76.W_S;
% All Engine Opration %
Climb_AOE_low_76 = Climb_Low_Data76.AOE;
% OEI retracted %
Climb_OEI_R_low_76 = Climb_Low_Data76.x121Retracted;
% OEI Open landing Gear % 
Climb_OEI_O_low_76 = Climb_Low_Data76.x121OpenLandingGear;
% Medium %
WS_Climb_AOE_mid_76 = Climb_mid_Data76.W_S;
WS_Climb_OEI_R_mid_76 = Climb_mid_Data76.W_S;
WS_Climb_OEI_O_mid_76 = Climb_mid_Data76.W_S;
% All Engine Opration %
Climb_AOE_mid_76 = Climb_mid_Data76.AOE;
% OEI retracted %
Climb_OEI_R_mid_76 = Climb_mid_Data76.x121Retracted;
% OEI Open landing Gear % 
Climb_OEI_O_mid_76 = Climb_mid_Data76.x121OpenLandingGear;
% High %
WS_Climb_AOE_high_76 = Climb_high_Data76.W_S;
WS_Climb_OEI_R_high_76 = Climb_high_Data76.W_S;
WS_Climb_OEI_O_high_76 = Climb_high_Data76.W_S;
% All Engine Opration %
Climb_AOE_high_76 = Climb_high_Data76.AOE;
% OEI retracted %
Climb_OEI_R_high_76 = Climb_high_Data76.x121Retracted;
% OEI Open landing Gear % 
Climb_OEI_O_high_76 = Climb_high_Data76.x121OpenLandingGear;