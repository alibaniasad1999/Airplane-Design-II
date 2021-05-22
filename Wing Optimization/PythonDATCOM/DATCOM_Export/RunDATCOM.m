function [lift_co, drag_co] = RunDATCOM(name)
run_name = append(name, '.dcm &');
% run DATCOM program %
system(run_name);
export_name = append(name, '.csv');
% wait until csv file is ready %
while ~isfile(export_name)
    pause(0.1)
end
data = readtable(export_name);
%%% End Tasks %%%
!taskkill -f -im ac3dview.exe
!taskkill -f -im cmd.exe
% return data % 
lift_temp = data.Cd(3);
drag_temp = data.Cd(1);
lift_co = str2num(lift_temp{1});
drag_co = str2num(drag_temp{1});
%%% Delete file %%%
delete *.ac;
delete *.csv;
delete *.lfi;
delete *.xml;
delete *.out;