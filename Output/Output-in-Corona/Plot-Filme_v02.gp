##################### Fuer DOS, T und E niveaus zusammen #####################
#
#reset
#clear
#
#load '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
#Jorges_Farben.gp'
#
#set macros
#
### Toy ###
#XRANGEDOS = "[ -0.5 : 0.5 ]"
#XTICSDOS  = "-0.5 , 0.1 , 0.5"
#YRANGEDOS = "[ 0 : 50 ]"
#YTICSDOS  = "0 , 10 , 50"
#
#XRANGET = "[ -0.5 : 0.5 ]"
#XTICST  = "-0.5 , 0.1 , 0.5"
#YRANGET = "[ 0 : 2 ]"
#YTICST  = "0 , 0.5 , 2"
### --- ###
#
##### CNT-SMM ###
##XRANGEDOS = "[ -0.3 : 0.3 ]"
##XTICSDOS  = "-0.3 , 0.1 , 0.3"
##YRANGEDOS = "[ 0 : 400 ]"
##YTICSDOS  = "0 , 50, 400"
##
##XRANGET = "[ -0.3 : 0.3 ]"
##XTICST  = "-0.3 , 0.1 , 0.3"
##YRANGET = "[ 0 : 5 ]"
##YTICST  = "0 , 1 , 5"
##### ------- ###
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 15"
#
##set grid ls 9
##set grid noxtics
##set grid ytics
##set grid mytics
#set border ls 101
#set tics scale 1.0 
#
##set key top right opaque font ",11" 
##set key top left opaque box ls 101
##set style textbox opaque noborder
#set border lw 1.3
#
#### Toy ###
##F2P_0_0 = "< paste Toy_modelle_175/FE-AF/energies-alpha-sp-g.out Toy_modelle_175/FE-AF/\
##energies-beta-sp-g.out "
##F2P_1_0 = "< paste Toy_modelle_175/FE-AF/out-alpha-sp-g.out Toy_modelle_175/FE-AF/\
##out-beta-sp-g.out"
##F2P_0_1 = "< paste Toy_modelle_175/FE-FE/energies-alpha-sp-g.out Toy_modelle_175/FE-FE/\
##energies-beta-sp-g.out"
##F2P_1_1 = "< paste Toy_modelle_175/FE-FE/out-alpha-sp-g.out Toy_modelle_175/FE-FE/out-\
##beta-sp-g.out"
#F2P_1_0 = "< paste Toy_modelle_d25/FE-AF/out-alpha-sp-g.out Toy_modelle_d25/FE-AF/\
#out-beta-sp-g.out"
#F2P_1_1 = "< paste Toy_modelle_d25/FE-FE/out-alpha-sp-g.out Toy_modelle_d25/FE-FE/\
#out-beta-sp-g.out"
#### --- ###
#
#### CNT-SMM ###
##F2P_0_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
##-C26-Mg6-C26-up-down/energies-alpha-sp-g.out 2-TbPc-Antipar-16_per-9_0_CNT\
##_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/energies-beta-sp-g.out"
##F2P_1_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
##-C26-Mg6-C26-up-down/out-alpha-sp-g-1eV.out 2-TbPc-Antipar-16_per-9_0_CNT\
##_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-g-1eV.out"
#
##F2P_0_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
##-Mg6-C26-UP-UP/energies-alpha-sp-g.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
##-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/energies-beta-sp-g.out"
##F2P_1_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
##-Mg6-C26-UP-UP/out-alpha-sp-g-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
##-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-g-1eV.out"
#### --- ###
#
##!Schwarzer Pfeil
#set style arrow 11 head lc rgb '#131A3D' lw 1.5
#
#set style arrow 01 nohead lc 7 lw 3
#set style arrow 1 nohead lc rgb '#EF1414' lw 3
#
#set style arrow 111 nohead lc rgb '#FF3399' lw 3
#set style arrow 2   nohead lc rgb '#E640EC' lw 3
#set style arrow 3   nohead lc rgb '#00C5CD' lw 3 
#set style arrow 22  nohead lc rgb '#CD2626' lw 4
#set style arrow 221 head   lc rgb '#252121' lw 2 filled
#set style arrow 222 nohead lc rgb '#66B2FF' lw 3
#set style arrow 33  nohead lc rgb '#0000EE' lw 4 
#set style arrow 331 head   lc rgb '#252121' lw 2 filled
#
##! --- Anfang von do Loop --- #
#do for [i=0:199] {
##do for [i=0:299] {
##do for [i=0:399] {
##do for [i=0:499] {
#set multiplot layout 2,1
#
#set format x ' '
#set format y
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mxtics 2 
#set mytics 2
#set yzeroaxis 
#unset xlabel
##set xlabel 'E (eV)' font ",13"  offset 0,0
#set ylabel 'DOS (eV^{-1})' font ",13"  offset 0,0
#
#set key top left opaque box ls 101 width 0.5 height 0.6 \
#                                   spacing 1.3 samplen 2
#
#unset title
#
#set tmargin at screen 0.55
#set bmargin at screen 0.95
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
##p  F2P_1_0 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
##   F2P_1_0 u 7:2 every :::i::i w l ls 3 notitle ''
#p F2P_1_0 u 2:3 every :::i::i w l ls 2 title '{/Symbol a}' ,\
#  F2P_1_0 u 2:3 every :::i::i w filledcurves x1 ls 2 fs transparent solid 0.3 notitle " ",\
#  F2P_1_0 u 2:7 every :::i::i w l ls 3 title '{/Symbol b}',\
#  F2P_1_0 u 2:7 every :::i::i w filledcurves x1 ls 3 fs transparent solid 0.3 notitle " ",\
#
#set tmargin at screen 0.55
#set bmargin at screen 0.95
#set lmargin at screen 0.55
#set rmargin at screen 0.98	
#
#set format y ''
#unset ylabel
#unset key
#
#p F2P_1_1 u 2:3 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#  F2P_1_1 u 2:3 every :::i::i w filledcurves x1 ls 2 fs transparent solid 0.3 notitle " ",\
#  F2P_1_1 u 2:7 every :::i::i w l ls 3 notitle '',\
#  F2P_1_1 u 2:7 every :::i::i w filledcurves x1 ls 3 fs transparent solid 0.3 notitle " ",\
#
########################################
#
#set format x 
#set format y
#set xrange @XRANGET
#set yrange @YRANGET
#set xtics  @XTICST out nomirror offset 0,0
#set ytics  @YTICST out nomirror offset 0,0
#
##unset xlabel
##unset ylabel
#set xlabel 'E (eV)' font ",13"  offset 0,0
#set ylabel 'T(E) (a.u.)' font ",13"  offset 1.5,0
#
##set key top left opaque #font ",13" 
##set key samplen 0
#set style textbox opaque noborder
#
#unset arrow 1
#unset arrow 2
#unset arrow 3
#
#set tmargin at screen 0.09
#set bmargin at screen 0.5
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
#### Fuer CNT + 2SMM 
#p F2P_1_0 u 2:4 every :::i::i w l ls 2 notitle '{/Symbol a}',\
#  F2P_1_0 u 2:8 every :::i::i w l ls 3 notitle '{/Symbol b}',\
#  F2P_1_0 u 0:0:(sprintf( "{/Symbol e}^{3}_{{/Symbol a},1}: %2.3f", (-0.17-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,32 boxed \
#                 font 'Arial, 13',\
#  F2P_1_0 u 0:0:(sprintf( "{/Symbol e}^{3}_{{/Symbol a},2}: %2.3f", (0.3-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,30 boxed \
#                 font 'Arial, 13',\
#  F2P_1_0 u 0:0:(sprintf( "{/Symbol e}^{4}_{{/Symbol a},1}: %2.3f", (0.10-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,28 boxed \
#                 font 'Arial, 13',\
#  F2P_1_0 u 0:0:(sprintf( "{/Symbol e}^{4}_{{/Symbol a},2}: %2.3f", (0.3-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,26 boxed \
#                 font 'Arial, 13',\
##  F2P_1_0 u 0:0:(sprintf( "E^{1}_{{/Symbol a},1}: %2.3f", (-0.26-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,32 boxed \
##                 font 'Arial, 13',\
##  F2P_1_0 u 0:0:(sprintf( "E^{2}_{{/Symbol a},1}: %2.3f", (0.26-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,30 boxed \
##                 font 'Arial, 13',\
##  F2P_1_0 u 0:0:(sprintf( "E^{1}_{{/Symbol a},1}: %2.3f", (-0.26-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,30 boxed \
##                 font 'Arial, 13',\
##  F2P_1_0 u 0:0:(sprintf( "E^{2}_{{/Symbol a},1}: %2.3f", (0.26-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,30 boxed \
##                 font 'Arial, 13',\
##  F2P_1_0 u 0:0:(sprintf( "{/Symbol e}^{3}_{{/Symbol a},1}: %2.3f", (-0.17-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,32 boxed \
##                 font 'Arial, 13',\
##  F2P_1_0 u 0:0:(sprintf( "{/Symbol e}^{4}_{{/Symbol a},1}: %2.3f", (0.10-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,30 boxed \
##                 font 'Arial, 13'
#
#set tmargin at screen 0.09
#set bmargin at screen 0.5
#set lmargin at screen 0.55
#set rmargin at screen 0.98  
#
#set format y ''
#unset ylabel
#
#### Fuer CNT + 2SMM 
#p F2P_1_1 u 2:4 every :::i::i w l ls 2 notitle '{/Symbol a}',\
#  F2P_1_1 u 2:8 every :::i::i w l ls 3 notitle '{/Symbol b}',\
#  F2P_1_1 u 0:0:(sprintf( "{/Symbol e}^{3}_{{/Symbol a},1}: %2.3f", (-0.17-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,32 boxed \
#                 font 'Arial, 13',\
#  F2P_1_1 u 0:0:(sprintf( "{/Symbol e}^{3}_{{/Symbol a},2}: %2.3f", (0.3-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,30 boxed \
#                 font 'Arial, 13',\
#  F2P_1_1 u 0:0:(sprintf( "{/Symbol e}^{4}_{{/Symbol a},1}: %2.3f", (-0.17-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,28 boxed \
#                 font 'Arial, 13',\
#  F2P_1_1 u 0:0:(sprintf( "{/Symbol e}^{4}_{{/Symbol a},2}: %2.3f", (0.3-$1) )) \
#                 every :::i::i w labels notitle '' offset 15,26 boxed \
#                 font 'Arial, 13',\
##  F2P_1_1 u 0:0:(sprintf( "E^{1}_{{/Symbol a},1}: %2.3f", (-0.26-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,32 boxed \
##                 font 'Arial, 13',\
##  F2P_1_1 u 0:0:(sprintf( "E^{2}_{{/Symbol a},1}: %2.3f", (0.26-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,30 boxed \
##                 font 'Arial, 13',\
##  F2P_1_1 u 0:0:(sprintf( "{/Symbol e}^{3}_{{/Symbol a},1}: %2.3f", (-0.17-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,32 boxed \
##                 font 'Arial, 13',\
##  F2P_1_1 u 0:0:(sprintf( "{/Symbol e}^{4}_{{/Symbol a},1}: %2.3f", (-0.17-$1) )) \
##                 every :::i::i w labels notitle '' offset 15,30 boxed \
##                 font 'Arial, 13'
##  F2P_1_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                      notitle '' offset 20,19 boxed font 'Arial, 13'
#
#unset multiplot
#}
#
############# Fuer T/DOS alpha / beta unabhaendig (Statisches Bild) ############

