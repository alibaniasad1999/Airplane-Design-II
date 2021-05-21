#! gnuplot 
set title "Basic_Pitch_moment_coefficient"
set xlabel ""
set ylabel "aero/coefficient/Cm_basic"
set term png medium size 1024,768 crop
unset key

set out 'Basic_Pitch_moment_coefficient.png'
plot \
'Basic_Pitch_moment_coefficient.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
