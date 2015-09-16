#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced "Times-Roman" 14
set output "query_q5_path_dj.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [316200:31622777]
set yr [10000:1000000]
set xtics ("10^{5.5}" 316227.77, "10^6" 1000000, "10^{6.5}" 3162277.66,"10^7" 10000000, "10^{7.5}" 31622776.60) 
set ytics ("10^0" 1, "10^1" 10, "10^2" 100,  "10^{2.5}"316.277, "10^3" 1000, "10^{3.5}" 3162.77 , "10^4" 10000, "10^{4.5}" 31627.7 , "10^5" 100000, "10^{5.5}" 312677, "10^{6}" 1000000, "10^{6.5}" 3126770, "10^7" 10000000)
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set xtics scale 0.3
set logscale x
set logscale y
#set xlabel "nodes in graph"
#set ylabel "Preprocessing time ($10^{-6}$ s)"
set label "Query time (x10^{-6} s)" at graph 0.3, 1.05
#set key top left
set key at graph 0.68, 0.98
plot "query_q5_path.tab" using ($1):($6) title 'Proxy+Dijkstra' with linespoints linetype 4 pointtype 8 lc 0,\
"query_q5_path.tab" using ($1):($7) title 'Dijkstra' with linespoints linetype 5 pointtype 6 lc 0
