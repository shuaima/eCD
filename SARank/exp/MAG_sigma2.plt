#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 14
set output "MAG_sigma2.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [-1.6:-0.4]
set yr [0.6:0.9]  
set ytics ("0.60" 0.6, "0.66" 0.66, "0.72" 0.72, "0.78" 0.78, "0.84" 0.84, "0.90" 0.9)
set xtics ("-1.6" -1.6, "-1.4" -1.4, "-1.2" -1.2, "-1.0" -1.0, "-0.8" -0.8, "-0.6" -0.6, "-0.4" -0.4) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1
set xlabel "time decaying factor {/Symbol s}"

set key vertical samplen 3.3 spacing 1 at graph 0.97, 0.5
#set key horizontal font ",13" 
plot "MAG_sigma.tab" using ($1):($4) title 'ERank(FCita)' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"MAG_sigma.tab" using ($1):($2) title 'ERank(Recom)' with linespoints linetype 0 pointtype 6 lc rgb "#D2691E" lw 3