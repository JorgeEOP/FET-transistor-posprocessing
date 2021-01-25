### Plot for the Total Conductance ###
reset
clear

set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 1.3 dt 1 lc 0
set ls 122 lw 1.3 dt "---" lc rgb "white"
set ls 103 lw 1.2 dt 1 lc 0
#load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/moreland.pal'
load '/Users/pipo/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/gnuplot-palettes/jet.pal'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
#set terminal x11 size 1024,768
#set output

#set output 'IG-2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up\
#-down-2K.png'
#set output 'IG-2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-up-down-3K.png'
#set output 'IG-2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP\
#-2K.png'
#set output 'IG-2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP\
#-0p9K.png'
#set output 'IG-2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_metal-1eVrange-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-UP-UP-1p0K.png'

set output 'CNT_9_0-16periods-CB-SZV-U0p05_IG.png'
#set output 'CNT_9_0-16periods-CB-SZV-sp_richtig_ZGated_IG-Vsd20mV.png'

#set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs (FE-AF); SR-basis; \
#CDFT" font 'Baskerville, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs (FE-FE); SR-basis; \
#CDFT" font 'Baskerville, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); SR-basis; \
#CDFT" font 'Baskerville, 22'

set title "16 periods of (9,0) CNT ; SZV-Basis; Coulomb Blockade\
" font 'Baskerville, 22'
#set title "16 periods of (9,0) CNT ; SZV-Basis; Single Particle\
#" font 'Baskerville, 22'

#F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/\
#Conductance-sp.out"
#F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-up-down/Conductance-sp-3K.out"
#F2P_0 = "2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-UP-UP/Conductance-sp-1eV.out"

F2P_0 = "CNT_9_0-16periods-CB-SZV/Conductance_cb-U0p05.out"
#F2P_0 = "CNT_9_0-16periods-CB-SZV/Conductance-sp-richtig_ZGated-Vsd200.out"

### For 1stVsd ###
XRANGE   = "[-0.5:2.0]"
XTICS    = "-0.5,0.25,2.0"
YRANGE   = "[-20.0:20.0]"
YTICS    = "-20.0,5.0,20.0"
ZRANGE   = "[*:*]"
CBRANGE  = "[0:0.0000001]"
CBTICS   = "0,0.00000002, 0.0000001"
#XRANGE   = "[-0.5:*]"
#XTICS    = "autofreq"
#CBRANGE = "[*:*]"
#CBTICS  = "autofreq"

set tics font ",17" 
set xrange  @XRANGE
set xtics   @XTICS out mirror scale 1.0 offset 0,0.3
set yrange  @YRANGE
set ytics   @YTICS out mirror scale 0.3 offset 1.5,0
set cbrange @CBRANGE 
set cbtics  @CBTICS 
set xzeroaxis ls 122
set yzeroaxis ls 122

#set format x ' '
#set format y '%.0s*10^{%T}'
#set format y '%.4f'

set mxtics 2
set mytics 2
#set xlabel 'V_{g}  (V)' font ",18" offset 0,0.2 
#set xlabel ' ' 
set ylabel 'V_{sd} (mV)' font ",18" offset 2,0

set pm3d map 
#set pm3d map at bs
#set pm3d
#set colorbox user size 0.025,0.6
set colorbox user size 0.025,0.3 origin 0.9,0.55
#set view 35,20

G0      = 7.748091731e-05
e_char  = 1.6021766208e-19 
Planck  = 4.135667662e-15 
Units_G = (1/Planck) * e_char**2
 
#set label 1 "T = 3.0 K; d_{Tb-Tb} = 20.56 \305 " font ",16" at -0.19,8.7 left front boxed
#set label 1 "T = 1.0 K " font ",16" at 0.0,17.0 left front boxed
set label 1 "T = 1.0 K " font ",16" at 0.0,170.0 left front boxed

set style textbox opaque border

#set cbtics ("0.00" 0, "0.01" 0.01, "0.02" 0.02, "0.030" 0.030, ">0.035" 0.035)
set cbtics offset -1,0 font ",13" 

set cblabel '|I| (A)' offset -6.0,5 rotate by 0 font ",14"
#set cblabel 'I (A)' offset -7,5 rotate by 0 font ",14"

set format cb '%3.0e'
#set log cb

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.88  

splot  F2P_0 u 1:(1000*$2):3 w pm3d notitle '  ',\

#pause 20
#reread

################################################################
### For 1stVsd ###
#ZRANGE  = "[*:*]"
#CBRANGE = "[*:*]"
#CBTICS  = "autofreq"
#CBRANGE = "[0:80.0]"
#CBTICS  = "0,20.0,80.0"
CBRANGE = "[0:0.0001]"
CBTICS  = "0,0.00002,0.0001"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

#set logscale z
unset logscale y
set xlabel 'V_{g}  (V)' font ",18" offset 0,1
set ylabel 'V_{sd} (mV)' font ",18" offset 3,0
set format x
#set format y "%3.0f"

unset format cb 

set colorbox user size 0.025,0.3 origin 0.9,0.10
set xrange  @XRANGE
set yrange  @YRANGE
set xtics   @XTICS out mirror scale 1.5 offset 0,0.4
set ytics   @YTICS out mirror scale 0.3 offset 1.5,0
set cbrange @CBRANGE 
set cbtics  @CBTICS 
#set cbtics ("0.00" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, ">1.0" 1.0)
set cbtics offset -1,0 font ",13" 

set cblabel 'G/G_{0}' offset -6,5 rotate by 0 font ",14"
#set cblabel 'G ({/Symbol m}S)' offset -5,5 rotate by 0 font ",14"

KbT = 0.00007756
micro = 0.000001

set pm3d map 
#set pm3d map at bs
#set pm3d
#set view 35,20

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.88   

#splot  '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/Conductance.dat' u 1:(1000*$2):($4/G0) w pm3d notitle '  '

#splot  F2P_0 u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot  F2P_0 u 1:(1000*$2):4 w pm3d notitle '  '
#splot  F2P_0 u 1:(1000*$2):(($4*KbT)/micro) w pm3d notitle '  '
splot  F2P_0 u 1:(1000*$2):(($4*KbT)/G0) w pm3d notitle '  '

unset multiplot
