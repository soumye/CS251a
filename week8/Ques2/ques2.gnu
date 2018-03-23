clear
reset

# set term postscript eps enhanced color 24
# set output 'graph.eps'

set title 'Different Distribution'
set xlabel 'Values'
set ylabel 'Frequency'
set xtics border in scale 0,0 nomirror  offset character 0, 0, 0 
set style histogram errorbars gap 2 lw 1
set style data histograms
set boxwidth 1.5 relative
set style fill pattern 3 border -1

plot newhistogram "Normal" lt 2 fs pattern 1, 'normal.txt' using 2:3:4:xtic(1) t "Normal Distribution", \
newhistogram "Uniform" lt 2 fs pattern 2, 'uniform.txt' using 2:3:4:xtic(1) t "Uniform Distribution"