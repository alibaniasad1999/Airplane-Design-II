AR_list = 8.0:0.1:10.9;
Sweep_list = 15.0:39.0;
formatSpecAR = '%.1f';
formatSpecSW = '%.f';
lift_co_list = zeros(1, 1);
for i = 1:length(AR_list)
    for j = 1:length(Sweep_list)
        name = append('Phoenix50Seat-', 'AR',...
        num2str(AR_list(i), formatSpecAR), '-SW',...
        num2str(Sweep_list(i), formatSpecSW), '.cdm');
        lift_co_list(i, j) = RunDATCOM(name);
    end
end
        