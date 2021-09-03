set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "CWND CoDel PIE ECN OFF.png"
set key bottom
set title "Socket Statistics"
set xlabel "Time (Seconds)"
set ylabel "CWND (Packets)"
set xrange [0:40]
set yrange [0:2400]
set grid
plot 'ss_fqcodel.csv' every ::1 u 1:2 w l lw 3 title 'FQ-CoDel ECN OFF', 'ss_fqpie.csv' every ::1 u 1:2 w l lw 3 title 'FQ-PIE ECN OFF'