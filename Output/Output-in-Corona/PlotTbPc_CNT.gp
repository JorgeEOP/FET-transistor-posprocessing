######################## (1) Normal: DOS/T pro Spin ###########################

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

#set output '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up\
#-down.png'
#set output '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6\
#-C26-up-down.png'
#set output '2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-\
#UP.png'
#set output '2-TbPc-Antipar-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-SR-CDFT-\
#Mg6-C26-Mg6-C26-up-down.png'
#set output '2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-UP-UP.png'

#set output 'CNT_9_0-16periods-SP_bare.png'
#set output 'Toy_model_FE-AF.png'
set output 'Toy_model_FE-FE.png'

#set title "16 periods of (9,0) CNT + 2TbPc_2 + Pd-slabs (FE-AF); CDFT" font \
#'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE); CDFT" font \
#'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2 + Al-slabs (fe-af); CDFT" font \
#'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE); CDFT" font \
#'Arial, 18'
#set title "16 periods of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE); CDFT" font \
#'Arial, 18'
#set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs (FE-AF); CDFT" font \
#'Baskerville:Italic, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-AF); CDFT" font \
#'Baskerville, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); CDFT" font \
#'Baskerville, 22'

#set title "16 periods of (9,0) CNT" font 'Baskerville, 22'
#set title "Toy Model FE-AF" font 'Baskerville, 22'
set title "Toy Model FE-FE" font 'Baskerville, 22'

#F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/\
#out-sp-alpha-all.out"
#F2P_1 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/\
#out-sp-beta-all.out"

#F2P_0 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-up-down/out-sp-alpha-all.out"
#F2P_1 = "2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-up-down/out-sp-beta-all.out"

#F2P_0 = "2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
#out-sp-alpha-all.dat"
#F2P_1 = "2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
#out-sp-beta-all.out"

#F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-up-down/out-alpha-sp-ng-shift.out 2-TbPc-Antipar-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-ng-shift.out"

#F2P_0 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-UP-UP/out-alpha-sp-ng-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-ng-1eV.out"

#F2P_0 = "< paste CNT_9_0-16periods-CB-SZV/out-alpha-sp_bare.out \
#CNT_9_0-16periods-CB-SZV/out-alpha-sp_bare.out"
#F2P_0 = "< paste Toy_modelle/FE-AF/out-alpha-sp-ng.out Toy_modelle/FE-AF/out-\
#beta-sp-ng.out"
F2P_0 = "< paste Toy_modelle/FE-FE/out-alpha-sp-ng.out Toy_modelle/FE-FE/out-\
beta-sp-ng.out"

XTICS  = "-3.5 , 0.5 , 3.5 "
YTICS  = "0.0 , 2 , 10 "
XRANGE = "[ -3.5 : 3.5 ]"
YRANGE = "[ 0 : 10 ]"

set tics font ",18" 
set xrange @XRANGE
set yrange @YRANGE
set xtics  @XTICS out nomirror offset 0,0.4
set ytics  @YTICS out nomirror offset 0.4,0
set mxtics 2
set mytics 2

set colorbox back user origin graph 0, graph 0 size graph 1, graph 1
unset cbtics

set grid noxtics
set grid noytics

set ylabel "DOS (eV^{-1})" font ", 21" offset 2.5,0

set key top right opaque font ", 14" box ls 101 width 0 height 0.6 \
                                  maxcols 2 spacing 1.1 samplen 2
set style textbox opaque noborder

set grid ls 9
set border ls 101
set tics scale 1.2 

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,92 left front boxed
#set label 2 "(a)" font ",23" at -0.49,93 left front

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.96  

# Moeglichkeiten fuer eines Bild ohne Titel
#set multiplot layout 2, 1;
#set tmargin at screen 0.55
#set bmargin at screen 0.95
#set lmargin at screen 0.1
#set rmargin at screen 0.96  

#p F2P_0 u 1:2 w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title \
#                                                         '{/Symbol a}-spin',\
#  F2P_0 u 1:2 w l ls 2 notitle ' ',\
#  F2P_0 u 1:5 w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title \
#                                                         '{/Symbol b}-spin',\
#  F2P_0 u 1:5 w l ls 3 notitle ' '

