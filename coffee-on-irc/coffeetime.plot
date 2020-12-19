reset
unset key

set terminal pngcairo size 900,600 enhanced font "Verdana, 10"
set output "coffee.png"

unset title

set format x ''

set grid ytics lt 0 lw 2 lc rgb "#bbaa00"

set title "When is Coffee Time?"
set ylabel "Time"

set ydata time
set timefmt "%H:%M"
set yrange ["07:00":"23:00"] reverse

set key left top

plot "coffee.time" using 1 with points pt 5 ps 2 lc rgb '#a1421a' title 'coffee'
