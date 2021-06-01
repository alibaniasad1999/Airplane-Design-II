% run DATCOM program %
system('Phoenix50Seat.dcm &');
% wait until csv file is ready %
while ~isfile('Phoenix50Seat.out')
    pause(0.1)
end
%%% read Data %%%
alldata = datcomimport('Phoenix50Seat.out', true, 0);
data    = alldata{1};
%%% Delete file %%%
delete *.ac;
delete *.csv;
delete *.lfi;
delete *.xml;
delete *.dat;
%%% End Tasks %%%
!taskkill -f -im cmd.exe
!taskkill -f -im ac3dview.exe
clc;