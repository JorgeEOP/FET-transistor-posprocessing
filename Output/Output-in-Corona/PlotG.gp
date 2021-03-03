#### Plot for the Total Conductance ###
#reset
#clear
#
#set ls 101 lw 0.7 dt 3 lc 0
#set ls 102 lw 1.3 dt 1 lc 0
#set ls 122 lw 1.3 dt "---" lc rgb "white"
#set ls 103 lw 1.2 dt 1 lc 0
##load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/moreland.pal'
#load '/Users/pipo/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/gnuplot-palettes/jet.pal'
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"
#
##set output 'IG-2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up\
##-down-2K.png'
##set output 'IG-2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
##-up-down-3K.png'
##set output 'IG-2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP\
##-2K.png'
##set output 'IG-2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP\
##-0p9K.png'
#set output 'IG-2-TbPc-Antipar-16_per-9_0_CNT_Ohne_metal-1eVrange-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-up-down-Vsd8p5mV.png'
##set output 'IG-2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_metal-1eVrange-DZVP-SR-CDFT-Mg6-\
##C26-Mg6-C26-UP-UP-Vsd20mV.png'
#
##set output 'CNT_9_0-16periods-CB-SZV-U0p05_IG.png'
##set output 'CNT_9_0-16periods-SP-SZV-ZGated_IG-Vsd20mV.png'
#
##set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs (FE-AF); SR-basis; \
##CDFT" font 'Baskerville, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-AF); CDFT" font 'Baskerville, 22'
##set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); CDFT" font 'Baskerville, 22'
#
##set title "16 periods of (9,0) CNT ; SZV-Basis; Coulomb Blockade\
##" font 'Baskerville, 22'
##set title "16 periods of (9,0) CNT" font "Baskerville, 22"
#
##F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/\
##Conductance-sp.out"
#F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-up-down/Conductance_cb.out"
##F2P_0 = "2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
##-UP-UP/Conductance_cb.out"
#
##F2P_0 = "CNT_9_0-16periods-CB-SZV/Conductance_cb-U0p05.out"
##F2P_0 = "CNT_9_0-16periods-CB-SZV-Fortran/Conductance-sp-ZGated-Vsd20.out"
#
#XRANGE   = "[ -1.2 : 1.2 ]"
#XTICS    = "-1.2 , 0.2 , 1.2"
#ZRANGE   = "[ * : * ]"
#
### 2SMM + CNT
#YRANGE   = "[ -8.5 : 8.5 ]"
#YTICS    = "-10.0 , 2.0 , 10.0"
##YRANGE   = "[ -20.0 : 20.0 ]"
##YTICS    = "-20.0 , 5.0 , 20.0"
#CBRANGE  = "[ 0 : 50 ]"          # Nano
#
### CNT
##YRANGE   = "[ -20.0 : 20.0 ]"
##YTICS    = "-20.0 , 5.0 , 20.0"
##CBRANGE  = "[ 0 : 100 ]"          # Nano
#
##CBRANGE  = "[ * : * ]"          
#CBTICS   = "autofreq"
#
#set tics font ",18" 
#set xrange  @XRANGE
#set xtics   @XTICS out nomirror scale 1.0 offset 0,0.3
#set yrange  @YRANGE
#set ytics   @YTICS out nomirror scale 0.3 offset 1.5,0
#set cbrange @CBRANGE 
#set cbtics  @CBTICS 
#set xzeroaxis ls 122
#set yzeroaxis ls 122
#
##set format x ' '
##set format y '%.0s*10^{%T}'
##set format y '%.4f'
##set format cb '%3.0e'
#
#set mxtics 2
#set mytics 2
##set ylabel "V_{sd} (mV)" font ",18" offset 2.4,0
#set ylabel "V_{sd} (mV)" font ",18" offset 2.3,0
#set pm3d map 
#set colorbox user size 0.025,0.3 origin 0.9,0.55
#
#G0           = 7.748091731e-05
#e_char       = 1.6021766208e-19 
#Planck       = 4.135667662e-15 
#Units_G      = (1/Planck) * e_char**2
#nano_praefix = 0.000000001
#pico_praefix = 0.00000000001
# 
#set label 1 "T = 1.0 K" font ",18" at -1.15,7.0 left front boxed
##set label 1 "T = 1.0 K" font ",18" at -1.15,17.0 left front boxed
##set label 1 "T = 1.0 K" font ",18" at -1.15,100.0 left front boxed
#
#set style textbox opaque border
#
##set cbtics ("0.00" 0, "0.01" 0.01, "0.02" 0.02, "0.030" 0.030, ">0.035" 0.035)
#set cbtics offset -1,0 font ",13" 
#
#set cblabel '|I| (nA)' offset -5.0,5 rotate by 0 font ",15"
##set cblabel 'I (A)' offset -8.0,5 rotate by 0 font ",15"
#
##set log cb
#
#set multiplot layout 2, 1;
#set tmargin at screen 0.9
#set bmargin at screen 0.55
#set lmargin at screen 0.1
#set rmargin at screen 0.88
#
#splot  F2P_0 u 1:(1000*$2):($3/nano_praefix) w pm3d notitle '  '
#
#################################################################
#
##ZRANGE  = "[ * : * ]"
##CBRANGE = "[ * : * ]"
##CBTICS  = "autofreq"
#CBRANGE = "[ 0 : 0.3 ]"
##CBTICS  = "0 , 1.7 , 1.7"
##CBRANGE = "[ 0 : 1.2 ]"
#
#set key top left opaque font ",15"
#unset title
#
#unset label 1
#unset label 2
#
#unset logscale y
#set xlabel 'V_{g}  (V)' font ",18" offset 0,1
#set ylabel 'V_{sd} (mV)' font ",18" offset 3.0,0
#set format x
#
#unset format cb 
#
#set colorbox user size 0.025,0.3 origin 0.9,0.10
#set xrange  @XRANGE
#set yrange  @YRANGE
#set xtics   @XTICS out nomirror scale 1.5 offset 0,0.4
#set ytics   @YTICS out nomirror scale 0.3 offset 1.5,0
#set cbrange @CBRANGE 
##set cbtics  @CBTICS 
### 2SMM + CNT
##set cbtics ("0.00" 0, "0.05" 0.05, "0.1" 0.1, "0.15" 0.15, "0.2" 0.2, ">0.25" 0.25)
#
### CNT
##set cbtics ("0.00" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, "1.0" 1.0, ">1.0" 1.15)
##set cbtics ("0.00" 0, "0.5" 0.5, "1.0" 1.0, "1.5" 1.5, ">1.5" 1.7)
#
#set cbtics offset -0.6,0 font ",13" 
#
#set cblabel "G / G_{0}" offset -6,5 rotate by 0 font ",14"
##set cblabel 'G ({/Symbol m}S)' offset -5,5 rotate by 0 font ",14"
#
#KbT   = 0.000086
#micro = 0.000001
#
#set pm3d map 
#
#set tmargin at screen 0.45
#set bmargin at screen 0.1
#set lmargin at screen 0.1
#set rmargin at screen 0.88
#
#splot F2P_0 u 1:(1000*$2):($4/G0) w pm3d notitle '  '
##splot F2P_0 u 1:(1000*$2):4 w pm3d notitle '  '
##splot F2P_0 u 1:(1000*$2):(($4*KbT)/micro) w pm3d notitle '  '
##splot F2P_0 u 1:(1000*$2):($4*KbT) w pm3d notitle '  '
##splot F2P_0 u 1:(1000*$2):(($4*KbT)/G0) w pm3d notitle '  '
#
#unset multiplot

