#! gnuplot 
set title "Yaw_moment_coefficient_due_to_sideslip_per_degree"
set xlabel ""
set ylabel "aero/coefficient/Cnb"
set term png medium size 1024,768 crop
unset key

set out 'Yaw_moment_coefficient_due_to_sideslip_per_degree.png'
plot \
'Yaw_moment_coefficient_due_to_sideslip_per_degree.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
