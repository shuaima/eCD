set terminal postscript portrait enhanced color "Times-Roman" 16
set output "MAG_TWPageRank_recom.eps"
set size 0.9, 0.3

set style data histograms
set style histogram clustered gap 1
#set noy2tics
#set nox2tics
set xr [-0.6:9.6]
set yr [0.55:0.95]  
set ytics ("0.55" 0.55, "0.65" 0.65, "0.75" 0.75, "0.85" 0.85,  "0.95" 0.95)
#set xtics ("0" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, "1" 1) 
#set x2tics ("" 2.5, "" 7.5, "" 12.5,"" 17.5) 
#set ytics scale 0.05
#set logscale x
#set logscale y
#set xtics rotate by -45
set ylabel "PairAcc" offset 1.5
set xlabel "importance weighting factor" offset 0, 0.5
set key horizontal at graph 0.84, 0.95

set boxwidth 1
set style fill pattern 2 border -1
#set style fill solid 0.5 border

#set label 1 "0.0%" at -0.25,0.82 font "Times-Roman,13" rotate by 320
set label 2 "+0.86%" at -0.35,0.71 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 3 "+1.27%" at 0.65,0.71 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 4 "+2.08%" at 1.65,0.71 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 5 "+2.59%" at 2.65,0.7 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 6 "+2.64%" at 3.65,0.7 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 7 "+3.80%" at 4.65,0.7 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 8 "+4.51%" at 5.65,0.69 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 9 "+4.21%" at 6.65,0.67 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 10 "+4.36%" at 7.65,0.66 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 11 "+5.68%" at 8.65,0.65 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"


plot "MAG_TWPageRank.tab" using 3:xticlabels(1) title 'DRank' lw 1.5,\
''using 2:xticlabels(1) title 'SARank'