######################## Conductance (alleine) #######################

reset
clear

set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 1.3 dt 1 lc 0
set ls 122 lw 1.3 dt "---" lc rgb "white"
set ls 103 lw 1.2 dt 1 lc 0
#load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/moreland.pal'
load '/Users/pipo/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/gnuplot-palettes/jet.pal'

set macros

set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"

set output 'G-2-TbPc-FE-AF-16_per-9_0_CNT_Ohne_metal-1eVrange-DZVP-SR-CDFT-Mg6-\
C26-Mg6-C26-up-down-Vsd8p5mV.png'
#set output 'G-2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_metal-1eVrange-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-UP-UP-Vsd8p5mV.png'

#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-AF)" font 'Baskerville, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-FE)" font 'Baskerville, 22'

F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-\
C26-up-down/Conductance_sp-g-1K.out"
#F2P_0 = "2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-UP-UP/Conductance_cb.out"

XRANGE   = "[ -1.2 : 1.2 ]"
XTICS    = "-1.2 , 0.2 , 1.2"
ZRANGE   = "[ * : * ]"
#CBRANGE = "[ * : * ]"
#CBTICS  = "autofreq"

## 2SMM + CNT
YRANGE   = "[ -9.0 : 9.0 ]"
YTICS    = "-10.0 , 2.0 , 10.0"
CBRANGE  = "[ 0 : 0.3 ]"
CBTICS  = "0 , 0.05 , 0.3"

set tics font ",18" 
set xrange  @XRANGE
set xtics   @XTICS out nomirror scale 0.8offset 0,0.3
set yrange  @YRANGE
set ytics   @YTICS out nomirror offset 1.5,0
set cbrange @CBRANGE 
set cbtics  @CBTICS 
set xzeroaxis ls 122
set yzeroaxis ls 122

set mxtics 2
set mytics 2
set xlabel "V_{g} (V)"   font ",18" offset 0,0.8
set ylabel "V_{sd} (mV)" font ",18" offset 0.5,0
set pm3d map 
set colorbox user size 0.025,0.7 origin 0.92,0.12

G0           = 7.748091731e-05
nano_praefix = 0.000000001
pico_praefix = 0.00000000001
KbT          = 0.00007756
micro        = 0.000001
 
set label 1 "T = 1.0 K" font ",18" at -1.15,8.0 left front boxed

