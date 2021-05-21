#! gnuplot 
set title "Change_in_lift_due_to_ground_effect_factor"
set xlabel "aero/h_b-mac-ft"
set ylabel "aero/function/ground-effect-factor-lift"
set term png medium size 1024,768 crop
unset key

set out 'Change_in_lift_due_to_ground_effect_factor.png'
plot \
'Change_in_lift_due_to_ground_effect_factor.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