reset
clear

load "/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
Jorges_Farben.gp"

set macros

### Toy modelle ###
XRANGE    = "[ -0.5 : 0.5 ]"
XTICS     = "-0.5 , 0.1 , 0.5"
YRANGEDOS = "[ 0 : 50 ]"
YTICSDOS  = "0 , 10 , 50"
YRANGET   = "[ 0 : 1.0 ]"
YTICST    = "0 , 0.2 , 1.0"
#--  --#
### Echtes System modelle ###
#XRANGE = "[ -0.2 : 0.2 ]"
#XTICS  = "-0.2 , 0.1 , 0.2"
#YRANGET = "[ 0 : 0.5 ]"
#YTICST  = "0 , 0.1 , 0.5"
#--  --#

#set output 'Dritte_runde_toy_modelle/Toy_modelle_d17/Toy_modell_d17_T.png'
set output'/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Dissertation/Bilder/\
Toy_model/Toy_modell_d49_T.png'
#set output 'Toy_modelle_d49/Toy_modell_d49_T.png'
#set output 'Toy_modelle_d65/Toy_modell_d65_T_split.png'
#set output 'CNT_2SMM_split.png'
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22" #Veroeffentl.
set terminal pngcairo size 1024,768 enhanced font "Helvetica, 24" #Dissertation  

