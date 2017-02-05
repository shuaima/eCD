#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced "Times-Roman" 12
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
set yr [0:10]
set ytics ("0" 0, "2" 2, "4" 4, "6" 6,  "8" 8, "10" 10)
set ylabel "total # of citations (x10^7)" offset 1.3
set xlabel "# of years after publication"
set key at graph 0.98, 0.42
#plot "citation.tab" using ($1):($2)/10000000 title '' with linespoints linetype 4 pointtype 6 lc rgb "red" lw 2  
plot "citation.tab" using ($1):($2)/10000000 title '' with linespoints linetype 4 pointtype 6 lc rgb '#0060ad' lw 3  

