set terminal postscript portrait enhanced color "Times-Roman" 14
set output "yearly-references.eps"
set size 0.9, 0.25
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xtic scale 0.5
set ytic scale 0.8
set xr [1996:2016]
set xtics ("1996" 1996, "1998" 1998, "2000" 2000, "2002" 2002, "2004" 2004, "2006" 2006, "2008" 2008, "2010" 2010, "2012" 2012, "2014" 2014, "2016" 2016)

#set yr [0:16]
#set ytics ("0" 0, "4" 4, "8" 8, "12" 12, "16" 16)
set yr [0.3:30]
set ytics ("0.3" 0.3, "1.0" 1, "3.0" 3, "10" 10, "30" 30)
set logscale y

#set ylabel "(log) # of yearly-references" offset 1.3
set ylabel "% of references by year" offset 1.3
set xlabel "year"
set key at graph 0.27, 0.95
plot "yearly-references.tab" using ($1):($4) title 'AAN' with linespoints linetype 1 pointtype 6 lc rgb '#d95319' lw 3,\
"yearly-references.tab" using ($1):($3) title 'DBLP' with linespoints linetype 1 pointtype 4 lc rgb "#228B22"  lw 3,\
"yearly-references.tab" using ($1):($2) title 'MAG' with linespoints linetype 0 pointtype 3 lc rgb '#7e2f8e' lw 4 