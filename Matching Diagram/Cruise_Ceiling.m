%%% Load Data
% Load high Criuse Ceiling phase Data from excel
Cruise_Ceiling_High = readtable('Ceiling Caculations.xlsx', 'sheet', 'High');
% Load Medium Criuse Ceiling phase Data from excel
Cruise_Ceiling_Medium = readtable('Ceiling Caculations.xlsx', 'sheet', 'Medium');
% Load Low Criuse Ceiling phase Data from excel
Cruise_Ceiling_Low = readtable('Ceiling Caculations.xlsx', 'sheet', 'Low');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num
% For all W/S For All W/S  WS - Phase of Aircraft - Technology Level - Seat Num
%%%%%%%%% 50 Seat %%%%%%%%%
% high %
WS_Cruise_Ceiling_high_50 = Cruise_Ceiling_High.W_S;
Cruise_Ceiling_high_50 = Cruise_Ceiling_High.mapT_W_50Seat_;
% mid %
WS_Cruise_Ceiling_mid_50 = Cruise_Ceiling_Medium.W_S;
Cruise_Ceiling_mid_50 = Cruise_Ceiling_Medium.mapT_W_50Seat_;
% mid %
WS_Cruise_Ceiling_low_50 = Cruise_Ceiling_Low.W_S;
Cruise_Ceiling_low_50 = Cruise_Ceiling_Low.mapT_W_50Seat_;
%%%%%%%%% 76 Seat %%%%%%%%%
% high %
WS_Cruise_Ceiling_high_76 = Cruise_Ceiling_High.W_S;
Cruise_Ceiling_high_76 = Cruise_Ceiling_High.mapT_W_76Seat_;
% mid %
WS_Cruise_Ceiling_mid_76 = Cruise_Ceiling_Medium.W_S;
Cruise_Ceiling_mid_76 = Cruise_Ceiling_Medium.mapT_W_76Seat_;
% mid %
WS_Cruise_Ceiling_low_76 = Cruise_Ceiling_Low.W_S;
Cruise_Ceiling_low_76 = Cruise_Ceiling_Low.mapT_W_76Seat_;