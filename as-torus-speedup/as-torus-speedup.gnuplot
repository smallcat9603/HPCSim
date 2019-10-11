#2<->5
#set terminal png         # gnuplot recommends setting terminal before output
#set output 'C:\Users\smallcat\Dropbox\eclipse\common_workspace\HPCSim\as-torus-speedup\as-torus-speedup.png'  

set term post eps color "GothicBBB-Medium-RKSJ-H, 20"      
set output 'C:\Users\smallcat\Dropbox\eclipse\common_workspace\HPCSim\as-torus-speedup\as-torus-speedup.eps'  

set size 1,1.5
set origin 0,0
set multiplot

set size 1,0.5
set origin 0,1
set yrange [0:1.0]
set xlabel "FSO Links per Node (2-D Torus)"
set ylabel "Avg. Slowdown" font "GothicBBB-Medium-RKSJ-H, 18"
set key top right
#unset key
#set title "Average Slowdown"
set xtics (0, 1, 2, 3, 4)

plot  'C:\Users\smallcat\Dropbox\eclipse\common_workspace\HPCSim\as-torus-speedup\2d-avg-slowdown.txt' using 1:2 title "without speedup" with linespoints linewidth 2 pointtype 2 pointsize 2, '' using 1:3 title "with speedup" with linespoints linewidth 2 pointtype 8 pointsize 2

set size 1,0.5
set origin 0,0.5
set yrange [0:1.0]
set xlabel "FSO Links per Node (4-D Torus)"
set ylabel "Avg. Slowdown" font "GothicBBB-Medium-RKSJ-H, 18"
set key top right
#unset key
#set title "Average Slowdown"
set xtics (0, 2, 4, 6, 8)

plot  'C:\Users\smallcat\Dropbox\eclipse\common_workspace\HPCSim\as-torus-speedup\4d-avg-slowdown.txt' using 1:2 title "without speedup" with linespoints linewidth 2 pointtype 2 pointsize 2, '' using 1:3 title "with speedup" with linespoints linewidth 2 pointtype 8 pointsize 2

set size 1,0.5
set origin 0,0
set yrange [0:1.0]
set xlabel "FSO Links per Node (5-D Torus)"
set ylabel "Avg. Slowdown" font "GothicBBB-Medium-RKSJ-H, 18"
set key top right
#unset key
#set title "Average Slowdown"
set xtics (0, 2, 5, 8, 10)

plot  'C:\Users\smallcat\Dropbox\eclipse\common_workspace\HPCSim\as-torus-speedup\5d-avg-slowdown.txt' using 1:2 title "without speedup" with linespoints linewidth 2 pointtype 2 pointsize 2, '' using 1:3 title "with speedup" with linespoints linewidth 2 pointtype 8 pointsize 2


unset multiplot
reset