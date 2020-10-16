### Plot for the MR ###
reset
clear

load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/moreland.pal'

set macros

XTICS   = "-0.5,0.2,1.5"
#XTICS   = "0.8,0.1,1.5"
YTICS   = "-5.0,1.0,5.0"
XRANGE  = "[-0.5:1.5]"
#XRANGE  = "[0.8:1.5]"
YRANGE  = "[-5:5]"
ZRANGE  = "[*:*]"
CBRANGE = "[-0.003:0.003]"
CBTICS  = "-0.003,0.0005,0.003"

set terminal pngcairo size 1024,768 enhanced font 'Arial, 14'

set output 'MR-14periods-TbPc2_CNT12_0-Par_HS_Antipar-DZVP-3eVrange-d1-0p5K.png'
#set output 'MR-14periods-TbPc2_CNT12_0-Par_LS_Antipar-DZVP-3eVrange-d1-0p5K.png'

set title "Magnetoresistance: 14 periods of (12,0)-CNT + 2TbPc_2 (Parallel-HS, Antiparallel)"

set xrange @XRANGE
set yrange @YRANGE
#set zrange @ZRANGE

#set format x '%.2f'
#set format y '%.0s*10^{%T}'

#set format y '%.4f'
#set xtics @XTICS out nomirror
#set ytics @YTICS out nomirror 
set mztics 2
set mxtics 2
set mytics 2
set xlabel 'V_{g}  [V]' font ",15" offset 0,0.5 
set ylabel 'V_{sd} [mV]' font ",15" offset -1.9

#set grid

set pm3d map
#set pm3d map at bs
#set pm3d
set colorbox user size 0.025,0.6

set label 1 "Temperature: 0.5 [K]" font ",15" at -0.8,590 right front boxed
set style textbox opaque border

#set cbrange @CBRANGE 
#set cbtics @CBTICS

set cblabel 'MR [Arb. U.]' offset -6,13 rotate by 0 font ",11"

#set format cb '%3.0e'
#set log cb
#set view 70,40


##0.5K##
splot  '2-MR_12_0_CNT-Par_HS_Antipar-DZVP-3eVrange-d1-0p5K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