set border ls 101
set tics scale 1.0 

F2P_0_0 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d49/FE-AF/\
out-alpha-sp-g.out Dritte_runde_toy_modelle/Toy_modelle_d49/FE-AF/\
out-beta-sp-g.out"
F2P_0_1 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d49/FE-FE/\
out-alpha-sp-g.out Dritte_runde_toy_modelle/Toy_modelle_d49/FE-FE/\
out-beta-sp-g.out"

#F2P_0_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
#-C26-Mg6-C26-up-down/out-alpha-sp-g-1eV.out 2-TbPc-Antipar-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-g-1eV.out"
#F2P_0_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
#-Mg6-C26-UP-UP/out-alpha-sp-g-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
#-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-g-1eV.out"

#set key top right opaque font ",20" samplen 2 #Veroeffentlichung
#set key top right opaque font ",19" samplen 1 spacing 1.2 #Dissertation
##Dissertation
set key top right opaque font ",19" box ls 101 width -0.5 height 0.5 samplen 1

set border ls 101

Fermi_E_voll = 0
Fermi_E_eq_z = -3.1

## d01
#val_00 = 0.1
#val_01 = 0.07
#val_02 = -0.07
#set label 1 "0.1" font ",19" at 0.2,5 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 999 front
#set arrow 3 from val_02, graph 0 to val_02, graph 1 arrowstyle 999 front

