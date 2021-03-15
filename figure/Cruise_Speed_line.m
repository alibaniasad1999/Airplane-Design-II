%%% Load Data
% Load high seat Turn phase Data from exel
Cruise_Speed_line_High = readtable('Cruise Speed line.xlsx', 'sheet', 'High');
% Load medium seat Turn phase Data from exel
Cruise_Speed_line_Medium = readtable('Cruise Speed line.xlsx', 'sheet', 'Medium');
% Load medium seat Turn phase Data from exel
Cruise_Speed_line_Low = readtable('Cruise Speed line.xlsx', 'sheet', 'Low');
%%%%%%% Using Data %%%%%%%
% For All T/W Phase of Aircraft - Technology Level - Seat Num
% For all W/S phase seat
%%%%%%%%% 50 Seat %%%%%%%%%
Cruise_Speed_line_50 = Cruise_Speed_line_High.Var1;
Cruise_Speed_line_high_50 = Cruise_Speed_line_High.Var2;
Cruise_Speed_line_mid_50 = Cruise_Speed_line_Medium.Var2;
Cruise_Speed_line_low_50 = Cruise_Speed_line_Low.Var2;
%%%%%%%%% 76 Seat %%%%%%%%%
Cruise_Speed_line_76 = Cruise_Speed_line_High.Var4;
Cruise_Speed_line_high_76 = Cruise_Speed_line_High.Var5;
Cruise_Speed_line_mid_76 = Cruise_Speed_line_Medium.Var5;
Cruise_Speed_line_low_76 = Cruise_Speed_line_Low.Var5;