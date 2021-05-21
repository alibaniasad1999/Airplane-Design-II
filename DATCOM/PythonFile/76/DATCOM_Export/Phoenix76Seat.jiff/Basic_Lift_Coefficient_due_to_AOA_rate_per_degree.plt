#! gnuplot 
set title "Basic_Lift_Coefficient_due_to_AOA_rate_per_degree"
set xlabel ""
set ylabel "aero/coefficient/CLad"
set term png medium size 1024,768 crop
unset key

set out 'Basic_Lift_Coefficient_due_to_AOA_rate_per_degree.png'
plot \
'Basic_Lift_Coefficient_due_to_AOA_rate_per_degree.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
