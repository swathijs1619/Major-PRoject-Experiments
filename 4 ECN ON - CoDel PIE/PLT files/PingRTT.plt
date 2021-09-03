set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "Ping-RTT CoDel PIE ECN ON.png"
set key bottom
set title "Ping"
set xlabel "Time (Seconds)"
set ylabel "RTT (ms)"
set xrange [0:40]
set yrange [0:9]
set grid
plot 'ping-codel-on.csv' every ::1 u 1:2 w l lw 3 title 'FQ-CoDel ECN ON', 'ping-pie-on.csv' every ::1 u 1:2 w l lw 3 title 'FQ-PIE ECN ON'