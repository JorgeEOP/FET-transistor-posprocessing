############### (1) Normal 2SMM+CNT transmission and DOS   ####################
reset
clear

set ls 1  lw 3.0 dt 1 lc 0
set ls 2  lw 3.0 dt 1 lc rgb '#CD2626'  #Schoene Rot
set ls 3  lw 3.0 dt 1 lc rgb '#0000EE'  #Schoene Blau
set ls 4  lw 3.0 dt 1 lc 8
set ls 5  lw 2.0 dt 3 lc 5
set ls 6  lw 2.0 dt 2 lc 6
set ls 9  lw 0.7 dt 3 lc 0
set ls 22 lw 3.0 dt 1 lc rgb '#8F31E2'  #Schoene Purpur
set ls 33 lw 3.0 dt 1 lc rgb '#00C5CD'  #Schoene Magenta

#set ls 1 lw 3 dt 1 lc 0
#set ls 2 lw 3 dt 1 lc 1
#set ls 3 lw 3 dt 1 lc 3
#set ls 4 lw 3 dt "-" lc 4
#set ls 5 lw 2 dt 1 lc 5
#set ls 6 lw 2 dt 1 lc 6
#set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16per-2TbPc_CNT9_0-Antipar-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0-FE-FE-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0-Anti-FE-AF-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0-Antipar-SR-1eV-up-down.png'
#set output '16per-2TbPc_CNT9_0-FE-FE-SR-1eV-UP-UP.png'
#set output '16per-2TbPc_CNT9_0-Anti-FE-AF-SR-1eV-UP-DOWN.png'
#set output '16per-2TbPc_CNT9_0_Metal-Antipar-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-Antipar-SR-R-geo-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-FE-FE-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-FE-FE-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Anti-FE-AF-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Antipar-SR-1eV-up-down.png'
#set output '16per-2TbPc_CNT9_0_Metal-FE-FE-SR-1eV-UP-UP.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-Antipar-SR-R-geo-1eV-up-down-5p6E.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-FE-FE-SR-1eV-UP-UP-5p6E.png'
#set output 'CNT_cb_0Vg.png'
#set output '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up\
#-down.png'
set output '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
-up-down.png'
#set output '2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP\
#.png'
#set output 'Kont-9_0_CNT-Pd_111_1x2_7Ang_Metal-SR-1eV-AntiparallelGEO.png'
#set output 'Kont-9_0_CNT-Pd_111_1x2_7Ang_Metal-SR-1eV.png'
#set output 'Kont-9_0_CNT_pristine-Pd_111_1x2_7Ang_Metal-SR-1eV.png'

#set title "16per of (9,0)CNT + 2TbPc_2 (Antipar): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-FE); SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-AF): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 (Antipar): SR-basis; CDFT: up-down"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-FE); SR-basis; CDFT: UP-UP"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-AF): SR-basis; CDFT: UP-DOWN"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE); SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (Anti-FE-AF): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar): SR-basis; CDFT: up-down" font 'Arial, 18'
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE); SR-basis; CDFT: UP-UP" font 'Arial, 18'
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar): SR-basis; CDFT: up-down" font 'Arial, 18'
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE); SR-basis; CDFT: UP-UP" font 'Arial, 18'
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE); SR-basis; CDFT: UP-UP" font 'Arial, 18'
set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs (FE-AF); SR-basis; \
CDFT" font 'Baskerville:Italic, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs (FE-FE); SR-basis; \
#CDFT" font 'Baskerville:Italic, 22'

#set title "16per of (9,0)CNT + Pd-slabs (from Antiparallel): SR-basis"
#set title "16per of (9,0)CNT + Pd-slabs (from FE-FE): SR-basis"
#set title "16per of (9,0)CNT pristine + Pd-slabs: SR-basis"

XTICS   = "-0.5,0.1,0.5"
YTICS   = "0,20,100"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[0:100]"

#XTICS   = "-2.8,0.4,2.8"
#YTICS   = "0,20,100"
#XRANGE  = "[-2.8:2.8]"
#YRANGE  = "[0:100]"

#F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/\
#out-sp-alpha-all.out"
#F2P_1 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/\
#out-sp-beta-all.out"

F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
-up-down/out-sp-alpha-all.out"
F2P_1 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
-up-down/out-sp-beta-all.out"

#F2P_0 = "2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
#out-sp-alpha-all.out"
#F2P_1 = "2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
#out-sp-beta-all.out"

set tics font ",17" 
set xrange @XRANGE
set yrange @YRANGE
set xtics  @XTICS out nomirror offset 0,0.4
set ytics  @YTICS in offset 0.4,0
set mxtics 2
set mytics 2

