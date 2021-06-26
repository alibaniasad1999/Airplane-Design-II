% run DATCOM program %
system('Phoenix76Seat.dcm &');
% wait until csv file is ready %
while ~isfile('Phoenix76Seat.out')
    pause(0.1)
end 
while ~isfile('Phoenix76Seat.csv')
    pause(0.1)
end 
%%% read Data %%%
alldata = datcomimport('Phoenix76Seat.out', true, 0);
%%% read csv file %%%
csvData = readtable('Phoenix76Seat.csv');
data    = alldata{1};
%%% Delete file %%%
delete *.ac;
delete *.csv;
delete *.lfi;
delete *.xml;
delete *.dat;
delete *.out;
%%% End Tasks %%%
!taskkill -f -im cmd.exe
!taskkill -f -im ac3dview.exe
clc;