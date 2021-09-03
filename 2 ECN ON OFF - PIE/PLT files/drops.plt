set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "Drops PIE ECN ON OFF.png"
set key bottom
set title "Traffic Control"
set xlabel "Time (Seconds)"
set ylabel "Drops (Packets)"
set xrange [0:40]
set yrange [0:14]
set grid
plot 'tc_off.csv' every ::1 u 1:13 w l lw 3 title 'FQ-PIE ECN OFF', 'tc_on.csv' every ::1 u 1:13 w l lw 3 title 'FQ-PIE ECN ON'