set terminal postscript portrait enhanced color "Times-Roman" 16
set output "MAG_TWPageRank_fcita.eps"
set size 0.9, 0.3

set style data histograms
set style histogram clustered gap 1
#set noy2tics
#set nox2tics
#set xr [0:1]
set yr [0.7:0.95]  
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

#set label 1 "0.0%" at -0.25,0.885 font "Times-Roman,13" rotate by 320
set label 2 "-0.01%" at -0.35,0.89 font "Times-Roman,13" rotate by 320
set label 3 "+0.00%" at 0.65,0.89 font "Times-Roman,13" rotate by 320
set label 4 "+0.03%" at 1.65,0.89 font "Times-Roman,13" rotate by 320
set label 5 "+0.11%" at 2.65,0.89 font "Times-Roman,13" rotate by 320
set label 6 "+0.10%" at 3.65,0.88 font "Times-Roman,13" rotate by 320
set label 7 "+0.22%" at 4.65,0.875 font "Times-Roman,13" rotate by 320
set label 8 "+0.28%" at 5.65,0.865 font "Times-Roman,13" rotate by 320
set label 9 "+0.35%" at 6.65,0.86 font "Times-Roman,13" rotate by 320
set label 10 "+0.45%" at 7.65,0.855 font "Times-Roman,13" rotate by 320
set label 11 "+0.08%" at 8.65,0.808 font "Times-Roman,13" rotate by 320


plot "MAG_TWPageRank.tab" using 4:xticlabels(1) title 'SARank(FCita)',''using 5:xticlabels(1) title 'TWPRank(FCita)'
