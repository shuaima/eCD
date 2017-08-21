#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 16
set output "MAG_PairAcc1.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [2010:2015]
set yr [0.55:0.9]  
set ytics ("0.55" 0.55, "0.62" 0.62, "0.69" 0.69, "0.76" 0.76, "0.83" 0.83, "0.90" 0.9)
set xtics ("2010" 2010, "2011" 2011, "2012" 2012, "2013" 2013, "2014" 2014, "2015" 2015) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "PairAcc" offset 1.5
set xlabel "splitting year" offset 0, 0.5

set key vertical samplen 2 spacing 1.0 at graph 1.03, 0.53
#set key horizontal font ",13" 
plot "MAG_PairAcc1_error.tab" using ($1):($2) title '' with linespoints linetype 0 pointtype 4 lc rgb "red" lw 5,\
"MAG_PairAcc1.tab" using ($1):($6) title 'HRank' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"MAG_PairAcc1.tab" using ($1):($3) title 'FRank' with linespoints linetype 1 pointtype 2 lc rgb "#228B22" lw 3,\
"MAG_PairAcc1.tab" using ($1):($2) title 'PRank' with linespoints linetype 1 pointtype 1 lc 1 lw 3,\
"MAG_PairAcc1.tab" using ($1):($4) title 'SARank' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
#"MAG_PairAcc1.tab" using ($1):($5) title 'WPR' with linespoints linetype 1 pointtype 8 lc 4 lw 3



