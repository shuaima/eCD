#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced "Times-Roman" 14
set output "query_cal_path_ah.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [0:7]
set yr [0:200]
set xtics ("Q1" 0, "Q2" 1, "Q3" 2, "Q4" 3, "Q5" 4, "Q6" 5, "Q7" 6, "Q8" 7) 
set ytics ("50" 50, "100" 100, "150" 150,  "200" 200)
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set xtics scale 0.3
unset logscale x
unset logscale y
#set logscale y

#set ylabel "Preprocessing time (micro second)"
set label "Query time (x10^{-6} s)" at graph 0.3, 1.05
set key at graph 0.68, 0.98
plot "query_cal_path_ah.txt" using ($1):($2) title 'Proxy+AH' with linespoints linetype 4 pointtype 8 lc 0,\
"query_cal_path_ah.txt" using ($1):($3) title 'AH' with linespoints linetype 5 pointtype 6 lc 0