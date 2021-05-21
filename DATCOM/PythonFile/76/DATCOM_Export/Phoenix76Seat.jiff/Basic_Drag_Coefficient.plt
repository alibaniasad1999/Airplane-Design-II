#! gnuplot 
set title "Basic_Drag_Coefficient"
set xlabel ""
set ylabel "aero/coefficient/CD"
set term png medium size 1024,768 crop
unset key

set out 'Basic_Drag_Coefficient.png'
plot \
'Basic_Drag_Coefficient.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
