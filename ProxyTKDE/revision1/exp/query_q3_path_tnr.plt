#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced "Times-Roman" 14
set output "query_q3_path_tnr.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [316200:15000000]
set yr [31.62:600]
set xtics ("10^{5}" 100000, "10^{5.5}" 316227.77, "10^6" 1000000, "10^{6.5}" 3162277.66,"10^7" 10000000) 
set ytics ("10^{1.5}" 31.62, "10^{2}" 100, "10^{2.5}" 316.2)
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set xtics scale 0.3
unset logscale
set logscale x
set logscale y
#set xlabel "nodes in graph"
#set ylabel "Preprocessing time (micro second)"
set label "Query time (x10^{-6} s)" at graph 0.3, 1.05
set key at graph 0.68, 0.98
#set key 1,2300
plot "query_q3_path_tnr.txt" using ($1):($2) title 'Proxy+TNR' with linespoints linetype 4 pointtype 8 lc 0,\
"query_q3_path_tnr.txt" using ($1):($3) title 'TNR' with linespoints linetype 1 pointtype 6 lc 0