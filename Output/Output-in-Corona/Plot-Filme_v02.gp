#################    Fuer DOS, T und E niveaus zusammen    #############
#
#reset
#clear
#
#set ls 1  lw 3.0 dt 1 lc 0
#set ls 2  lw 4.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
#set ls 3  lw 4.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
#set ls 4  lw 3.0 dt ".." lc 4
#set ls 5  lw 2.0 dt 3 lc 5
#set ls 6  lw 2.0 dt 2 lc 6
#set ls 9  lw 1.3 dt 3 lc 0
#set ls 22 lw 3.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
#set ls 33 lw 3.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
#set ls 44 lw 3.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)
#
#set ls 11  lw 1.0 dt ".." lc 0 
#set ls 12  lw 1.0 dt ".." lc "#660033"
#set ls 13  lw 3.0 dt 1    lc 1
#set ls 14  lw 3.0 dt 1    lc 3
#set ls 15  lw 3.0 dt 1    lc 3
#set ls 101 lw 1.2         lc 0          # Fuer Achsen und Tics sowie Kisten
#
#set macros
#
#### Toy ###
##XRANGEDOS = "[ 0 : 15 ]"
##XTICSDOS  = "0 , 5 , 15"
##YRANGEDOS = "[ -0.2 : 0.2 ]"
##YTICSDOS  = "-0.2 , 0.1, 0.2"
##
##XRANGET = "[ -0.2 : 0.2 ]"
##XTICST  = "-0.2 , 0.1 , 0.2"
##YRANGET = "[ 0 : 2 ]"
##YTICST  = "0 , 0.5 , 2"
#### --- ###
#
#### CNT-SMM ###
#XRANGEDOS = "[ -0.3 : 0.3 ]"
#XTICSDOS  = "-0.3 , 0.1 , 0.3"
#YRANGEDOS = "[ 0 : 400 ]"
#YTICSDOS  = "0 , 50, 400"
#
#XRANGET = "[ -0.3 : 0.3 ]"
#XTICST  = "-0.3 , 0.1 , 0.3"
#YRANGET = "[ 0 : 5 ]"
#YTICST  = "0 , 1 , 5"
#### ------- ###
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 11"
#
#set grid ls 9
#set grid noxtics
#set grid ytics
#set grid mytics
#set border ls 101
#set tics scale 1.0 
#
#set key top right opaque font ",11" 
#set style textbox opaque noborder
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
#### --- ###
#
#### CNT-SMM ###
##F2P_0_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
##-C26-Mg6-C26-up-down/energies-alpha-sp-g.out 2-TbPc-Antipar-16_per-9_0_CNT\
##_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/energies-beta-sp-g.out"
#F2P_1_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
#-C26-Mg6-C26-up-down/out-alpha-sp-g-1eV.out 2-TbPc-Antipar-16_per-9_0_CNT\
#_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-g-1eV.out"
#
##F2P_0_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
##-Mg6-C26-UP-UP/energies-alpha-sp-g.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
##-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/energies-beta-sp-g.out"
#F2P_1_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
#-Mg6-C26-UP-UP/out-alpha-sp-g-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
#-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-g-1eV.out"
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
#do for [i=0:349] {
##do for [i=0:299] {
##do for [i=0:399] {
##do for [i=0:499] {
#set multiplot layout 2,1 rowsfirst \
#
#set format x 
#set format y
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mxtics 2 
#set mytics 2
#set yzeroaxis 
#set xlabel 'E (eV)' font ",11"  offset 0,0
#set ylabel 'DOS (eV^{-1})' font ",11"  offset 0,-3
#
#unset title
#
#set tmargin at screen 0.07
#set bmargin at screen 0.5
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
##p  F2P_1_0 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
##   F2P_1_0 u 7:2 every :::i::i w l ls 3 notitle ''
#p  F2P_1_0 u 2:3 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1_0 u 2:7 every :::i::i w l ls 3 notitle ''
#
#set format y ''
#unset ylabel
#
#set tmargin at screen 0.07
#set bmargin at screen 0.5
#set lmargin at screen 0.55
#set rmargin at screen 0.98  
#
#p  F2P_1_1 u 2:3 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1_1 u 2:7 every :::i::i w l ls 3 notitle ''
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
#unset xlabel
#unset ylabel
##set xlabel 'E (eV)' font ",11"  offset 0,2
#set ylabel 'T(E) (a.u.)' font ",11"  offset 0,0
#
#set key top left opaque font ",12" 
#set key samplen 0
#set style textbox opaque noborder
#
#unset arrow 1
#unset arrow 2
#unset arrow 3
#
#set tmargin at screen 0.55
#set bmargin at screen 0.95
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
#### Fuer CNT + 2SMM 
#p F2P_1_0 u 2:4 every :::i::i w l ls 2 title '{/Symbol a}',\
#  F2P_1_0 u 2:8 every :::i::i w l ls 3 title '{/Symbol b}'
#  #F2P_1_0 u 2:($4+$8) every :::i::i w l ls 33 title 'FE-AF',\
#
#set tmargin at screen 0.55
#set bmargin at screen 0.95
#set lmargin at screen 0.55
#set rmargin at screen 0.98	
#
#set format y ''
#unset ylabel
#
#### Fuer CNT + 2SMM 
#p F2P_1_1 u 2:4 every :::i::i w l ls 2 title '{/Symbol a}',\
#  F2P_1_1 u 2:8 every :::i::i w l ls 3 title '{/Symbol b}',\
#  F2P_1_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                      notitle '' offset 20,19 boxed font 'Arial, 11'
#  #F2P_1_1 u 2:($4+$8) every :::i::i w l ls 33 title 'FE-FE',\
#
#unset multiplot
#}
#
#################    Fuer T alpha / beta unabhaendig (Statisches Bild)    #############

