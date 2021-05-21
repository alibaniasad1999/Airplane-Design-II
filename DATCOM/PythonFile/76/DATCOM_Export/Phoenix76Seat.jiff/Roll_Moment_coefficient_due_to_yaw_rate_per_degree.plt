#! gnuplot 
set title "Roll_Moment_coefficient_due_to_yaw_rate_per_degree"
set xlabel ""
set ylabel "aero/coefficient/Clr"
set term png medium size 1024,768 crop
unset key

set out 'Roll_Moment_coefficient_due_to_yaw_rate_per_degree.png'
plot \
'Roll_Moment_coefficient_due_to_yaw_rate_per_degree.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
