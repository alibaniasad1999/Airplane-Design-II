% run DATCOM program %
system('Phoenix50Seat.dcm &');
% wait until csv file is ready %
while ~isfile('Phoenix50Seat.out')
    pause(0.1)
end 
while ~isfile('Phoenix50Seat.csv')
    pause(0.1)
end 
%%% read Data %%%
alldata = datcomimport('Phoenix50Seat.out', true, 0);
%%% read csv file %%%
csvData = readtable('Phoenix50Seat.csv');
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