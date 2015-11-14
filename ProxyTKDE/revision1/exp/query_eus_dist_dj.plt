#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced "Times-Roman" 14
set output "query_eus_dist_dj.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [0:6]
set yr [600:2500000]
set xtics ("Q1" 0, "Q3" 2, "Q5" 4, "Q7" 6) 
set ytics ("10^0" 1, "10^1" 10, "10^2" 100,  "10^3" 1000, "10^4" 10000, "10^5" 100000, "10^6" 1000000, "10^7" 10000000)
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set xtics scale 0.3
unset logscale x
set logscale y

set label "Query time (x10^{-6} s)" at graph 0.3, 1.05
set key at graph 0.68, 0.98
plot "query_eus_dist.tab" using ($1):($6) title 'Proxy+Dijkstra' with linespoints linetype 4 pointtype 8 lc 0,\
"query_eus_dist.tab" using ($1):($7) title 'Dijkstra' with linespoints linetype 5 pointtype 6 lc 0