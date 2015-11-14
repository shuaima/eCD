#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced "Times-Roman" 14
set output "query_cus_path_tnr.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [0:7]
set yr [100:31623]
set xtics ("Q1" 0, "Q3" 2, "Q5" 4, "Q7" 6) 
set ytics ("10^{2}" 100, "10^{2.5}" 316.23,  "10^{3}" 1000, "10^{3.5}" 3162.3, "10^{4}" 10000)
set label "(out of memory)" tc rgb "red" at 5, 5000 right
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set xtics scale 0.3
unset logscale x
set logscale y

#set ylabel "Preprocessing time (micro second)"
set label "Query time (x10^{-6} s)" at graph 0.3, 1.05
set key at graph 0.68, 0.98
plot "query_cus_path_tnr.txt" using ($1):($3) title 'Proxy+TNR' with linespoints linetype 4 pointtype 8 lc 0,\
"query_cus_path_tnr.txt" using ($1):($2) title 'TNR' with linespoints linetype 5 pointtype 2 lc rgb "red" lw 3 ps 1