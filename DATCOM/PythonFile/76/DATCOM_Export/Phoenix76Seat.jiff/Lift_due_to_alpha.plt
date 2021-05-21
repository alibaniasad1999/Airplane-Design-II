#! gnuplot 
set title "Lift_due_to_alpha"
set xlabel ""
set ylabel "aero/coefficient/CLwbh"
set term png medium size 1024,768 crop
unset key

set out 'Lift_due_to_alpha.png'
plot \
'Lift_due_to_alpha.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
