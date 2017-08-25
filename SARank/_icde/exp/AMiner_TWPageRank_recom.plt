set terminal postscript portrait enhanced color "Times-Roman" 16
set output "AMiner_TWPageRank_recom.eps"
set size 0.9, 0.3

set style data histograms
set style histogram clustered gap 1
#set noy2tics
#set nox2tics
set xr [-0.6:9.6]
set yr [0.6:0.95]  
set ytics ("0.60" 0.6, "0.69" 0.69, "0.78" 0.78, "0.87" 0.87,  "0.95" 0.95)
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
set label 2 "-0.21%" at -0.35,0.83 font "Times-Roman,13" rotate by 40 textcolor rgb "#0000FF"
set label 3 "-0.83%" at 0.65,0.83 font "Times-Roman,13" rotate by 40 textcolor rgb "#0000FF"
set label 4 "-0.10%" at 1.65,0.83 font "Times-Roman,13" rotate by 40 textcolor rgb "#0000FF"
set label 5 "+0.41%" at 2.65,0.825 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 6 "-0.62%" at 3.65,0.82 font "Times-Roman,13" rotate by 40 textcolor rgb "#0000FF"
set label 7 "+4.04%" at 4.65,0.795 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 8 "+7.04%" at 5.65,0.783 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 9 "+9.73%" at 6.65,0.78 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 10 "+7.25%" at 7.65,0.715 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"
set label 11 "+6.63%" at 8.65,0.705 font "Times-Roman,13" rotate by 40 textcolor rgb "#FF0000"


plot "AMiner_TWPageRank.tab" using 3:xticlabels(1) title 'DRank' lw 1.5,\
''using 2:xticlabels(1) title 'SARank'