# Fuer CNT
p F2P_0 u 2:3 w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title \
                                                         '{/Symbol a}-spin',\
  F2P_0 u 2:3 w l ls 2 notitle ' ',\
  F2P_0 u 2:7 w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title \
                                                         '{/Symbol b}-spin',\
  F2P_0 u 2:7 w l ls 3 notitle ' '

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
YTICS   = "0.0,1,4.0"
YRANGE  = "[0:4]"

unset title
unset key

unset label 1
unset label 2

unset logscale y
set format x
set xrange @XRANGE
set yrange @YRANGE
set xtics  @XTICS
set ytics  @YTICS
set mxtics 2
set xlabel "Energy (eV)" font ",21" offset 0,0.7
set ylabel "T (a.u.)" font ",21" offset 0.5,0
#set label 2 "(b)" font ",23" at -0.49,3.7 left front

set tmargin at screen 0.12
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   

## Moeglichkeiten fuer eines Bild ohne Titel
#set tmargin at screen 0.1
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   

#p F2P_0 u 1:3 w l ls 2 notitle ' ',\
#  F2P_0 u 1:6 w l ls 3 notitle ' '

# Fuer CNT
p F2P_0 u 2:4 w l ls 2 notitle ' ',\
  F2P_0 u 2:8 w l ls 3 notitle ' '

unset multiplot

