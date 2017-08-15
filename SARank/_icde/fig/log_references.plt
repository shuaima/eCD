set terminal postscript portrait enhanced color "Times-Roman" 14
set output "log_references.eps"
set size 0.9, 0.25
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xtic scale 0.5
set ytic scale 0.8
#set xtics 0,1,20
set yr [0:16]
set xr [1996:2016]
set ytics ("0" 0, "4" 4, "8" 8, "12" 12, "16" 16)
set xtics ("1996" 1996, "2000" 2000, "2004" 2004, "2008" 2008, "2012" 2012, "2016" 2016)
#set ylabel "(log) # of yearly-references" offset 1.3
set ylabel "% of yearly-references" offset 1.3
set xlabel "year"
set key at graph 0.3, 0.9
plot "log_references.tab" using ($1):($4) title 'AAN' with linespoints linetype 1 pointtype 6 lc rgb '#d95319' lw 3,\
"log_references.tab" using ($1):($3) title 'DBLP' with linespoints linetype 1 pointtype 4 lc rgb "#228B22"  lw 3,\
"log_references.tab" using ($1):($2) title 'MAG' with linespoints linetype 0 pointtype 3 lc rgb '#7e2f8e' lw 4 
