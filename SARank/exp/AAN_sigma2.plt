#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 14
set output "AAN_sigma2.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [-1.6:-0.4]
set yr [0.55:0.95]  
set ytics ("0.55" 0.55, "0.63" 0.63, "0.71" 0.71, "0.79" 0.79, "0.87" 0.87, "0.95" 0.95)
set xtics ("-1.6" -1.6, "-1.4" -1.4, "-1.2" -1.2, "-1.0" -1.0, "-0.8" -0.8, "-0.6" -0.6, "-0.4" -0.4) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1
set xlabel "time decaying factor {/Symbol s}"
#"AAN_sigma.tab" using ($1):($4) title 'ERank(FCita)' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
#"AAN_sigma.tab" using ($1):($5) title 'Best Baseline(FCita)' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
#"AAN_sigma.tab" using ($1):($2) title 'ERank(Recom)' with linespoints linetype 0 pointtype 1 lc 1 lw 5,\
#"AAN_sigma.tab" using ($1):($3) title 'Best Baseline(Recom)' with linespoints linetype 0 pointtype 2 lc rgb "green" lw 5
set key vertical samplen 3.3 spacing 1.2 at graph 0.97, 0.3
#set key horizontal font ",13" 
plot "AAN_sigma.tab" using ($1):($4) title 'ERank(FCita)' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"AAN_sigma.tab" using ($1):($2) title 'ERank(Recom)' with linespoints linetype 0 pointtype 6 lc rgb "#D2691E" lw 3