#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 16
set output "AAN_PairAcc3.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [0:6]
set yr [0.55:0.95]  
set ytics ("0.55" 0.55, "0.63" 0.63, "0.71" 0.71, "0.79" 0.79, "0.87" 0.87, "0.95" 0.95)
set xtics ("1" 0, "2" 1, "3" 2, "4" 3, "5" 4, "6" 5, "7" 6) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1.5
#set xlabel "difference of future citation count ({/Symbol \263})"
set xlabel "difference of future citation counts" offset 0, 0.5

set key vertical samplen 1.8 spacing 1.0 at graph 0.98, 0.53
#set key horizontal font ",13" 
plot "AAN_PairAcc3.tab" using ($1):($4) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"AAN_PairAcc3.tab" using ($1):($3) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "#228B22" lw 3,\
"AAN_PairAcc3.tab" using ($1):($2) title 'PRank' with linespoints linetype 1 pointtype 1 lc 1 lw 3,\
"AAN_PairAcc3.tab" using ($1):($5) title 'SARank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
#"AAN_PairAcc3.tab" using ($1):($6) title 'WPR' with linespoints linetype 1 pointtype 8 lc 4 lw 3

