#! gnuplot 
set title "Change_in_drag_due_to_ground_effect"
set xlabel "aero/h_b-mac-ft"
set ylabel "aero/function/ground-effect-factor-drag"
set term png medium size 1024,768 crop
unset key

set out 'Change_in_drag_due_to_ground_effect.png'
plot \
'Change_in_drag_due_to_ground_effect.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
