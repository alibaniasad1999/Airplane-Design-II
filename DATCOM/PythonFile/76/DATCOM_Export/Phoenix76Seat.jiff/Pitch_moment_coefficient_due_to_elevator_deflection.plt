#! gnuplot 
set title "Pitch_moment_coefficient_due_to_elevator_deflection"
set xlabel ""
set ylabel "aero/coefficient/CmDe"
set term png medium size 1024,768 crop
unset key

set out 'Pitch_moment_coefficient_due_to_elevator_deflection.png'
plot \
'Pitch_moment_coefficient_due_to_elevator_deflection.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