reset
clear

set ls 1  lw 3.0 dt 1 lc 0
set ls 2  lw 4.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
set ls 3  lw 4.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
set ls 4  lw 3.0 dt ".." lc 4
set ls 5  lw 2.0 dt 3 lc 5
set ls 6  lw 2.0 dt 2 lc 6
set ls 9  lw 1.3 dt 3 lc 0
set ls 22 lw 4.5 dt 1 lc rgb "#E640EC"  #Schoene Purpur
set ls 33 lw 4.5 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
set ls 44 lw 3.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)

set ls 11  lw 1.0 dt ".." lc 0 
set ls 12  lw 1.0 dt ".." lc "#660033"
set ls 13  lw 3.0 dt 1    lc 1
set ls 14  lw 3.0 dt 1    lc 3
set ls 15  lw 3.0 dt 1    lc 3
set ls 101 lw 1.2         lc 0          # Fuer Achsen und Tics sowie Kisten

set macros

### Toy modelle ###
#XRANGET = "[ -0.2 : 0.2 ]"
#XTICST  = "-0.2 , 0.1 , 0.2"
#YRANGET = "[ 0 : 0.5 ]"
#YTICST  = "0 , 0.1 , 0.5"
#--  --#
### Toy modelle ###
XRANGET = "[ -0.2 : 0.2 ]"
XTICST  = "-0.2 , 0.1 , 0.2"
YRANGET = "[ 0 : 0.5 ]"
YTICST  = "0 , 0.1 , 0.5"
#--  --#

#set output 'Toy_modell_168_split.png'
set output 'CNT_2SMM_split.png'
set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"

#set grid ls 9
#set grid noxtics
#set grid ytics
#set grid mytics
set border ls 101
set tics scale 1.0 

set key top right opaque font ",20"
set key samplen 1
set style textbox opaque noborder
set tics font ",19"

#F2P_0_0 = "< paste Toy_modelle_168/FE-AF/out-alpha-sp-g.out Toy_modelle_168/FE-AF/\
#out-beta-sp-g.out"
#F2P_0_1 = "< paste Toy_modelle_168/FE-FE/out-alpha-sp-g.out Toy_modelle_168/FE-FE/\
#out-beta-sp-g.out"

F2P_0_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
-C26-Mg6-C26-up-down/out-alpha-sp-g-1eV.out 2-TbPc-Antipar-16_per-9_0_CNT\
_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-g-1eV.out"
F2P_0_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
-Mg6-C26-UP-UP/out-alpha-sp-g-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-g-1eV.out"

Fermi_E_voll = 0
Fermi_E_eq_z = -3.1

#!Schwarzer Pfeil
set style arrow 11 head lc rgb '#131A3D' lw 1.5

set style arrow 01 nohead lc 7 lw 3
set style arrow 1 nohead lc rgb '#EF1414' lw 3

set style arrow 111 nohead lc rgb '#FF3399' lw 3
set style arrow 2   nohead lc rgb '#E640EC' lw 3
set style arrow 3   nohead lc rgb '#00C5CD' lw 3 
set style arrow 22  nohead lc rgb '#CD2626' lw 3
set style arrow 221 head   lc rgb '#252121' lw 2 filled
set style arrow 222 nohead lc rgb '#66B2FF' lw 3
set style arrow 33  nohead lc rgb '#0000EE' lw 3 
set style arrow 331 head   lc rgb '#252121' lw 2 filled

#! --- Anfang von do Loop --- #
#do for [i=349:349] {
do for [i=410:410] {
#set multiplot layout 1,2 rowsfirst
set multiplot

set xrange @XRANGET
set yrange @YRANGET
set xtics  @XTICST out nomirror offset 0,0
set ytics  @YTICST out nomirror offset 0.5,0
#set xzeroaxis ls 1
#set yzeroaxis ls 1
set mxtics 2
set mytics 2

#set format y
set format x ''
unset xlabel
set ylabel 'T (arb. units)' font ",22" offset 2.1,0

set tmargin at screen 0.57
set bmargin at screen 0.95
set lmargin at screen 0.11
set rmargin at screen 0.97

p  F2P_0_0 u 2:4 every :::i::i w l ls 2 notitle "FE-AF",\
   F2P_0_0 u 2:8 every :::i::i w l ls 3 notitle "FE-AF",\
#   F2P_0_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                             notitle '' offset 21,8.5 boxed font 'Arial, 20'
#   F2P_0_0 u 2:($4+$8) every :::i::i w l ls 22 notitle "FE-AF"

#unset xtics
set format x
#set format y ''
#unset ylabel
set ytics  @YTICST out nomirror offset 0.5,0

set xlabel 'E (eV)' font ",22" offset 0.0,0.4
set ylabel 'T (arb. units)' font ",22" offset 2.1,0.0

set tmargin at screen 0.51
set bmargin at screen 0.13
set lmargin at screen 0.11
set rmargin at screen 0.97

p  F2P_0_1 u 2:4 every :::i::i w l ls 2 notitle "FE-FE" ,\
   F2P_0_1 u 2:8 every :::i::i w l ls 3 notitle "FE-FE" 
#   F2P_0_1 u 2:($4+$8) every :::i::i w l ls 33 notitle "FE-FE" ,\

unset multiplot
}