## d02
#val_00 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front

## d07
#val_00 = -0.17
#val_01 =  0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),5 right front
#set arrow 3 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "0.17" font ",19" textcolor ls 88 at (val_01+0.05),5 left front
#set arrow 4 from val_01, graph 0 to val_01, graph 1 arrowstyle 888

#val_00 = -0.17
#val_01 =  0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "0.17" font ",19" textcolor ls 88 at (val_01+0.05),0.2 left front
#set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

## d17
#val_00 = -0.17
#val_01 =  0.17
#set label 1 "-0.17" font ",19" at (val_00-0.02),20 right front
#set arrow 3 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "0.17" font ",19" textcolor ls 88 at (val_01+0.02),20 left front
#set arrow 4 from val_01, graph 0 to val_01, graph 1 arrowstyle 888

#val_00 = -0.17
#val_01 =  0.17
#set label 1 "-0.17" font ",19" at (val_00-0.01),0.4 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "0.17" font ",19" textcolor ls 88 at (val_01+0.01),0.4 left front
#set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

## d49
val_00 = -0.03
val_01 = -0.052
set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999
set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 999

### d65
#val_00 = -0.03
#val_01 = -0.052
#set arrow 1 from val_00, graph 0 to val_00, graph 1 \
#arrowstyle 999
#set arrow 2 from val_01, graph 0 to val_01, graph 1 \
#arrowstyle 999