############### (2) Sum of alpha+beta: transmission and DOS ################
#reset
#clear
#
#set ls 1  lw 3.0 dt 1 lc 0
#set ls 2  lw 3.0 dt 1 lc rgb '#CD2626'  #Schoene Rot
#set ls 3  lw 3.0 dt 1 lc rgb '#0000EE'  #Schoene Blau
#set ls 4  lw 3.0 dt 1 lc 8
#set ls 5  lw 2.0 dt 3 lc 5
#set ls 6  lw 2.0 dt 2 lc 6
#set ls 9  lw 0.7 dt 3 lc 0
#set ls 22 lw 5.0 dt 1 lc rgb '#E640EC'  #Schoene Purpur
#set ls 33 lw 5.0 dt 1 lc rgb '#00C5CD'  #Schoene Magenta
#
#set ls 1   lw 3 dt "--" lc 0 
#set ls 2   lw 3 dt 1 lc 1
#set ls 3   lw 3 dt 1 lc 3
#set ls 4   lw 3 dt ".." lc 4
#set ls 5   lw 3 dt 1 lc 3
#set ls 6   lw 4 dt ".." lc 7
#set ls 9   lw 1.3 dt 3 lc 0
#set ls 101 lw 1.2 lc 0                  # Fuer Achsen und Tics sowie Kisten
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Helvetica, 22'
#
##set output '16per-TbPc2_CNT9_0-Antipar_FE-FE-SR-1eV-SUM.png' 
##set output '16per-TbPc2_CNT9_0-Antipar_FE-AF_FE-FE-SR-1eV-SUM.png' 
##set output '16per-TbPc2_CNT9_0-Antipar_FE-FE-SR-1eV-CDFT-SUM.png' 
##set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-FE-SR-1eV-SUM.png' 
##set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar_FE-FE-SR-1eV-SUM.png' 
##set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-AF_FE-FE-SR-1eV-SUM.png' 
##set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-FE-SR-1eV-CDFT-SUM.png'
##set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar_FE-FE-SR-1eV-CDFT-SUM-5p6E.png'
#
##set output '2-TbPc-Antipar-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up\
##-down-UP-UP-SUM.png'
#set output '2-TbPc-Antipar-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT\
#-C26-Mg-C26-Mg-up-down-UP-UP-SUM.png'
#
##set title "16 periods (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE;\
## DZVP-SR" font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-AF/\
##FE-FE; DZVP-SR" font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE;\
## DZVP-SR; CDFT " font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison\
## Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2 + Al-slabs: Comparison\
## Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison\
## Antipar/FE-AF/FE-FE; DZVP-SR" font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison\
## Antipar/FE-FE; DZVP-SR; CDFT" font 'Arial, 18'
##set title "16 periods (9,0)CNT + 2TbPc_2 + Al-slabs: Comparison\
## Antipar/FE-FE; DZVP-SR; CDFT" font 'Arial, 18'
#
##set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs: Comparison\
## FE-AF/FE-FE; CDFT " font 'Baskerville:Italic, 22'
#set title "16 periods of (9,0) CNT + 2TbPc_2 + Al-slabs: Comparison\
# FE-AF/FE-FE; CDFT " font 'Baskerville:Italic, 22'
#
#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,20,100"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[0:100]"
#
##F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
##-up-down/out-sp-alpha-all.out 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
##-up-down/out-sp-beta-all.out"
##F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26\
##-UP-UP/out-sp-alpha-all.out 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR\
##-CDFT-C26-C26-UP-UP/out-sp-beta-all.out"
#
#F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26-Mg6-C26\
#-up-down/out-sp-alpha-all.out 2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6\
#-C26-Mg6-C26-up-down/out-sp-beta-all.out"
#F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-Mg6-C26\
#-Mg6-C26-UP-UP/out-sp-alpha-all.out 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-\
#DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-sp-beta-all.out "
#
#set tics font ",17" 
#set xrange @XRANGE
#set yrange @YRANGE
#
#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS out nomirror offset 0.4,0
#set mxtics 2
#set mytics 2
#
#set grid noxtics
#set grid noytics
##set logscale y
##set format x ''
#
##set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
##set xlabel ' ' font ",18" offset 0
##set ylabel 'DOS(eV^{-1})' font ",18" offset 0
#
#set key top right opaque font ",14" 
#set style textbox opaque noborder
#
#set grid ls 9
#
##set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
##set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,182 left front boxed
#set style textbox opaque border
#
#set multiplot layout 2, 1;
#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  
#
#
#p  F2P_0  u 1:($2+$5) w filledcurves above y1=0 ls 22 fs \
#          transparent solid 0.2 title 'FE-AF' ,\
#   F2P_0  u 1:($2+$5) w l ls 22 notitle ' ',\
#   F2P_1  u 1:($2+$5) w filledcurves above y1=0 ls 33 fs \
#          transparent solid 0.2 title 'FE-FE' ,\
#   F2P_1  u 1:($2+$5) w l ls 33 notitle ' '
#
#################################################################
#YTICS   = "autofreq"
#YRANGE  = "[*:*]"
#
#set key top left opaque font ",15"
#unset title
#
#unset label 1
#unset label 2
#
#unset logscale y
#set xlabel 'E-E_f (eV)'
#set format x
##set format y "%3.0f"
#set xrange @XRANGE
#set yrange @YRANGE
#set xtics  @XTICS
#set ytics  @YTICS
#set mxtics 2
#set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'T(E)'       font ",19" offset 2,0
#
#set tmargin at screen 0.1
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   
#
#
#p  F2P_0  u 1:($3+$6)  w l ls 22 notitle ' ',\
#   F2P_1  u 1:($3+$6)  w l ls 33 notitle ' '
#
#unset multiplot
#

################################## (3) PDOS ###################################

