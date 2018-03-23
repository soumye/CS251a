clear
reset
set key top center

# set term postscript eps enhanced color 24
# set output 'graph.eps'
set title 'Comparision of {/Symbol a} and beta'

set xlabel 'Groups'
set ylabel 'Time'
set xtics border in scale 0,0 nomirror offset character 0, 0, 0 

set style histogram errorbars gap 2 lw 1
set style data histograms
set boxwidth 1 relative
set style fill pattern 1 border -1

plot newhistogram "Group I" lt 2 fs pattern 1, 'normal1.txt' using 2:3:4:xtic(1) t "Data 1",\
 'uniform1.txt' using 2:3:4:xtic(1) t "Data 2",\
 newhistogram "Group II" lt 2 fs pattern 1, 'normal2.txt' using 2:3:4:xtic(1) notitle ,\
 'uniform2.txt' using 2:3:4:xtic(1) notitle 