#! --- Anfang von do Loop --- #
#do for [i=596:596] {
#do for [i=412:412] {
#do for [i=410:410] {
do for [i=149:149] {
#do for [i=0:0] {
#set multiplot layout 1,2 rowsfirst
set multiplot

set xrange @XRANGE
set xtics  @XTICS    out nomirror offset 0,0
set mxtics 2
set mytics 2

set format x ''
unset xlabel

#set yrange @YRANGEDOS
#set ytics  @YTICSDOS out nomirror offset 0.5,0
set yrange @YRANGET
set ytics  @YTICST out nomirror offset 0.5,0
#set ylabel 'T (arb. units)' font ",22" offset 2.1,0 #Veroeffentlichung
#set ylabel 'DOS (eV^{-1})'  offset 1.6,0 #Dissertation
set ylabel 'T (arb. units)'  offset 2.1,0 #Dissertation

set label 11 "(a)" font ",23" at -0.49,0.95 left front
#set label 11 "(c)" font ",23" at -0.49,0.95 left front

set tmargin at screen 0.57
set bmargin at screen 0.95
set lmargin at screen 0.11
set rmargin at screen 0.96

#p F2P_0_0 u 2:3 every :::i::i w l ls 2 title "FE-AF: {/Symbol a}",\
#  F2P_0_0 u 2:3 every :::i::i w filledcurves x1 ls 2 fs \
#                                           transparent solid 0.3 notitle " " ,\
#  F2P_0_0 u 2:7 every :::i::i w l ls 3 title "FE-AF: {/Symbol b}",\
#  F2P_0_0 u 2:7 every :::i::i w filledcurves x1 ls 3 fs \
#                                           transparent solid 0.3 notitle " " ,\
#   1/0 t "{/Symbol e}^{3}_{{/Symbol a},1}" ls 999,\
#   1/0 t "{/Symbol e}^{4}_{{/Symbol a},1}" ls 888

#p  F2P_0_0 u 1:($3+$8) every :::i::i w l ls 22 title \
#                                           "FE-AF: {/Symbol a} + {/Symbol b}",\

p  F2P_0_0 u 2:4 every :::i::i w l ls 2 title "FE-AF: {/Symbol a}",\
   F2P_0_0 u 2:8 every :::i::i w l ls 3 title "FE-AF: {/Symbol b}",\
#   1/0 t "{/Symbol e}^{3}_{{/Symbol a},1}" ls 999,\
#   1/0 t "{/Symbol e}^{4}_{{/Symbol a},1}" ls 888

#  F2P_0_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                          notitle '' offset 21,3.5 boxed font 'Arial, 20'

#p F2P_0_0 u 1:($2+$5) every :::i::i w l ls 22 title \
#                                           "FE-AF: {/Symbol a} + {/Symbol b}",\
#  F2P_0_0 u 1:($2+$5) every :::i::i w filledcurves x1 ls 22 \
#                                      fs transparent solid 0.3 notitle " " ,\
#  1/0 t "{/Symbol e}^{3}_{{/Symbol a},1}" ls 999,\
#  1/0 t "{/Symbol e}^{4}_{{/Symbol a},1}" ls 888

#  F2P_0_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                          notitle '' offset 21,3.5 boxed font 'Arial, 20'

#p F2P_0_0 u 2:($4+$8) every :::i::i w l ls 22 title \
#                                              "FE-AF: {/Symbol a} + {/Symbol b}"

#  F2P_0_0 u 2:3 every :::i::i w l ls 2 notitle " ",\
#  F2P_0_0 u 2:7 every :::i::i w filledcurves x1 ls 2 fs transparent solid 0.3
#                                                                 notitle " " ,\
#  F2P_0_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                          notitle '' offset 21,8.5 boxed font 'Arial, 20'

unset arrow 1 
unset arrow 2
#unset arrow 3
#unset label 1
#unset label 11

set label 11 "(b)" font ",23" at -0.49,0.95 left front
#set label 11 "(d)" font ",23" at -0.49,0.95 left front

## d02
#val_00 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front

## d07
#val_00 = -0.17
#val_01 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),5 right front
#set arrow 3 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "-0.17" font ",19" textcolor ls 88 at (val_01+0.05),5 left front
#set arrow 4 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

#val_00 = -0.17
#val_01 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "0.17" font ",19" textcolor ls 88 at (val_01+0.05),0.2 left front
#set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

## d17
#val_00 = -0.17
#val_01 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.02),25 right front
#set arrow 3 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "-0.17" font ",19" textcolor ls 88 at (val_01-0.02),20 right front
#set arrow 4 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

#val_00 = -0.17
#val_01 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.01),0.6 right front
#set arrow 3 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "-0.17" font ",19" textcolor ls 88 at (val_01-0.01),0.5 right front
#set arrow 4 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

#val_00 = -0.17
#val_01 = -0.17
#set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
#set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 2 "0.17" font ",19" textcolor ls 88 at (val_01+0.05),0.2 left front
#set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 888 front

## d49
val_00 = -0.03
val_01 = 0
set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999

set format x
#set yrange @YRANGET
#set ytics  @YTICST out nomirror offset 0.5,0
#unset key

#set xlabel 'E (eV)' offset 0.0,0.4 #Veroeffentlichung
#set ylabel 'T (arb. units)' font ",22" offset 2.1,0.0 #Veroeffentlichung
set xlabel 'E + E_{f} (eV)' offset 0.0,0.4 #Dissertation
#set ylabel 'DOS (eV^{-1})' offset 1.6,0.0 #Dissertation
set ylabel 'T (arb. units)' offset 2.1,0.0 #Dissertation

set tmargin at screen 0.51
set bmargin at screen 0.13
set lmargin at screen 0.11
set rmargin at screen 0.96

#p F2P_0_1 u 2:3 every :::i::i w l ls 2 title "FE-FE: {/Symbol a}",\
#  F2P_0_1 u 2:3 every :::i::i w filledcurves x1 ls 2 fs \
#                                          transparent solid 0.3 notitle " " ,\
#  F2P_0_1 u 2:7 every :::i::i w l ls 3 title "FE-FE: {/Symbol b}",\
#  F2P_0_1 u 2:7 every :::i::i w filledcurves x1 ls 3 fs \
#                                          transparent solid 0.3 notitle " " ,\
#  1/0 t "{/Symbol e}^{3}_{{/Symbol a},1}" ls 999,\
#  1/0 t "{/Symbol e}^{4}_{{/Symbol a},1}" ls 888

#p F2P_0_1 u 2:($4+$8) every :::i::i w l ls 33 title \
#                                           "FE-FE: {/Symbol a} + {/Symbol b}",\

p F2P_0_1  u 2:4 every :::i::i w l ls 2 title "FE-FE: {/Symbol a}",\
  F2P_0_1  u 2:8 every :::i::i w l ls 3 title "FE-FE: {/Symbol b}",\
#  1/0 t "{/Symbol e}^{3}_{{/Symbol a},1}" ls 999,\
#  1/0 t "{/Symbol e}^{4}_{{/Symbol a},1}" ls 888

#p F2P_0_0 u 1:($2+$5) every :::i::i w l ls 33 title \
#                                           "FE-FE: {/Symbol a} + {/Symbol b}",\
#  F2P_0_0 u 1:($2+$5) every :::i::i w filledcurves x1 ls 33 \
#                                         fs transparent solid 0.3 notitle " ",\
#  1/0 t "{/Symbol e}^{3}_{{/Symbol a},1}" ls 999,\
#  1/0 t "{/Symbol e}^{4}_{{/Symbol a},1}" ls 888

#p F2P_0_1 u 2:($4+$8) every :::i::i w l ls 33 title \
#                                            "FE-FE: {/Symbol a} + {/Symbol b}"

#p F2P_0_0  u 1:3 every :::i::i w l ls 4 title \
#                                "t^{13}_{{/Symbol a}{/Symbol a},11} =  0.1 ",\
#  F2P_0_02 u 1:3 every :::i::i w l ls 5 title \
#                                "t^{13}_{{/Symbol a}{/Symbol a},11} =  0.2 ",\
#  F2P_0_01 u 1:3 every :::i::i w l ls 6 title \
#                                 "t^{13}_{{/Symbol a}{/Symbol a},11} = 0.01",\
#
unset multiplot
}