#reset
#clear
#
#set ls 1  lw 3.0 dt 1 lc 0
#set ls 2  lw 3.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
#set ls 3  lw 3.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
#set ls 4  lw 3.0 dt ".." lc 4
#set ls 5  lw 2.0 dt 3 lc 5
#set ls 6  lw 2.0 dt 2 lc 6
#set ls 9  lw 1.3 dt 3 lc 0
#set ls 22 lw 5.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
#set ls 33 lw 5.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
#
#set ls 11  lw 2.0 dt ".." lc 0 
#set ls 12  lw 2.0 dt ".." lc "#660033"
#set ls 13  lw 3.0 dt 1    lc 1
#set ls 14  lw 3.0 dt 1    lc 3
#set ls 15  lw 3.0 dt 1    lc 3
#set ls 101 lw 1.2         lc 0         # Fuer Achsen und Tics sowie Kisten
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Helvetica, 22'
#
##set output '2-TbPc-Antipar-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-SR-CDFT-\
##Mg6-C26-Mg6-C26-up-down-PDOS.png'
#set output '2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-SR-CDFT-\
#Mg6-C26-Mg6-C26-UP-UP-PDOS.png'
#
##set title "PDOS: 16 periods of (9,0) CNT + 2TbPc_2 (FE-AF); CDFT" font \
##'Baskerville, 22'
#set title "PDOS: 16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); CDFT" font \
#'Baskerville, 22'
#
##F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
##C26-Mg6-C26-up-down/out-alpha-sp-ng-1eV-PDOS.out 2-TbPc-Antipar-16_per-9_0_CNT_\
##Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-ng-1eV-PDOS.out"
#F2P_0 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-\
#Mg6-C26-UP-UP/out-alpha-sp-ng-1eV-PDOS.out 2-TbPc-FE-FE-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-ng-1eV-PDOS.out"
#
#XTICS  = "-0.5,0.1,0.5"
#YTICS  = "0,20,100"
#XRANGE = "[-0.5:0.5]"
#YRANGE = "[0:100]"
#
#set tics font ",18" 
#set xrange @XRANGE
#set yrange @YRANGE
#
#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS out nomirror offset 0.4,0
#set mxtics 2
#set mytics 2
#
#set grid noxtics
#set grid noytics
#set ylabel 'PDOS (eV^{-1})' font ",21" offset 2.5,0
#
#set key top right opaque font ",14" box ls 101 width 0 height 0.6 \
#                                  maxcols 2 spacing 1.1 samplen 2
#set style textbox opaque noborder
#
#set grid ls 9
#set border ls 101
#set tics scale 1.2 
#
##set label 1 "d_{Tb-Tb} = 20.56 \305" font ",18" at -0.45,92 left front boxed
##set label 1 "d_{Tb-Tb} = 20.56 \305" font ",18" at -0.47,92 left front boxed
#set label 2 "(a)" font ",23" at -0.49,93 left front
#
#set multiplot layout 2, 1;
#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  
#
#p F2P_0 u 1:2 w filledcurves above y1=0 ls 11 fs transparent solid 0.2 \
#                                        title 'CNT: {/Symbol a}-spin',\
#  F2P_0 u 1:2 w l ls 11 notitle ' ',\
#  F2P_0 u 1:6 w filledcurves above y1=0 ls 12 fs transparent solid 0.2 \
#                                        title 'CNT: {/Symbol b}-spin',\
#  F2P_0 u 1:6 w l ls 12 notitle ' ',\
#  F2P_0 u 1:3 w filledcurves above y1=0 ls 2 fs transparent solid 0.2 \
#                                      title '2SMMs: {/Symbol a}-spin',\
#  F2P_0 u 1:3 w l ls 2 notitle ' ',\
#  F2P_0 u 1:7 w filledcurves above y1=0 ls 3 fs transparent solid 0.2 \
#                                      title '2SMMs: {/Symbol b}-spin',\
#  F2P_0 u 1:7 w l ls 3 notitle ' ',\
#
################################################################
#XTICS  = "-0.5,0.1,0.5"
##YTICS = "-5.0,0.1,0.0"
#XRANGE = "[-0.5:0.5]"
#YRANGE = "[*:100]"
#
#unset title
#
#unset label 1
#unset label 2
#
#unset logscale y
#set xrange @XRANGE
#set yrange @YRANGE
#set xtics @XTICS out nomirror
##set ytics @YTICS out nomirror 
#set mxtics 2
#set mytics 2
#set xlabel 'Energy (eV)'   font ",21" offset 0,0.8
#set ylabel 'DOS (eV^{-1})' font ",21"  offset 3,0
#set key top right opaque font ",14" box ls 101 width 0 height 0.5 \
#                                   maxcols 1 spacing 1 samplen 2
#set grid ls 9
#set border ls 101
#set tics scale 1.2 
#
#set label 2 "(b)" font ",23" at -0.49,93 left front
#
#set tmargin at screen 0.11
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   
#
#p F2P_0 u 1:($2+$3) w filledcurves above y1=0 ls 2 fs transparent \
#                               solid 0.2 title '{/Symbol a}-spin',\
#  F2P_0 u 1:($2+$3) w l ls 2 notitle ' ',\
#  F2P_0 u 1:($6+$7) w filledcurves above y1=0 ls 3 fs transparent \
#                               solid 0.2 title '{/Symbol b}-spin',\
#  F2P_0 u 1:($6+$7) w l ls 3 notitle ' '
#
#unset multiplot

