#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 14
set output "AMiner_PairAcc1.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [7:2]
set yr [0.45:0.95]  
set ytics ("0.45" 0.45, "0.55" 0.55, "0.65" 0.65, "0.75" 0.75, "0.85" 0.85, "0.95" 0.95)
set xtics ("2010" 7, "2011" 6, "2012" 5, "2013" 4, "2014" 3, "2015" 2) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1
set xlabel "splitting year"

set key vertical samplen 2.0 spacing 1.0 at graph 0.97, 0.43
#set key horizontal font ",13" 
plot "AMiner_PairAcc1.tab" using ($1):($5) title 'ERank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"AMiner_PairAcc1.tab" using ($1):($4) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"AMiner_PairAcc1.tab" using ($1):($3) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "green" lw 3,\
"AMiner_PairAcc1.tab" using ($1):($2) title 'PRank' with linespoints linetype 1 pointtype 1 lc 1 lw 3
