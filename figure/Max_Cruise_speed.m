%%% Load Data
% Load high seat Turn phase Data from exel
Max_Cruise_Speed_line_High = readtable('Max cruise speed.xlsx', 'sheet', 'High');
% Load medium seat Turn phase Data from exel
Max_Cruise_Speed_line_Medium = readtable('Max cruise speed.xlsx', 'sheet', 'Medium');
% Load medium seat Turn phase Data from exel
Max_Cruise_Speed_line_Low = readtable('Max cruise speed.xlsx', 'sheet', 'Low');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num
% For all W/S phase seat
%%%%%%%%% 50 Seat %%%%%%%%%
Max_Cruise_Speed_line_50 = Max_Cruise_Speed_line_High.Var1;
Max_Cruise_Speed_line_high_50 = Max_Cruise_Speed_line_High.Var2;
Max_Cruise_Speed_line_mid_50 = Max_Cruise_Speed_line_Medium.Var2;
Max_Cruise_Speed_line_low_50 = Max_Cruise_Speed_line_Low.Var2;
%%%%%%%%% 76 Seat %%%%%%%%%
Max_Cruise_Speed_line_76 = Max_Cruise_Speed_line_High.Var4;
Max_Cruise_Speed_line_high_76 = Max_Cruise_Speed_line_High.Var5;
Max_Cruise_Speed_line_mid_76 = Max_Cruise_Speed_line_Medium.Var5;
Max_Cruise_Speed_line_low_76 = Max_Cruise_Speed_line_Low.Var5;