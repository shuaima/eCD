#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 14
set output "time1_sync_t_opt.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [2:20]
set yr [0:1600]  
set ytics ("0" 0, "4" 400, "8" 800, "12" 1200, "16" 1600)
set xtics ("2" 2, "5" 5, "8" 8, "11" 11, "14" 14, "17" 17, "20" 20) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
set ylabel "time (x100 ms)" offset 1
set xlabel "number of snapshots in time intervals (x100)"
#set key at graph 0.63, 0.23
set key horizontal font ",13" 
plot "time1_sync_t_opt.tab" using ($1):($2) title 'OPT_1' with linespoints linetype 1 pointtype 1 lc 1 lw 3,\
"time1_sync_t_opt.tab" using ($1):($3) title 'OPT_2' with linespoints linetype 1 pointtype 2 lc rgb "green" lw 3,\
"time1_sync_t_opt.tab" using ($1):($4) title 'OPT_3' with linespoints linetype 1 pointtype 4 lc rgb "blue" lw 3,\
"time1_sync_t_opt.tab" using ($1):($5) title 'OPT_4' with linespoints linetype 1 pointtype 6 lc 7 lw 3