set colorbox back user origin graph 0, graph 0 size graph 1, graph 1
unset cbtics

set grid noxtics
set grid noytics
#set logscale y
#set format x ''

#set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#set xlabel ' ' font ",18" offset 0
#set ylabel 'DOS(eV^{-1})' font ",18" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,92 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.96  

p    F2P_0 u 1:2 w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
     F2P_0 u 1:2 w l ls 2 notitle ' ',\
     F2P_1 u 1:2 w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
     F2P_1 u 1:2 w l ls 3 notitle ' '


#set palette defined (0 "#262626", 1 "#FF4040", 2 "#EE3B3B", 3 "#CD3333",\
#                     4 "#EE2C2C", 5 "#CD2626")
#p    F2P_0 u 1:2 w filledcurves above x2 fc rgb "white" not, \
#     F2P_0 u 1:2 w l ls 2 notitle, \
#     NaN palette
#
#set palette defined (0 "#2C9FD8", 1 "#152BEE", 2 "#141BF0", 3 "#0B11B6")
#p    F2P_1 u 1:2 w filledcurves above x2 fc rgb "white" not, \
#     F2P_1 u 1:2 w l ls 3 notitle, \
#     NaN palette

################################################################
YTICS   = "autofreq"
YRANGE  = "[0:4]"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

unset logscale y
set xlabel 'E-E_f (eV)'
set format x
#set format y "%3.0f"
set xrange @XRANGE
set yrange @YRANGE
set xtics  @XTICS
set ytics  @YTICS
set mxtics 2
set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'T(E)' font ",19" offset 2,0

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   

p  F2P_0 u 1:3  w l ls 2 notitle ' ',\
   F2P_1 u 1:3  w l ls 3 notitle ' '

unset multiplot

############## (2) Sum of alpha+beta: transmission and DOS ################
reset
clear

set ls 1  lw 3.0 dt 1 lc 0
set ls 2  lw 3.0 dt 1 lc rgb '#CD2626'  #Schoene Rot
set ls 3  lw 3.0 dt 1 lc rgb '#0000EE'  #Schoene Blau
set ls 4  lw 3.0 dt 1 lc 8
set ls 5  lw 2.0 dt 3 lc 5
set ls 6  lw 2.0 dt 2 lc 6
set ls 9  lw 0.7 dt 3 lc 0
set ls 22 lw 3.0 dt 1 lc rgb '#8F31E2'  #Schoene Purpur
set ls 33 lw 3.0 dt 1 lc rgb '#00C5CD'  #Schoene Magenta

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16per-TbPc2_CNT9_0-Antipar_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0-Antipar_FE-AF_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0-Antipar_FE-FE-SR-1eV-CDFT-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-AF_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-FE-SR-1eV-CDFT-SUM.png'
#set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar_FE-FE-SR-1eV-CDFT-SUM-5p6E.png'

#set output '2-TbPc-Antipar-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up\
#-down-UP-UP-SUM.png'
set output '2-TbPc-Antipar-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT\
-C26-Mg-C26-Mg-up-down-UP-UP-SUM.png'

#set title "16 periods (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE;\
# DZVP-SR" font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-AF/\
#FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE;\
# DZVP-SR; CDFT " font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison\
# Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2 + Al-slabs: Comparison\
# Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison\
# Antipar/FE-AF/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison\
# Antipar/FE-FE; DZVP-SR; CDFT" font 'Arial, 18'
#set title "16 periods (9,0)CNT + 2TbPc_2 + Al-slabs: Comparison\
# Antipar/FE-FE; DZVP-SR; CDFT" font 'Arial, 18'

#set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs: Comparison\
# FE-AF/FE-FE; CDFT " font 'Baskerville:Italic, 22'
set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs: Comparison\
 FE-AF/FE-FE; CDFT " font 'Baskerville:Italic, 22'

XTICS   = "-0.5,0.1,0.5"
YTICS   = "0,20,100"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[0:100]"

#F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
#-up-down/out-sp-alpha-all.out 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
#-up-down/out-sp-beta-all.out"
#F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
#-UP-UP/out-sp-alpha-all.out 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR\
#-CDFT-C26-C26-UP-UP/out-sp-beta-all.out"

F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
-up-down/out-sp-alpha-all.out 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6\
-C26-Mg6-C26-up-down/out-sp-beta-all.out"
F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
-UP-UP/out-sp-alpha-all.out 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR\
-CDFT-C26-C26-UP-UP/out-sp-beta-all.out"


