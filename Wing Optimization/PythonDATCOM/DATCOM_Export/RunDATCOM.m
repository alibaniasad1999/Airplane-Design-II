function lift_co = RunDATCOM(name)
run_name = append(name, '.dcm &');
system(run_name);
export_name = append(name, '.out');
aero = datcomimport(export_name);
data = aero{1};
%%% End Tasks %%%
!taskkill -f -im ac3dview.exe
!taskkill -f -im cmd.exe
%%% Delete file %%%
delete *.ac;
delete *.csv;
delete *.lfi;
delete *.xml
lift_co = data.cl;