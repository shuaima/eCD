#set term postscript portrait enhanced color "Times-Roman" 12
set terminal postscript portrait enhanced color "Times-Roman" 16
set output "MAG_time_twpr.eps"
set size 0.6, 0.3
set grid
set grid noxtics back linewidth 0.1
set border
set noy2tics
set nox2tics
set xr [2009:2016]
set yr [50:1200]  
set ytics ("50" 50, "120" 120, "300" 300, "600" 600, "1200" 1200)
set xtics ("09" 2009, "10" 2010, "11" 2011, "12" 2012, "13" 2013, "14" 2014, "15" 2015,  "16" 2016)
#set xtics ("2008\n(0.12)" 2008, "2009\n(0.25)" 2009, "2010\n(0.39)" 2010, "2011\n(0.55)" 2011, "2012\n(0.73)" 2012, "2013\n(0.93)" 2013, "2014\n(1.14)" 2014, "2015\n(1.29)" 2015) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
set logscale y
set ylabel "time (sec.)" offset 1.5
set xlabel "splitting year" offset 0, 0.5
set key vertical samplen 2 spacing 1 at graph 0.97, 0.35
#set key horizontal font ",13" 
plot "MAG_time_twpr.tab" using ($1):($3) title '{/=13 incTWPR}' with linespoints linetype 1 pointtype 3 lc rgb "orchid4" lw 3,\
"MAG_time_twpr.tab" using ($1):($2) title '{/=13 batTWPR}' with linespoints linetype 1 pointtype 6 lc 7 lw 3,\
"MAG_time_twpr.tab" using ($1):($4) title '{/=13 powTWPR}'  with linespoints linetype 1 pointtype 12 lc rgb "olive" lw 3