############################### (4) DOS/PDOS ###################################
#
#reset
#clear
#
#set ls 1  lw 3.0 dt 1 lc 0
#set ls 2  lw 3.5 dt 1 lc rgb '#CD2626'  #Schoene Rot
#set ls 3  lw 3.5 dt 1 lc rgb '#0000EE'  #Schoene Blau
#set ls 4  lw 3.0 dt 1 lc 8
#set ls 5  lw 2.0 dt 3 lc 5
#set ls 6  lw 2.0 dt 2 lc 6
#set ls 9  lw 0.7 dt 3 lc 0
#set ls 22 lw 2.0 dt 1 lc rgb '#E640EC'  #Schoene Purpur
#set ls 33 lw 2.0 dt 1 lc rgb '#00C5CD'  #Schoene Magenta
#
#set ls 1   lw 3 dt "--" lc 0 
#set ls 2   lw 3 dt 1 lc 1
#set ls 3   lw 3 dt 1 lc 3
#set ls 4   lw 3 dt ".." lc 4
#set ls 5   lw 3 dt 1 lc 3
#set ls 6   lw 4 dt ".." lc 7
#set ls 9   lw 1.3 dt 3 lc 0
#set ls 101 lw 1.2 lc 0                  # Fuer Achsen und Tics sowie Kisten
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Helvetica, 22'
#
#set output '2-TbPc-Antipar-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-SR-CDFT\
#-Mg6-C26-Mg6-C26-up-down-DOS_PDOS.png'
##set output '2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-SR-CDFT-Mg6-\
##C26-Mg6-C26-UP-UP-DOS_PDOS.png'
#
#set title "DOS/PDOS: 16 periods of (9,0) CNT + 2TbPc_2 (FE-AF); CDFT" font \
#'Baskerville, 22'
##set title "DOS/PDOS: 16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); CDFT" font \
##'Baskerville, 22'
#
#F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-up-down/out-alpha-sp-ng-shift.out 2-TbPc-Antipar-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-ng-shift.out"
#
##F2P_0 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
##C26-Mg6-C26-UP-UP/out-alpha-sp-ng-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT\
##_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-ng-1eV.out"
#
#F2P_1 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-up-down/out-alpha-sp-ng-1eV-PDOS.out 2-TbPc-Antipar-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-ng-1eV-PDOS.out"
#
##F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-\
##Mg6-C26-UP-UP/out-alpha-sp-ng-1eV-PDOS.out 2-TbPc-FE-FE-16_per-9_0_CNT\
##_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-ng-1eV-PDOS.out"
#
#XTICS  = "-0.5 , 0.1 , 0.5"
#YTICS  = "0 , 20 , 100"
#XRANGE = "[ -0.5 : 0.5 ]"
#YRANGE = "[ 0 : 100 ]"
#
#set tics font ",19" 
#set xrange @XRANGE
#set yrange @YRANGE
#
#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS out nomirror offset 0.4,0
#set mxtics 2
#set mytics 2
#
#set grid noxtics
#set grid noytics
#set xlabel "Energy (eV)"        font ",21" offset 0,0.7
#set ylabel "DOS/PDOS (eV^{-1})" font ",21" offset 2.5,0
#
#set key top right opaque font ",14" box ls 101 width -0.5 height 1 \
#                                   maxcols 2 spacing 1.1 samplen 2
##set style textbox opaque noborder
#
#set grid ls 9
#set border ls 101
#set tics scale 1.2 
#
#set label 2 "(a)" font ",26" at -0.49,93 left front
#
#set tmargin at screen 0.9
#set bmargin at screen 0.12
#set lmargin at screen 0.11
#set rmargin at screen 0.96
#
#
#p F2P_0 u 1:($2+$5) w filledcurves above y1=0 ls 22 fs transparent solid \
#                                                  0.15 title 'Total DOS',\
#  F2P_0 u 1:($2+$5) w l ls 22 notitle ' ',\
#  F2P_1 u 1:3 w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title \
#                                           'PDOS: 2-SMMs, {/Symbol a}-spin',\
#  F2P_1 u 1:3 w l ls 2 notitle ' ',\
#  F2P_1 u 1:7 w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title \
#                                           'PDOS: 2-SMMs, {/Symbol b}-spin',\
#  F2P_1 u 1:7 w l ls 3 notitle ' '

