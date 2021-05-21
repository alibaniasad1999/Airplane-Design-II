#! gnuplot 
set title "Side_Force_coefficient_due_to_Sideslip_per_degree"
set xlabel ""
set ylabel "aero/coefficient/Cyb"
set term png medium size 1024,768 crop
unset key

set out 'Side_Force_coefficient_due_to_Sideslip_per_degree.png'
plot \
'Side_Force_coefficient_due_to_Sideslip_per_degree.dat' w linespoints lw 2
set out
set term png medium size 1024,768 crop
