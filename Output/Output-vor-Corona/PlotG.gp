### Plot for the Total Conductance ###
reset
clear

set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 1.3 dt 1 lc 0
set ls 122 lw 1.3 dt "---" lc rgb "white"
set ls 103 lw 1.2 dt 1 lc 0
load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/moreland.pal'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 14'
#set terminal x11 size 1024,768
#set output

#set output 'I-G-14periods-TbPc2_CNT12_0-Antipar-1eVrange-d1-3p0K-UP-DOWN.png'
#set output 'I-G-14periods-TbPc2_CNT12_0-Antipar-1eVrange-d1-3p0K-up-down.png'
set output 'testG.png'
#set output 'I-G-14periods-TbPc2_CNT12_0-FE-FE-1eVrange-d1-30p0K-UP-UP-2ndVsd.png'
#set output 'I-G-16periods-TbPc2_CNT9_0-Antipar-1eVrange-3p0K-UP-DOWN.png'
#set output 'I-G-16periods-TbPc2_CNT9_0-Antipar-1eVrange-3p0K-up-down.png'
#set output 'I-G-16periods-TbPc2_CNT9_0-FE-FE-1eVrange-100p0K-UP-UP.png'

#set title "14 periods of (12,0)-CNT + 2TbPc_2(Antipar) CDFT; UP-DOWN"
set title "14 periods of (12,0)-CNT + 2TbPc_2(Antipar) CDFT; up-down"
#set title "14 periods of (12,0)-CNT + 2TbPc_2(FE-FE) CDFT; UP-UP"
#set title "16 periods of (9,0)-CNT + 2TbPc_2(Antipar)"
#set title "16 periods of (9,0)-CNT + 2TbPc_2(Antipar) CDFT; up-down"
#set title "16 periods of (9,0)-CNT + 2TbPc_2(FE-FE) CDFT; UP-UP"

### For 1stVsd ###
XRANGE  = "[-0.16:-0.13]"
YRANGE  = "[-10:10]"
ZRANGE  = "[*:*]"
XTICS   = "-0.16,0.01,-0.13"
YTICS   = "-10.0,2.0,10.0"
CBRANGE = "[0:0.000000001]"
CBTICS  = "0.0,0.0000000002,0.000000001"

### For 2ndVsd ###
#XRANGE  = "[-0.3:0.15]"
#YRANGE  = "[-70:70]"
#ZRANGE  = "[*:*]"
#XTICS   = "-0.3,0.05,0.15"
#YTICS   = "-70.0,20.0,70.0"
#CBRANGE = "[0:0.00000001]"
#CBTICS  = "0.0,0.000000002,0.00000001"

set tics font ",16" 
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out nomirror scale 0.5
set ytics @YTICS out mirror scale 0.5
set cbrange @CBRANGE 
set cbtics @CBTICS 
set xzeroaxis ls 122
set yzeroaxis ls 122

#set format x ' '

#set format y '%.0s*10^{%T}'
#set format y '%.4f'

set mxtics 2
set mytics 3
#set xlabel 'V_{g}  (V)' font ",18" offset 0,0.2 
#set xlabel ' ' 
set ylabel 'V_{sd} (mV)' font ",18" offset -1.3,0

set pm3d map 
#set pm3d map at bs
#set colorbox user size 0.025,0.6
set colorbox user size 0.025,0.2 origin 0.9,0.63
#set view 35,20

G0      = 7.748091731e-05
e_char  = 1.6021766208e-19 
Planck  = 4.135667662e-15 
Units_G = (1/Planck) * e_char**2
 
set label 1 "T = 3.0 K; d = 25.50 \305 " font ",16" at -0.29,8.3 left front boxed
#set label 1 "T = 3.0 K; d = 25.50 \305 " font ",16" at -0.29,58.3 left front boxed
#set label 1 "T = 30.0 K; d = 20.56 \305 " font ",16" at -0.29,8.3 left front boxed
#set label 1 "T = 30.0 K; d = 20.56 \305 " font ",16" at -0.29,58.3 left front boxed

set style textbox opaque border

#set cbtics ("0.00" 0, "0.01" 0.01, "0.02" 0.02, "0.030" 0.030, ">0.035" 0.035)
set cbtics offset -1,0 font ",13" 

set cblabel '|I| (A)' offset -6.0,5 rotate by 0 font ",14"

set format cb '%3.0e'
#set log cb

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.88  

#splot  '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-DOWN/Conductance-3p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
splot  '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/Conductance.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/Conductance-30p0K-2ndVsd.dat' u 1:(1000*$2):3 w pm3d notitle '  '

#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-3p0K-2ndVsd.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/Conductance-3p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-100p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '

#pause 20
#reread

################################################################
### For 1stVsd ###
XRANGE  = "[-0.16:-0.13]"
YRANGE  = "[-10:10]"
ZRANGE  = "[*:*]"
XTICS   = "-0.16,0.01,-0.13"
YTICS   = "-10.0,2.0,10.0"
#CBRANGE = "[0:0.0000000001]"
#CBTICS  = "0.0,0.00000000002,0.0000000001"
CBRANGE = "[0:*]"
CBTICS  = "autofreq"

### For 2ndVsd ###
#XRANGE  = "[-0.3:0.15]"
#YRANGE  = "[-70:70]"
#ZRANGE  = "[*:*]"
#XTICS   = "-0.3,0.05,0.15"
#YTICS   = "-70.0,20.0,70.0"
#CBRANGE = "[0:1]"
#CBTICS  = "0.0,0.2,1.0"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

unset logscale y
set xlabel 'V_{g}  (V)' font ",18" offset 0,0.2 
set ylabel 'V_{sd} (mV)' font ",18" offset -1.9,0
set format x
#set format y "%3.0f"

unset format cb 

set colorbox user size 0.025,0.2 origin 0.9,0.18
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out nomirror scale 0.5
set ytics @YTICS out mirror scale 0.5
set cbrange @CBRANGE 
set cbtics @CBTICS 
#set cbtics ("0.00" 0, "0.001" 0.001)
set cbtics offset -1,0 font ",13" 

set cblabel 'G/G_{0}'  offset -7,5 rotate by 0 font ",14"

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.88   

#splot  '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-DOWN/Conductance-3p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
splot  '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/Conductance.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/Conductance-30p0K-2ndVsd.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '

#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-3p0K-2ndVsd.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/Conductance-3p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-100p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '


unset multiplot
