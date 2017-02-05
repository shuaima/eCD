set terminal postscript portrait enhanced color "Times-Roman" 12
set output "citation.eps"
set size 0.9, 0.25
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xtic scale 0.5
set ytic scale 0.8
set xtics 0,1,20
set yr [0:25]
set ytics ("0" 0, "5" 5, "10" 10, "15" 15,  "20" 20, "25" 25)
#set ylabel "total # of citations (x10^7)" offset 1.3
set ylabel "% of total citations" offset 1.0
set xlabel "# of years after publication"
set key at graph 1, 0.92
plot "citation.tab" using ($1):($2)*100 title 'AAN' with linespoints linetype 1 pointtype 6 lc 1 lw 2,\
"citation.tab" using ($1):($4)*100 title 'MAG' with linespoints linetype 2 pointtype 2 lc rgb "blue" lw 2 ,\
"citation.tab" using ($1):($3)*100 title 'DBLP' with linespoints linetype 0 pointtype 4 lc rgb "red" lw 4
