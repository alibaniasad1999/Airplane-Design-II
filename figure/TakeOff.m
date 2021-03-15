%%% Load Data %%%
%%%%%%%%%%%%%%%% 50 Seat %%%%%%%%%%%%%%%%
% Load 50 seat TakeOff Sea level phase Data from exel
TakeOff_SL_Data50 = readtable('TakeOff.xlsx', 'sheet', '50 seat(sea level) (2)');
% Load 50 seat TakeOff 5000 ft phase Data from exel
TakeOff_5000ft_Data50 = readtable('TakeOff.xlsx', 'sheet', '50 seat(5000ft)');
%%%%%%%%%%%%%%%% 76 Seat %%%%%%%%%%%%%%%%
% Load 76 seat TakeOff Sea level phase Data from exel
TakeOff_SL_Data76 = readtable('TakeOff.xlsx', 'sheet', '76 seat(sea level)');
% Load 76 seat TakeOff 5000 ft phase Data from exel
TakeOff_5000ft_Data76 = readtable('TakeOff.xlsx', 'sheet', '76 seat(5000ft)');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num - alltitude
% For all W/S phase - alltitude - seat
%%%%%%%%% 50 Seat Sea Level %%%%%%%%%
TakeOff_SL_50 = TakeOff_SL_Data50.W_S;
WS_TakeOff_high_50_SL = TakeOff_SL_Data50.W_S;
WS_TakeOff_mid_50_SL = TakeOff_SL_Data50.W_S;
WS_TakeOff_low_50_SL = TakeOff_SL_Data50.W_S;
TakeOff_high_50_SL = TakeOff_SL_Data50.T_W;
TakeOff_mid_50_SL = TakeOff_SL_Data50.T_W_1;
TakeOff_low_50_SL = TakeOff_SL_Data50.T_W_2;
%%%%%%%%% 50 Seat 5000 ft %%%%%%%%%
TakeOff_5000ft_50 = TakeOff_SL_Data50.W_S;
WS_TakeOff_high_50_5000ft = TakeOff_SL_Data50.W_S;
WS_TakeOff_mid_50_5000ft = TakeOff_SL_Data50.W_S;
WS_TakeOff_low_50_5000ft = TakeOff_SL_Data50.W_S;
TakeOff_high_50_5000ft = TakeOff_5000ft_Data50.T_W;
TakeOff_mid_50_5000ft = TakeOff_5000ft_Data50.T_W_1;
TakeOff_low_50_5000ft = TakeOff_5000ft_Data50.T_W_2;
%%%%%%%%% 76 Seat Sea Level %%%%%%%%%
TakeOff_SL_76 = TakeOff_SL_Data76.W_S;
WS_TakeOff_high_76_SL = TakeOff_SL_Data76.W_S;
WS_TakeOff_mid_76_SL = TakeOff_SL_Data76.W_S;
WS_TakeOff_low_76_SL = TakeOff_SL_Data76.W_S;
TakeOff_high_76_SL = TakeOff_SL_Data76.T_W;
TakeOff_mid_76_SL = TakeOff_SL_Data76.T_W_1;
TakeOff_low_76_SL = TakeOff_SL_Data76.T_W_2;
%%%%%%%%% 76 Seat 5000 ft %%%%%%%%%
TakeOff_5000ft_76 = TakeOff_SL_Data76.W_S;
WS_TakeOff_high_76_5000ft = TakeOff_SL_Data76.W_S;
WS_TakeOff_mid_76_5000ft = TakeOff_SL_Data76.W_S;
WS_TakeOff_low_76_5000ft = TakeOff_SL_Data76.W_S;
TakeOff_high_76_5000ft = TakeOff_5000ft_Data76.T_W;
TakeOff_mid_76_5000ft = TakeOff_5000ft_Data76.T_W_1;
TakeOff_low_76_5000ft = TakeOff_5000ft_Data76.T_W_2;

