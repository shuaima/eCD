set terminal postscript portrait enhanced color "Times-Roman" 16
set output "AAN_TWPageRank_recom.eps"
set size 0.9, 0.3

set style data histograms
set style histogram clustered gap 1
#set noy2tics
#set nox2tics
set xr [-0.6:9.6]
set yr [0.65:0.9]  
#set ytics ("0.65" 0.65, "0.72" 0.72, "0.79" 0.79, "0.86" 0.86, "0.93" 0.93, "1.0" 1)
#set xtics ("0" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, "1" 1) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
#set xtics rotate by -45
set ylabel "PairAcc" offset 1.5
set xlabel "importance weighting factor" offset 0, 0.5

set boxwidth 1
set style fill pattern 2 border -1
#set style fill solid 0.5 border

#set label 1 "0.0%" at -0.25,0.85 font "Times-Roman,13" rotate by 40
set label 2 "-0.14%" at -0.35,0.81 font "Times-Roman,13" rotate by 40 textcolor rgb "#0000FF"
set label 3 "+0.70%" at 0.65,0.81 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 4 "+0.23%" at 1.65,0.81 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 5 "+0.42%" at 2.65,0.8 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 6 "+2.02%" at 3.65,0.8 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 7 "+3.56%" at 4.65,0.805 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 8 "+3.47%" at 5.65,0.785 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 9 "+3.19%" at 6.65,0.765 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 10 "+2.16%" at 7.65,0.73 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 11 "+2.20%" at 8.65,0.705 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"


plot "AAN_TWPageRank.tab" using 3:xticlabels(1) title 'TWPRank',''using 2:xticlabels(1) title 'SARank'
