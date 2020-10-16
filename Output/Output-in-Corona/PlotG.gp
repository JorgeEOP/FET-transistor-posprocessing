### Plot for the Total Conductance ###
reset
clear

set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 1.3 dt 1 lc 0
set ls 122 lw 1.3 dt "---" lc rgb "white"
set ls 103 lw 1.2 dt 1 lc 0
#load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/moreland.pal'
load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/jet.pal'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 14'
#set terminal x11 size 1024,768
#set output

#set output 'IG-16per-TbPc2_CNT9_0-Antipar-1eVrange-1p0K.png'
#set output 'IG-16per-TbPc2_CNT9_0-FE-FE-1eVrange-1p0K.png'
#set output 'IG-16per-TbPc2_CNT9_0-Anti-FE-AF-1eVrange-1p0K.png'
#set output 'IG-16per-TbPc2_CNT9_0_Metal-Antipar-1eVrange-1p0K.png'
#set output 'IG-16per-TbPc2_CNT9_0_Metal-FE-FE-1eVrange-1p0K.png'
#set output 'IG-16per-TbPc2_CNT9_Metal_0-Anti-FE-AF-1eVrange-1p0K.png'
#set output 'IG-16per-TbPc2_CNT9_0-Antipar-1eVrange-3p0K-up-down.png'
#set output 'IG-16per-TbPc2_CNT9_0-FE-FE-1eVrange-3p0K-UP-UP.png'
#set output 'IG-16per-TbPc2_CNT9_0_Metal-Antipar-1eVrange-3p0K-up-down.png'
#set output 'IG-16per-TbPc2_CNT9_0_Metal-FE-FE-1eVrange-3p0K-2ndVsd-UP-UP.png'
#set output 'IG-16per-TbPc2_CNT9_0_Metal-Al-Antipar-1eVrange-R-geo-2p0K-up-down-100Vsd.png'
#set output 'IG-16per-TbPc2_CNT9_0_Metal-Al-FE-FE-1eVrange-2p0K-UP-UP-100Vsd.png'
set output 'CNT_cb.png'

#set title "16 periods of (9,0)CNT + 2TbPc_2(Antipar)" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-FE)" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-AF)" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(Antipar) + Pd-slabs" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-FE) + Pd-slabs" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-AF) + Pd-slabs" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(Antipar) CDFT; up-down" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-FE) CDFT; UP-UP" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(Antipar) + Pd-slabs; CDFT; up-down" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-FE) + Pd-slabs; CDFT; UP-UP" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(Antipar) + Al-slabs; CDFT; up-down" font 'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2(FE-FE) + Al-slabs; CDFT; UP-UP" font 'Arial, 18'
set title "16 periods of (9,0)CNT. Coulomb blockade" font 'Arial, 18'

### For 1stVsd ###
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[-40.0:40.0]"
ZRANGE  = "[*:*]"
XTICS   = "-0.5,0.1,0.5"
YTICS   = "-40.0,10.0,40.0"
####CBRANGE = "[0:0.000015]"
####CBTICS  = "0.0,0.000005,0.000015"
#CBRANGE = "[*:*]"
#CBTICS  = "autofreq"
CBRANGE = "[0:0.00000500]"
CBTICS  = "0.0,0.00000080,0.00000500"

### For 2ndVsd ###
#XRANGE  = "[-0.15:0.15]"
##XRANGE  = "[*:*]"
#YRANGE  = "[-70:70]"
##YRANGE  = "[*:*]"
#ZRANGE  = "[*:*]"
#XTICS   = "-0.15,0.05,0.15"
#YTICS   = "-70.0,20.0,70.0"
#CBRANGE = "[0:0.00002]"
#CBTICS  = "0.0,0.00001,0.00002"
#CBRANGE = "[*:*]"
#CBTICS  = "autofreq"

set tics font ",16" 
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 1.5
set ytics @YTICS out mirror scale 0.5
set cbrange @CBRANGE 
set cbtics @CBTICS 
set xzeroaxis ls 122
set yzeroaxis ls 122

#set format x ' '

#set format y '%.0s*10^{%T}'
#set format y '%.4f'

set mxtics 3
set mytics 3
#set xlabel 'V_{g}  (V)' font ",18" offset 0,0.2 
#set xlabel ' ' 
set ylabel 'V_{sd} (mV)' font ",18" offset 0,0

set pm3d map 
#set pm3d map at bs
#set pm3d
#set colorbox user size 0.025,0.6
set colorbox user size 0.025,0.2 origin 0.9,0.63
#set view 35,20

G0      = 7.748091731e-05
e_char  = 1.6021766208e-19 
Planck  = 4.135667662e-15 
Units_G = (1/Planck) * e_char**2
 
#set label 1 "T = 3.0 K; d_{Tb-Tb} = 20.56 \305 " font ",16" at -0.19,8.7 left front boxed
#set label 1 "T = 1.0 K; d_{Tb-Tb} = 20.56 \305 " font ",16" at -0.39,42.7 left front boxed
#set label 1 "T = 2.0 K; d_{Tb-Tb} = 20.56 \305 " font ",16" at -0.29,42.7 left front boxed
set label 1 "T = 4.0 K " font ",16" at -0.45,36.0 left front boxed

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


#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/Conductance-3p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance-3p0K.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/Conductance.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/Conductance.dat' u 1:(1000*$2):3 w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance.dat' u 1:(1000*$2):3 w pm3d notitle '  '
splot  'CNT_9_0-16periods-CB-SZV-2nd-1/Conductance_cb.dat' u 1:(1000*$2):3 w pm3d notitle '  '

#pause 20
#reread

################################################################
### For 1stVsd ###
ZRANGE  = "[*:*]"
#CBTICS  = "0.0,0.5,2.5"
####CBRANGE = "[0:4.5]"
####CBTICS  = "0.0,1.0,4.5"
#CBRANGE = "[*:*]"
#CBTICS  = "autofreq"
CBRANGE = "[-2:*]"
CBTICS  = "autofreq"

### For 2ndVsd ###
#XRANGE  = "[-0.21:0.21]"
##XRANGE  = "[*:*]"
#YRANGE  = "[-70:70]"
##YRANGE  = "[*:*]"
#ZRANGE  = "[*:*]"
#XTICS   = "-0.21,0.05,0.21"
#YTICS   = "-70.0,20.0,70.0"
#CBRANGE = "[0:0.8]"
#CBTICS  = "0.0,0.2,0.8"
##CBRANGE = "[*:*]"
##CBTICS  = "autofreq"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

#set logscale z
unset logscale y
set xlabel 'V_{g}  (V)' font ",18" offset 0,0.2 
set ylabel 'V_{sd} (mV)' font ",18" offset 0,0
set format x
#set format y "%3.0f"

unset format cb 

set colorbox user size 0.025,0.2 origin 0.9,0.18
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 1.5
set ytics @YTICS out mirror scale 0.5
set cbrange @CBRANGE 
set cbtics @CBTICS 
#set cbtics ("0.00" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, ">1.0" 1.0)
set cbtics offset -1,0 font ",13" 

set cblabel 'G/G_{0}'  offset -4,5 rotate by 0 font ",14"

set pm3d map 
#set pm3d map at bs
#set pm3d
#set view 35,20

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.88   

#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/Conductance-1p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/Conductance-3p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance-3p0K.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/Conductance.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/Conductance.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '
splot   'CNT_9_0-16periods-CB-SZV-2nd-1/Conductance_cb.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '


unset multiplot