set tics font ",17" 
set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS out nomirror offset 0,0.4
set ytics @YTICS in offset 0.4,0
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics
#set logscale y
#set format x ''

#set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#set xlabel ' ' font ",18" offset 0
#set ylabel 'DOS(eV^{-1})' font ",18" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,182 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.96  


p  F2P_0  u 1:($2+$5) w filledcurves above y1=0 ls 22 fs \
          transparent solid 0.2 title 'FE-AF' ,\
   F2P_0  u 1:($2+$5) w l ls 22 notitle ' ',\
   F2P_1  u 1:($2+$5) w filledcurves above y1=0 ls 33 fs \
          transparent solid 0.2 title 'FE-FE' ,\
   F2P_1  u 1:($2+$5) w l ls 33 notitle ' '

################################################################
YTICS   = "autofreq"
YRANGE  = "[*:*]"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

unset logscale y
set xlabel 'E-E_f (eV)'
set format x
#set format y "%3.0f"
set xrange @XRANGE
set yrange @YRANGE
set xtics  @XTICS
set ytics  @YTICS
set mxtics 2
set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'T(E)'       font ",19" offset 2,0

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   


p  F2P_0  u 1:($3+$6)  w l ls 22 notitle ' ',\
   F2P_1  u 1:($3+$6)  w l ls 33 notitle ' '

unset multiplot

########################### (3) PDOS 2SMM+CNT transmission and DOS   ##########################
#reset
#clear
#
#set ls 1 lw 3 dt "--" lc 0 
#set ls 2 lw 3 dt 1 lc 1
#set ls 3 lw 3 dt 1 lc 3
#set ls 4 lw 3 dt ".." lc 4
#set ls 5 lw 3 dt 1 lc 3
#set ls 6 lw 4 dt ".." lc 7
#set ls 9 lw 0.7 dt 3 lc 0
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
#
##set output '16per-TbPc2_CNT9_0-Antipar-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0-FE-FE-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0-Anti-FE-AF-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0-Antipar-SR-1eV-up-down-PDOS.png'
##set output '16per-TbPc2_CNT9_0-FE-FE-SR-1eV-UP-UP-PDOS.png'
##set output '16per-TbPc2_CNT9_0_Metal-Antipar-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0_Metal-FE-FE-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0_Metal-Anti-FE-AF-SR-1eV-PDOS.png'
##set output '16per-TbPc2_CNT9_0_Metal-Antipar-SR-1eV-up-down-PDOS.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-Antipar-SR-R-geo-1eV-up-down-PDOS.png'
##set output '16per-TbPc2_CNT9_0_Metal-Al-FE-FE-SR-1eV-UP-UP-PDOS.png'
#
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (Antipar)" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (FE-FE)" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (FE-AF)" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (Antipar): up-down" font 'Arial, 18'
#
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (FE-FE): UP-UP" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar)" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar)" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE)" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (FE-AF)" font 'Arial, 18'
#
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar): up-down" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar): up-down" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE): UP-UP" font 'Arial, 18'
##set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE): UP-UP" font 'Arial, 18'
#
#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,20,100"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[0:100]"
#
#set tics font ",16" 
#set xrange @XRANGE
#set yrange @YRANGE
#
#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS in offset 0.4,0
#set mxtics 2
#set mytics 2
#
#set grid noxtics
#set grid noytics
##set logscale y
##set format x ''
##set xlabel ' ' font ",19" offset 0
#set ylabel 'PDOS(eV^{-1})' font ",19" offset 3,0
#
#set key top right opaque font ",14" 
#set style textbox opaque noborder
#
#set grid ls 9
#
##set label 1 "d_{Tb-Tb} = 20.56 \305" font ",18" at -0.45,92 left front boxed
#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",18" at -0.47,92 left front boxed
#set style textbox opaque border
#
#set multiplot layout 2, 1;
#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  
#
#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\
#
#
#################################################################
#XTICS   = "-0.5,0.1,0.5"
##YTICS   = "-5.0,0.1,0.0"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[*:100]"
#
#unset title
#
#unset label 1
#unset label 2
#
#unset logscale y
##set format x
##set format y "%3.0f"
#set xrange @XRANGE
#set yrange @YRANGE
#set xtics @XTICS out nomirror
##set ytics @YTICS out nomirror 
#set mxtics 2
#set mytics 2
##set mxtics 2
#set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 3,0
#set key top right opaque font ",14" 
#
#set tmargin at screen 0.1
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   
#
#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\
#
#unset multiplot
