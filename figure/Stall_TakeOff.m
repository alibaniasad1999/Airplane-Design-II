%%% Load Data
%%%%%%%%%%%%%%%% 50 Seat %%%%%%%%%%%%%%%%
% Load 50 seat Stall TakeOff Sea level phase Data from exel
Stall_TakeOff_SL_Data50 = readtable('Stall Velocity TakeOff.xlsx', 'sheet', '50 seat(SL)');
% Load 50 seat Stall TakeOff 5000 ft phase Data from exel
Stall_TakeOff_5000ft_Data50 = readtable('Stall Velocity TakeOff.xlsx', 'sheet', '50 seat(5000ft)');
%%%%%%%%%%%%%%%% 76 Seat %%%%%%%%%%%%%%%%
% Load 76 seat Stall TakeOff Sea level phase Data from exel
Stall_TakeOff_SL_Data76 = readtable('Stall Velocity TakeOff.xlsx', 'sheet', '76 seat(SL)');
% Load 76 seat Stall TakeOff 5000 ft phase Data from exel
Stall_TakeOff_5000ft_Data76 = readtable('Stall Velocity TakeOff.xlsx', 'sheet', '76 seat(5000ft)');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num - alltitude
% For all W/S phase - alltitude - seat
%%%%%%%%% 50 Seat Sea Level %%%%%%%%%
Stall_TakeOff_SL_50 = Stall_TakeOff_SL_Data50.W_S;
Stall_TakeOff_high_50_SL = Stall_TakeOff_SL_Data50.T_W;
Stall_TakeOff_mid_50_SL = Stall_TakeOff_SL_Data50.T_W_1;
Stall_TakeOff_low_50_SL = Stall_TakeOff_SL_Data50.T_W_2;
%%%%%%%%% 50 Seat 5000 ft %%%%%%%%%
Stall_TakeOff_5000ft_50 = Stall_TakeOff_SL_Data50.W_S;
Stall_TakeOff_high_50_5000ft = Stall_TakeOff_5000ft_Data50.T_W;
Stall_TakeOff_mid_50_5000ft = Stall_TakeOff_5000ft_Data50.T_W_1;
Stall_TakeOff_low_50_5000ft = Stall_TakeOff_5000ft_Data50.T_W_2;
%%%%%%%%% 76 Seat Sea Level %%%%%%%%%
Stall_TakeOff_SL_76 = Stall_TakeOff_SL_Data76.W_S;
Stall_TakeOff_high_76_SL = Stall_TakeOff_SL_Data76.T_W;
Stall_TakeOff_mid_76_SL = Stall_TakeOff_SL_Data76.T_W_1;
Stall_TakeOff_low_76_SL = Stall_TakeOff_SL_Data76.T_W_2;
%%%%%%%%% 76 Seat 5000 ft %%%%%%%%%
Stall_TakeOff_5000ft_76 = Stall_TakeOff_SL_Data76.W_S;
Stall_TakeOff_high_76_5000ft = Stall_TakeOff_5000ft_Data76.T_W;
Stall_TakeOff_mid_76_5000ft = Stall_TakeOff_5000ft_Data76.T_W_1;
Stall_TakeOff_low_76_5000ft = Stall_TakeOff_5000ft_Data76.T_W_2;

