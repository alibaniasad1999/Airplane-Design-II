%%% Load Data
% Load high Criuse Ceiling phase Data from excel
Absolute_Ceiling_High = readtable('Ceiling Caculations.xlsx', 'sheet', 'Abs High');
% Load Medium Criuse Ceiling phase Data from excel
Absolute_Cruise_Ceiling_Medium = readtable('Ceiling Caculations.xlsx', 'sheet', 'Abs Medium');
% Load Low Criuse Ceiling phase Data from excel
Absolute_Cruise_Ceiling_Low = readtable('Ceiling Caculations.xlsx', 'sheet', 'Abs Low');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num
% For all W/S For All W/S  WS - Phase of Aircraft - Technology Level - Seat Num
%%%%%%%%% 50 Seat %%%%%%%%%
% high %
WS_Absolute_Cruise_Ceiling_high_50 = Absolute_Cruise_Ceiling_High.W_S;
Absolute_Cruise_Ceiling_high_50 = Absolute_Cruise_Ceiling_High.mapT_W_50Seat_;
% mid %
WS_Absolute_Cruise_Ceiling_mid_50 = Absolute_Cruise_Ceiling_Medium.W_S;
Absolute_Cruise_Ceiling_mid_50 = Absolute_Cruise_Ceiling_Medium.mapT_W_50Seat_;
% mid %
WS_Absolute_Cruise_Ceiling_low_50 = Absolute_Cruise_Ceiling_Low.W_S;
Absolute_Cruise_Ceiling_low_50 = Absolute_Cruise_Ceiling_Low.mapT_W_50Seat_;
%%%%%%%%% 76 Seat %%%%%%%%%
% high %
WS_Absolute_Cruise_Ceiling_high_76 = Absolute_Cruise_Ceiling_High.W_S;
Absolute_Cruise_Ceiling_high_76 = Absolute_Cruise_Ceiling_High.mapT_W_76Seat_;
% mid %
WS_Absolute_Cruise_Ceiling_mid_76 = Absolute_Cruise_Ceiling_Medium.W_S;
Absolute_Cruise_Ceiling_mid_76 = Absolute_Cruise_Ceiling_Medium.mapT_W_76Seat_;
% mid %
WS_Absolute_Cruise_Ceiling_low_76 = Absolute_Cruise_Ceiling_Low.W_S;
Absolute_Cruise_Ceiling_low_76 = Absolute_Cruise_Ceiling_Low.mapT_W_76Seat_;