set style textbox opaque border

#set cbtics ("0.00" 0, "0.01" 0.01, "0.02" 0.02, "0.030" 0.030, ">0.035" 0.035)
set cbtics offset -1,0 font ",14" 
set cblabel "G / G_{0}" offset -6.3,10.5 rotate by 0 font ",18"
#set cblabel 'G ({/Symbol m}S)' offset -5,5 rotate by 0 font ",18"

set tmargin at screen 0.9
set bmargin at screen 0.12
set lmargin at screen 0.1
set rmargin at screen 0.9

splot F2P_0 u 1:(1000*$2):($4/G0) w pm3d notitle '  '
#splot F2P_0 u 1:(1000*$2):4 w pm3d notitle '  '
#splot F2P_0 u 1:(1000*$2):(($4*KbT)/micro) w pm3d notitle '  '
#splot F2P_0 u 1:(1000*$2):($4*KbT) w pm3d notitle '  '
#splot F2P_0 u 1:(1000*$2):(($4*KbT)/G0) w pm3d notitle '  '

####################### Conductance gegen Vsd (alleine) #######################

reset
clear

set ls 1  lw 3.0 dt 1 lc 0
set ls 2  lw 3.0 dt 1 lc rgb '#CD2626'  #Schoene Rot
set ls 3  lw 3.0 dt 1 lc rgb '#0000EE'  #Schoene Blau
set ls 4  lw 3.0 dt ".." lc 4
set ls 5  lw 2.0 dt 3 lc 5
set ls 6  lw 2.0 dt 2 lc 6
set ls 9  lw 1.3 dt 3 lc 0
set ls 22 lw 5.0 dt 1 lc rgb '#E640EC'  #Schoene Purpur
set ls 33 lw 5.0 dt 1 lc rgb '#00C5CD'  #Schoene Magenta

set ls 11  lw 3.0 dt ".." lc 0 
set ls 12  lw 1.0 dt ".." lc "#660033"
set ls 13  lw 3.0 dt 1    lc 1
set ls 14  lw 3.0 dt 1    lc 3
set ls 15  lw 3.0 dt 1    lc 3
set ls 101 lw 1.2         lc 0         # Fuer Achsen und Tics sowie Kisten

set macros

set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"

set output 'GVsd-2-TbPc-16_per-9_0_CNT_Ohne_metal-1eVrange-1K-comp_m0p206Vg.png'

#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); CDFT" font 'Baskerville, 22'

F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
-Mg6-C26-up-down/Conductance_sp-g-1K.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/Conductance_cb.out"

XRANGE   = "[ -9.0 : 9.0 ]"
XTICS    = "-10.0 , 2.0 , 10.0"
#XRANGE   = "[ -20 : 20 ]"
#XTICS    = "autofreq"

## 2SMM + CNT
#YRANGE   = "[ -9.0 : 9.0 ]"
#YTICS    = "-10.0 , 2.0 , 10.0"
YRANGE   = "[ 0 : 0.6 ]"
YTICS    = "autofreq"

set tics font ",18" 
set xrange  @XRANGE
set xtics   @XTICS out nomirror scale 0.8 offset 0.0,0.3
set yrange  @YRANGE
set ytics   @YTICS out nomirror offset 0,0
set format y "%2.2f"
#set format y '%3.2e'

set mxtics 2
set mytics 2
set xlabel "V_{sd} (mV)" font ",21" offset 0,0.8
set ylabel "G / G_{0}"   font ",21" offset 0.8,0

#set grid ls 9
set border ls 101
set tics scale 1.2 

G0           = 7.748091731e-05
nano_praefix = 0.000000001
pico_praefix = 0.00000000001
KbT          = 0.00007756
micro        = 0.000001
 
set label 1 "T = 1.0 K" font ",18" at -1.15,8.0 left front boxed

set key top right opaque font ",14" box ls 101 width 0.5 height 0.6\
                                    maxcols 2 spacing 1.3 samplen 2

set tmargin at screen 0.95
set bmargin at screen 0.12
set lmargin at screen 0.13
set rmargin at screen 0.96

#do for [i=193:193] {
do for [i=194:194] {
#do for [i=189:189] {

p F2P_0 u (1000*$2):($4/G0) every :::i::i w l ls 3 title "FE-AF" ,\
  F2P_0 u (1000*$2):($9/G0) every :::i::i w l ls 2 title "FE-FE" ,\
  F2P_0 u 0:0:(sprintf( "Vg = %2.3f V", $1 )) every :::i::i w labels \
                      notitle '' offset -20,1 font 'Arial, 18'

#p F2P_0 u (1000*$2):4 every :::i::i w l ls 3 title "FE-AF" ,\
#  F2P_0 u (1000*$2):9 every :::i::i w l ls 2 title "FE-FE"

#  F2P_0 u 0:0:(sprintf( "Vg = %2.3f V", $1 )) every :::i::i w labels \
#                      notitle '' offset -20,1 boxed font 'Arial, 18'

}

################################################################
