set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "Backlog CoDel PIE ECN ON.png"
set key bottom
set title "Traffic Control"
set xlabel "Time (Seconds)"
set ylabel "Backlog (Bytes)"
set xrange [0:40]
set yrange [0:3000000]
set grid
plot 'tc-codel-on.csv' every ::1 u 1:8 w l lw 3 title 'FQ-CoDel ECN ON', 'tc-pie-on.csv' every ::1 u 1:8 w l lw 3 title 'FQ-PIE ECN ON'