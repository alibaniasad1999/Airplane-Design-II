#! gnuplot 
set title "Yaw_Moment_coefficient_due_to_yaw_rate_per_degree"
set xlabel ""
set ylabel "aero/coefficient/Cnr"
set term png medium size 1024,768 crop
unset key

set out 'Yaw_Moment_coefficient_due_to_yaw_rate_per_degree.png'
plot \
'Yaw_Moment_coefficient_due_to_yaw_rate_per_degree.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
