set terminal postscript portrait enhanced color "Times-Roman" 14
set output "yearly-references.eps"
set size 0.9, 0.22
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xtic scale 0.5
set ytic scale 0.8
set xr [1995:2015]
#set xr [1999:2015]
set xtics ("1995" 1995, "1997" 1997, "1999" 1999, "2001" 2001, "2003" 2003, "2005" 2005, "2007" 2007, "2009" 2009, "2011" 2011, "2013" 2013, "2015" 2015)

#set yr [0:16]
#set ytics ("0" 0, "4" 4, "8" 8, "12" 12, "16" 16)
set yr [0.33:27]
set ytics ("0.33" 0.33, "1.0" 1, "3.0" 3, "9.0" 9, "27" 27)
set logscale y 3

#set ylabel "(log) # of yearly-references" offset 1.3
set ylabel "% of citations by year" offset 1.3
#set xlabel "year"
set key at graph 0.27, 0.95

#set label 1 "Data" at 2012.5,1.5 font "Times-Roman,15" rotate by 30 textcolor rgb "blue"
#set label 2 "Missing" at 2012.5,0.75 font "Times-Roman,15" rotate by 30 textcolor rgb "blue"

plot "yearly-references.tab" using ($1):($4) title 'AAN' with linespoints linetype 1 pointtype 6 lc rgb '#d95319' lw 3,\
"yearly-references.tab" using ($1):($3) title 'DBLP' with linespoints linetype 1 pointtype 4 lc rgb "#228B22"  lw 3,\
"yearly-references.tab" using ($1):($2) title 'MAG' with linespoints linetype 1 pointtype 3 lc rgb '#7e2f8e' lw 3,\
#"yearly-references.tab" using ($5):($6) title '' with linespoints linetype 0 pointtype 4 lc rgb "#228B22"  lw 3,\
#"yearly-references.tab" using ($7):($8) title '' with linespoints linetype 0 pointtype 3 lc rgb '#7e2f8e' lw 3 