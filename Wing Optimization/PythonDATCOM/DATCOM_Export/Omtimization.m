AR_list = 8.0:0.1:10.9;
Sweep_list = 15.0:0.5:34.5;
formatSpecAR = '%.1f';
formatSpecSW = '%.1f';
lift_co_list = zeros(1, 1);
for i = 1:length(AR_list)
    for j = 1:length(Sweep_list)
        name = append('Phoenix50Seat-', 'AR',...
        num2str(AR_list(i), formatSpecAR), '-SW',...
        num2str(Sweep_list(j), formatSpecSW));
        lift_co_list(i, j) = RunDATCOM(name);
    end
end
        