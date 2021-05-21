#! gnuplot 
set title "Pitch_moment_coefficient_due_to_pitch_rate_per_degree"
set xlabel ""
set ylabel "aero/coefficient/Cmq"
set term png medium size 1024,768 crop
unset key

set out 'Pitch_moment_coefficient_due_to_pitch_rate_per_degree.png'
plot \
'Pitch_moment_coefficient_due_to_pitch_rate_per_degree.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