################ Fuer T/DOS alpha / beta voll (Statisches Bild) ################
#
#reset
#clear
#
#load "/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
#Jorges_Farben.gp"
#
#set macros
#
#### Toy modelle ###
#XRANGE    = "[ -1.0 : 1.0 ]"
#XTICS     = "-1.0 , 0.25 , 1.0"
#YRANGEDOS = "[ 0 : 50 ]"
#YTICSDOS  = "0 , 10 , 50"
#YRANGET   = "[ 0 : 2.0 ]"
#YTICST    = "0 , 0.5 , 2.0"
##--  --#
#### Echtes System modelle ###
##XRANGE = "[ -0.2 : 0.2 ]"
##XTICS  = "-0.2 , 0.1 , 0.2"
##YRANGET = "[ 0 : 0.5 ]"
##YTICST  = "0 , 0.1 , 0.5"
##--  --#
#
#set output'/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Dissertation/Bilder/\
#Toy_model/Toy_modell_d03_d04_d05.png'
##set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22" #Veroeffentl.
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 24" #Dissertation  
#
#set border ls 101
#set tics scale 1.0 
#
#F2P_0_0  = "< paste Dritte_runde_toy_modelle/Toy_modelle_d03/FE-AF/\
#out-alpha-sp-ng.out Dritte_runde_toy_modelle/Toy_modelle_d03/FE-AF/\
#out-beta-sp-ng.out"
#F2P_0_01 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d04/FE-AF/\
#out-alpha-sp-ng.out Dritte_runde_toy_modelle/Toy_modelle_d04/FE-AF/\
#out-beta-sp-ng.out"
#F2P_0_02 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d05/FE-AF/\
#out-alpha-sp-ng.out Dritte_runde_toy_modelle/Toy_modelle_d05/FE-AF/\
#out-beta-sp-ng.out"
#
##F2P_0_1 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d06/FE-FE/\
##out-alpha-sp-g.out Dritte_runde_toy_modelle/Toy_modelle_d06/FE-FE/\
##out-beta-sp-g.out"
#
##set key top right opaque font ",20" samplen 2 #Veroeffentlichung
##set key top right opaque font ",19" samplen 1 spacing 1.2 #Dissertation
###Dissertation
#set key top right opaque font ",19" box ls 101 width -4.5 height 0.3 samplen 1
#
#set border ls 101
#
#Fermi_E_voll = 0
#Fermi_E_eq_z = -3.1
#
### d06, d03
##val_00 = -0.17
##val_01 =  0.17
##unset arrow 1 
##unset arrow 2
##set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
##set arrow 2 from val_01, graph 0 to val_01, graph 1 arrowstyle 999 front
#
##! --- Anfang von do Loop --- #
##do for [i=596:596] {
##do for [i=412:412] {
##do for [i=410:410] {
##do for [i=149:149] {
#do for [i=0:0] {
##set multiplot layout 1,2 rowsfirst
##set multiplot
#
#set xrange @XRANGE
#set xtics  @XTICS    out nomirror offset 0,0
#set mxtics 2
#set mytics 2
#
#set format x ''
#unset xlabel
#
#set yrange @YRANGEDOS
#set ytics  @YTICSDOS out nomirror offset 0.5,0
##set yrange @YRANGET
##set ytics  @YTICST out nomirror offset 0.5,0
##set ylabel 'T (arb. units)' font ",22" offset 2.1,0 #Veroeffentlichung
#set ylabel 'DOS (eV^{-1})'  offset 1.6,0 #Dissertation
##set ylabel 'T (arb. units)'  offset 2.1,0 #Dissertation
#
#set label 11 "(a)" font ",23" at -0.98,47 left front
##set label 11 "(c)" font ",23" at -0.98,1.85 left front
#
##set tmargin at screen 0.57
##set bmargin at screen 0.95
##set lmargin at screen 0.11
##set rmargin at screen 0.96
#
### Full
##set tmargin 0.96
##set bmargin 0.1
##set lmargin 0.11
##set rmargin 0.96
#
##p F2P_0_0  u 1:2 every :::i::i w l ls 2 title \
##                              "FE-AF: {/Symbol e}^{3}_{{/Symbol a},1} =  0.17",\
##  F2P_0_0  u 1:2 every :::i::i w filledcurves x1 ls 2 fs transparent solid 0.3\
##                                                                 notitle " " ,\
##  F2P_0_01 u 1:2 every :::i::i w l ls 22 title \
##                              "FE-AF: {/Symbol e}^{3}_{{/Symbol a},1} = -0.17",\
##  F2P_0_01 u 1:2 every :::i::i w filledcurves x1 ls 22 fs transparent solid 0.3\
##                                                                 notitle " " ,\
#
##p F2P_0_0  u 1:3 every :::i::i w l ls 4 title \
##                                "t^{13}_{{/Symbol a}{/Symbol a},11} =  0.1",\
##  F2P_0_01 u 1:3 every :::i::i w l ls 5 title \
##                                "t^{13}_{{/Symbol a}{/Symbol a},11} =  0.2",\
##  F2P_0_02 u 1:3 every :::i::i w l ls 6 title \
##                                "t^{13}_{{/Symbol a}{/Symbol a},11} = 0.01",\
#
##unset arrow 1 
##unset arrow 2
##unset arrow 3
##unset label 1
##unset label 11
#
##set label 11 "(b)" font ",23" at -0.98,47 left front
##set label 11 "(b)" font ",23" at -0.98,1.85 left front
#
### d02
##val_00 = -0.17
##set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
##set arrow 1 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#
### d03, d04, d05
#val_00 = -0.17
#set arrow 2 from val_00, graph 0 to val_00, graph 1 arrowstyle 999 front
#set label 1 "-0.17" font ",19" at (val_00-0.05),1.1 right front
#
### d06, d03
##val_00 = -0.17
##val_01 =  0.17
##set label 1 "-0.17" font ",19" at (val_00-0.05),0.2 right front
##set label 2 "0.17" font ",19" at (val_01+0.05),0.2 left front
#
### d07
##val_00 = -0.17
##val_01 = -0.17
##set arrow 3 from val_00, graph 0 to val_00, graph 1 \
##arrowstyle 999 front
##set arrow 4 from val_01, graph 0 to val_01, graph 1 \
##arrowstyle 888
#
#set format x
#set yrange @YRANGET
#set ytics  @YTICST out nomirror offset 0.5,0
##unset key
#
##set xlabel 'E (eV)' offset 0.0,0.4 #Veroeffentlichung
##set ylabel 'T (arb. units)' font ",22" offset 2.1,0.0 #Veroeffentlichung
#set xlabel 'E + E_{f} (eV)' offset 0.0,0.4 #Dissertation
##set ylabel 'DOS (eV^{-1})' offset 1.6,0.0 #Dissertation
#set ylabel 'T (arb. units)' offset 2.1,0.0 #Dissertation
#
##set tmargin at screen 0.51
##set bmargin at screen 0.13
##set lmargin at screen 0.11
##set rmargin at screen 0.96
#
### Full
#set tmargin at screen 0.96
#set bmargin at screen 0.13
#set lmargin at screen 0.11
#set rmargin at screen 0.96
#
##p F2P_0_0  u 1:3 every :::i::i w l ls 2 title \
##                             "FE-AF: {/Symbol e}^{3}_{{/Symbol a},1} =  0.17",\
##  F2P_0_01 u 1:3 every :::i::i w l ls 22 title \
##                             "FE-AF: {/Symbol e}^{3}_{{/Symbol a},1} = -0.17",\
#
#p F2P_0_0  u 1:3 every :::i::i w l ls 1001 title \
#                           "FE-AF: t^{13}_{{/Symbol a}{/Symbol a},11} =  0.1 ",\
#  F2P_0_02 u 1:3 every :::i::i w l ls 1002 title \
#                           "FE-AF: t^{13}_{{/Symbol a}{/Symbol a},11} =  0.2 ",\
#  F2P_0_01 u 1:3 every :::i::i w l ls 1006 title \
#                            "FE-AF: t^{13}_{{/Symbol a}{/Symbol a},11} = 0.01",\
#
#unset multiplot
#}
