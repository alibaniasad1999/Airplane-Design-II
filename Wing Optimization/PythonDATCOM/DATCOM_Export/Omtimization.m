AR_list = 8.0:.2:11.0;
Sweep_list = 20.0:1.0:35;
formatSpecAR = '%.1f';
formatSpecSW = '%.1f';
lift_co_list = zeros(1, 1);
drag_co_list = zeros(1, 1);
for i = 1:length(AR_list)
    for j = 1:length(Sweep_list)
        name = append('Phoenix50Seat-taper0.30', 'AR',...
        num2str(AR_list(i), formatSpecAR), '-SW',...
        num2str(Sweep_list(j), formatSpecSW));
        [cl, cd] = RunDATCOM(name);
        lift_co_list(i, j) = cl;
        drag_co_list(i, j) = cd;
        fprintf('AR = %f, Sweep = %f\n', AR_list(i), Sweep_list(j));
    end
end
        