################################## (5) T(E) ###################################

#reset
#clear
#
#set ls 1  lw 3.0 dt 1 lc 0
#set ls 2  lw 3.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
#set ls 3  lw 3.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
#set ls 4  lw 3.0 dt 1 lc 8
#set ls 5  lw 2.0 dt 3 lc 5
#set ls 6  lw 2.0 dt 2 lc 6
#set ls 9  lw 0.7 dt 3 lc 0
#set ls 22 lw 4.5 dt 1 lc rgb "#E640EC"  #Schoene Purpur
#set ls 33 lw 4.5 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
#
#set ls 1   lw 3 dt "--" lc 0 
#set ls 2   lw 3 dt 1 lc 1
#set ls 3   lw 3 dt 1 lc 3
#set ls 4   lw 3 dt ".." lc 4
#set ls 5   lw 3 dt 1 lc 3
#set ls 6   lw 4 dt ".." lc 7
#set ls 9   lw 1.3 dt 3 lc 0
#set ls 101 lw 1.2 lc 0                  # Fuer Achsen und Tics sowie Kisten
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Helvetica, 22'
#
#set output '2-TbPc-Antipar-FE-FE-16_per-9_0_CNT_Ohne_metall-1eVrange-DZVP-\
#Mg6-C26-up-down-UP-UP-Trans.png'
#
#set title "Transmission: 16 periods of (9,0) CNT + 2TbPc_2 (FE-AF / FE-FE); \
#CDFT" font 'Baskerville, 22'
#
#F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-up-down/out-alpha-sp-ng-shift.out 2-TbPc-Antipar-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-ng-shift.out"
#
#F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-\
#C26-Mg6-C26-UP-UP/out-alpha-sp-ng-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-ng-1eV.out"
#
#XTICS  = "-0.5,0.1,0.5"
#YTICS  = "0,1,6"
#XRANGE = "[-0.5:0.5]"
#YRANGE = "[0:6]"
#
#set tics font ",19"
#set xrange @XRANGE
#set yrange @YRANGE
#
#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS out nomirror offset 0.4,0
#set mxtics 2
#set mytics 2
#
#set grid noxtics
#set grid noytics
#set xlabel "Energy (eV)" font ",21" offset 0,0.7
#set ylabel "T (a.u.)"    font ",21" offset 1.5,0
#
#set key bottom right opaque font ",14" box ls 101 width -3 height 1 \
#                                    maxcols 2 spacing 1.1 samplen 2
#set style textbox opaque noborder
#
#set grid ls 9
#set border ls 101
#set tics scale 1.2 
#
#set label 2 "(a)" font ",26" at -0.49,5.7 left front
#
#set tmargin at screen 0.9
#set bmargin at screen 0.12
#set lmargin at screen 0.09
#set rmargin at screen 0.96
#
#p F2P_0 u 1:($3+$6) w l ls 22 title 'Total Transmission: FE-AF',\
#  F2P_1 u 1:($3+$6) w l ls 33 title 'Total Transmission: FE-FE',\
