##################### Fuer Alpha+Beta G und G_cb unabhaengig ##################

reset
clear

set ls 1  lw 3 dt 1 lc 0
set ls 2  lw 3.0 dt 1 lc rgb '#CD2626'  #Schoene Rot
set ls 3  lw 3.0 dt 1 lc rgb '#0000EE'  #Schoene Blau
set ls 4  lw 3 dt 1 lc 8
set ls 5  lw 2 dt 3 lc 5
set ls 6  lw 2 dt 2 lc 6
set ls 9  lw 0.7 dt 3 lc 0
set ls 22 lw 2.5 dt 1 lc rgb '#8F31E2'
set ls 33 lw 3 dt 1 lc rgb '#00C5CD'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
#set terminal gif animate size 1024,768 enhanced font 'Arial, 21'

## Bei Filme, kommentiert
#set output '2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP.png'

XRANGEDOS = "[-0.5:0.5]"
YRANGEDOS = "[0:100]"
XRANGET   = "[-0.5:0.5]"
YRANGET   = "[0:16]"
XTICS     = "-0.5,0.1,0.5"
YTICSDOS  = "0,20,100"
YTICST    = "0,2.0,16"

#F2P_0 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-\
#Mg6-C26-Mg6-C26-UP-UP/out-alpha-sp-g.out 2-TbPc-FE-FE-\
#16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-g.out"

#F2P_0 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
#-Mg6-C26-UP-UP-test-Fortran-Vg0/out-alpha-sp-g-Vg0.out 2-TbPc-FE-FE-16_per-9_0\
#_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP-test-Fortran-Vg0/out-beta-\
#sp-g-Vg0.out"

#F2P_0 = "< paste CNT_9_0-16periods-CB-SZV/out-alpha-cb.out"
F2P_0 = "< paste CNT_9_0-16periods-CB-SZV/out-alpha-cb-allGated.out \
CNT_9_0-16periods-CB-SZV/out-beta-cb-allGated.out"

set tics font ",17" 

set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS in offset 0.4,0
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics

#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#set ylabel 'T(E) ' font ",18"  offset 2,0

set key top right opaque font ",14" 
set key samplen 1
set style textbox opaque noborder

set grid ls 9

#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  

#set tmargin at screen 0.4
#set bmargin at screen 0.0
#set lmargin at screen 0.0
#set rmargin at screen 0.4  

#Fermi_E_voll = -3.03988
#Fermi_E_eq_z = -4.76469
#set arrow 1 from -2,Fermi_E, graph 0 to 0, Fermi_E, graph 1 nohead \
#dt '--' lw 3 lc '#E46DD8'

#--- Das hier lauft ok ---#
#do for [i=0:2] {p sprintf('H-kette-cb/out-alpha.dat',i) \
#u 2:4 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0

#--- Das hier lauft auch ok ---#
#do for [i=0:5] {
#set multiplot layout 2,1
#p sprintf('H-kette-cb/out-alpha.dat',i) \
#u 2:4 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
#p sprintf('H-kette-cb/out-alpha.dat',i) \
#u 2:6 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
#}

do for [i=0:299] {
set multiplot layout 2,1 rowsfirst \
title "16 periods (9,0) CNT; SZV-basis" font "Baskerville, 22"

#title "16 periods of (9,0) CNT + 2TbPc_2 (FE-FE); CDFT" font "Baskerville, 22"
#title "16 periods (9,0) CNT; DZVP-SR" font "Baskerville, 22"
#title "16 periods (9,0) CNT; SZV-SR" font "Baskerville, 22"
#title "Double Chain of H atoms. 2 atoms basis. 2 periods on the leads. \
#1 central period (2 atoms)" font "Baskerville:Italic, 22"

unset xlabel 

set xrange @XRANGEDOS
set yrange @YRANGEDOS
set ytics @YTICSDOS in offset 0.4,0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#set label 3 sprintf('Vg = %2.4f', i*VG) font ",14" at -1,9 right front boxed tc rgbcolor '#1A1A1A'

#p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($3+$9) every :::i::i w l ls 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($3+$9) every :::i::i w filledcurves ls 22 fs transparent solid 0.2 notitle sprintf('Vg = %2.4f',i*VG)
#unset label 3
#p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($5+$11) every :::i::i w l ls 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($5+$11) every :::i::i w filledcurves ls 33 fs transparent solid 0.2 notitle sprintf('Vg = %2.4f',i*VG) 

p  F2P_0 u 2:($3+$7) every :::i::i w l ls 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
   F2P_0 u 2:($3+$7) every :::i::i w filledcurves above y1=0 ls 22 fs transparent\
   solid 0.2 notitle sprintf('Vg = %2.4f',i*VG),\
   F2P_0 u 0:0:1 every :::i::i w labels notitle '' offset 20,-4.5 font 'Arial, 18'

#p  F2P_0 u 2:3 every :::i::i w l ls 2 notitle sprintf('Vg = %2.4f',i*VG) ,\
#   F2P_0 u 2:3 every :::i::i w filledcurves above y1=0 ls 2 fs transparent\
#   solid 0.2 title '{/Symbol a}',\
#   F2P_0 u 2:7 every :::i::i w l ls 3 notitle '' ,\
#   F2P_0 u 2:7 every :::i::i w filledcurves above y1=0 ls 3 fs transparent\
#   solid 0.2 title '{/Symbol b}',\
#   F2P_0 u 0:0:1 every :::i::i w labels notitle '' offset 20,-4.5 font 'Arial, 18'

unset label 3

set xlabel 'Energy (eV)' font ",18" offset 0,1.0

set xrange @XRANGET
set yrange @YRANGET
set ylabel 'T(E) ' font ",18"  offset 1.7,0
#set yrange @YRANGET
set ytics @YTICST in offset 0.4,0

p  F2P_0 u 2:($4+$8) every :::i::i w l ls 22 notitle '{/Times:Bold G}{/Times (E)}'

#p  F2P_0 u 2:4 every :::i::i w l ls 2 notitle sprintf('Vg = %2.4f',i*VG),\
#   F2P_0 u 2:8 every :::i::i w l ls 3 notitle ''

}

##############    Fuer Alpha+Beta G und G_cb zusammen    ##########

#reset
#clear
#
#set ls 1 lw 3 dt 1 lc 0
#set ls 2 lw 3 dt '..' lc 1
#set ls 3 lw 3 dt '.-' lc 3
#set ls 4 lw 3 dt 1 lc 8
#set ls 5 lw 2 dt 3 lc 5
#set ls 6 lw 2 dt 2 lc 6
#set ls 9 lw 0.7 dt 3 lc 0
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
##set terminal gif animate size 1024,768 enhanced font 'Arial, 21'
#
##set output 'H-Kette-cb-super.gif'
#
#XRANGEDOS = "[-6:6]"
#YRANGEDOS = "[*:10]"
#XRANGET   = "[-6:6]"
#YRANGET   = "[*:3]"
#XTICS   = "autofreq"
#YTICS   = "autofreq"
#
#set tics font ",17" 
##set xrange @XRANGEDOS
##set yrange @YRANGEDOS
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
#
#set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
##set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
##set ylabel 'T(E) ' font ",18"  offset 2,0
#
#set key top right opaque font ",14" 
#set style textbox opaque noborder
#
#set grid ls 9
#
#VG = -0.0351759
#
#
#do for [i=0:199] {
#set multiplot layout 2,1 rowsfirst \
#title "Chain of H atoms. 4 atoms basis. 2 periods on the leads. 1 central period"
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#p '< paste H-kette-cb/out-alpha.dat \H-kette-cb/out-beta.dat' u 2:($3+$5) every :::i::i w l ls 2 \
#title sprintf('Vg = %2.4f',i*VG) ,\
#'< paste H-kette-cb/out-alpha.dat H-kette-cb/out-beta.dat' u 2:($9+$11) every :::i::i w l ls 3 \
#title sprintf('Vg = %2.4f',i*VG) 
#
#set ylabel 'T(E) ' font ",18"  offset 2,0
#set yrange @YRANGET
#p '< paste H-kette-cb/out-alpha.dat \H-kette-cb/out-beta.dat' u 2:($4+$10) every :::i::i w l ls 2 \
#title sprintf('Vg = %2.4f',i*VG)  ,\
#'< paste H-kette-cb/out-alpha.dat H-kette-cb/out-beta.dat' u 2:($6+$12) every :::i::i w l ls 3 \
#title sprintf('Vg = %2.4f',i*VG) 
#unset multiplot
#}

###########    Fuer Energieniveaus    ##########
#
#reset
#clear
#
#set ls 1 lw 3 dt 1 lc 0
#set ls 2 lw 3 dt '--' lc 1
#set ls 3 lw 3 dt 2 lc 4
#set ls 4 lw 3 dt 1 lc 8
#set ls 5 lw 2 dt 3 lc 5
#set ls 6 lw 2 dt 2 lc 6
#set ls 9 lw 0.7 dt 3 lc 0
#set ls 199 lw 2 dt 1 lc 0
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
##set terminal gif animate size 1024,768 enhanced font 'Arial, 21'
#
##set output 'H-Kette-cb-energieniveaus.png'
#
#XRANGEE = "[-2:2]"
#YRANGEE = "[-10:14]"
#XTICS   = "autofreq"
#YTICS   = "-10,1,14"
#HOMOCA = -5.119886396250848
#HOMOCB = -5.119886396250848
#
#set tics font ",17" 
#
#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS in offset 0.4,0
#set noxtics 
#set ytics 
#set nomxtics
#set mytics 4
#set yzeroaxis ls 199
#
#set grid noxtics
#set grid ytics
#set grid mytics
##set logscale y
#set format x ''
#
#set key top right opaque font ",14" 
#set style textbox opaque noborder
#set label 1 "{/Symbol a}" font ",23" at -1.5,11 left front boxed tc rgbcolor '#EF1414'
#set label 2 "{/Symbol b}" font ",23" at  1.5,11 left front boxed tc rgbcolor '#1431EF'
#
#set grid ls 9 
#set nomytics
#
#VG = -0.0120240481
#
#set arrow from -2,HOMOCA, graph 0 to 0, HOMOCA, graph 1 nohead  dt '--' lw 3 lc '#E46DD8'
#set arrow from 0,HOMOCB, graph 0 to 2, HOMOCB, graph 1 nohead  dt '--' lw 3 lc '#8A15F0'
#
#set style arrow 01 nohead lc 7 lw 3
#set style arrow 1 nohead lc rgb '#EF1414' lw 3
#set style arrow 11 head lc rgb '#131A3D' lw 1.5
#set style arrow 2 nohead lc rgb '#1431EF' lw 3
#
##set xrange @XRANGEE
##set yrange @YRANGEE
#
##p 'H-kette-cb/energy-levels-alpha.dat' u (0):3:(-1):(0) every :::2::2 w vectors arrowstyle 1 title sprintf('Vg = %2.4f',i*VG) 
#
#do for [i=0:499] {
##set multiplot layout 1,2 rowsfirst \
#title "Chain of H atoms. 4 atoms basis. 2 periods on the leads. 1 central period"
#
#set xrange @XRANGEE
#set yrange @YRANGEE
#set ylabel 'Energy levels: Central region (eV)' font ",18"  offset 2,0
#p '< paste H-kette-cb/energy-levels-alpha.dat \H-kette-cb/energy-levels-beta.dat' \
#  u (0.001):($3):(-1):(0) every :::i::i w vectors arrowstyle 1 title sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-kette-cb/energy-levels-alpha.dat \H-kette-cb/energy-levels-beta.dat' \
#  u (-0.5):($3-0.01 <= HOMOCA ? $3-0.5 :1/0):(0):(abs($3-($3+0.8))) every :::i::i w vectors arrowstyle 11 notitle ,\
#  '< paste H-kette-cb/energy-levels-alpha.dat \H-kette-cb/energy-levels-beta.dat' \
#  u (0.001):($6):(1):(0) every :::i::i w vectors arrowstyle 2 title sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-kette-cb/energy-levels-alpha.dat \H-kette-cb/energy-levels-beta.dat' \
#  u (0.5):($6+1e-10 <= HOMOCB ? $6+0.5 :1/0):(0):(-abs($6-($6+0.8))) every :::i::i w vectors arrowstyle 11 notitle
#}
##  '< paste H-kette-cb/energy-levels-alpha.dat \H-kette-cb/energy-levels-beta.dat' u (-0.5):($3-0.5):(0):(abs($3-($3+0.8))) \
##every :::i::i w vectors arrowstyle 11 notitle ,\


#################    Fuer Energieniveaus + G und G_cb zusammen    ##########
#reset
#clear
#
#set ls 1   lw 3.0 dt 1    lc 0
#set ls 2   lw 2.5 dt '--' lc 1
#set ls 42  lw 3.0 dt 1    lc rgb '#EF1414'  #Schoene Rot
#set ls 43  lw 3.0 dt 1    lc rgb '#1431EF'  #Schoene Blau
#set ls 22  lw 2.5 dt 1    lc rgb '#8F31E2'
#set ls 3   lw 3.0 dt 2    lc 4
#set ls 33  lw 3.0 dt 1    lc rgb '#00C5CD'
#set ls 4   lw 3.0 dt 1    lc 8
#set ls 5   lw 2.0 dt 3    lc 5
#set ls 6   lw 2.0 dt 2    lc 6
#set ls 9   lw 0.7 dt 3    lc 0
#set ls 199 lw 2.0 dt 1    lc 0
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
##set terminal gif animate size 1024,768 enhanced font 'Arial, 21'
#
##set output 'H-Kette-cb-energieniveaus.png'
#
#XRANGEE   = "[-2:2]"
#XTICSE    = "autofreq"
##YRANGEE   = "[-5.0:-4.0]"
##YTICSE    = "-5.0,0.1,-4.0"
#YRANGEE   = "[-5.4:-4.5]"
#YTICSE    = "-5.4,0.1,-4.5"
#XRANGEDOS = "[0:100]"
#XTICSDOS  = "0,20,100"
#YRANGEDOS = "[-0.5:0.5]"
#YTICSDOS  = "-0.5,0.1,0.5"
#
#set tics font ",18"
#
#set nomxtics
#set mytics 4
#
#set grid noxtics
#set grid ytics
#set grid mytics
#
#set key top right opaque font ",16" 
#set style textbox opaque noborder
#
#set grid ls 9 
#
##F2P_0 = "2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
##energy-levels.out"
##F2P_1 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
##out-alpha-cb.out 2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP/\
##out-beta-cb.out"
##F2P_0 = "CNT_9_0-16periods-CB/energy-levels.out"
##F2P_1 = "CNT_9_0-16periods-CB/out-alpha-cb.out"
#F2P_0 = "CNT_9_0-16periods-CB-SZV/energy-levels-U0p05.out"
#F2P_1 = "<paste CNT_9_0-16periods-CB-SZV/out-alpha-cb-U0p05.out \
#CNT_9_0-16periods-CB-SZV/out-beta-cb-U0p05.out"
#
#Fermi_E_voll = -3.03988
#Fermi_E_eq_z = -4.76469
#VG      = 0.00668896
##Fermi_E = -4.63509041
##HOMOCA  = -4.63509041
##HOMOCB  = -4.63509041
##VG      = 0.00277778
#
##!Schwarzer Pfeil
#set style arrow 11 head lc rgb '#131A3D' lw 1.5
#
#set style arrow 01 nohead lc 7 lw 3
#set style arrow 1 nohead lc rgb '#EF1414' lw 3
#
##set style arrow 22  nohead lc rgb '#8F31E2' lw 3
#set style arrow 22  nohead lc rgb '#CD2626' lw 3
#set style arrow 221 head   lc rgb '#252121' lw 2 filled
##set style arrow 33  nohead lc rgb '#00C5CD' lw 3
#set style arrow 33  nohead lc rgb '#0000EE' lw 3 
#set style arrow 331 head   lc rgb '#252121' lw 2 filled
#
#set style arrow 111 nohead lc rgb '#FF3399' lw 3
#set style arrow 2   nohead lc rgb '#1431EF' lw 3
#
#set style arrow 222 nohead lc rgb '#66B2FF' lw 3
#
##! --- Anfang von do Loop --- #
#do for [i=0:299] {
#set multiplot layout 1,2 rowsfirst \
#title "16 periods (9,0) CNT; SZV-SR" font "Baskerville, 22"
#
##title "16 periods (9,0) CNT; DZVP-SR" font "Baskerville:Italic, 22"
##title "2 TbPc; FE-FE 16 periods (9,0) CNT; DZVP-SR; CDFT C26 C26 UP UP" \
##font "Baskerville:Italic, 22"
##title "Double Chain of H atoms. 2 atoms basis. 2 periods on the leads. \
##1 central period (2 atoms)" font "Baskerville:Italic, 22"
#
#set format x ''
#unset xtics
#unset mxtics
#
#set nomytics
#
#set tmargin at screen 0.15
#set bmargin at screen 0.85
#set lmargin at screen 0.1
#set rmargin at screen 0.45  
#
#set xrange @XRANGEE
#set yrange @YRANGEE
#set ytics  @YTICSE
#set xzeroaxis ls 199
#set yzeroaxis ls 199
#set mytics 2
#
#unset xlabel
#set ylabel 'E (eV)' font ",18"  offset 1,0
#set key samplen 0 
#
#set label 1 "{/Symbol a}" font ",23" at -1.3,-3.5 left front boxed tc \
#rgbcolor '#EF1414'
#
#set label 2 "{/Symbol b}" font ",23" at  1.3,-3.5 left front boxed tc \
#rgbcolor '#1431EF'
#set label 3 sprintf('Vg = %2.4f', i*VG) font ",16" at 1.8,3.5 right \
#front boxed tc rgbcolor '#1A1A1A'
#
#set arrow 1 from -2,Fermi_E_eq_z, graph 0 to 0, Fermi_E_eq_z, \
#graph 1 nohead  dt '--' lw 3 lc '#E46DD8'
#
#set arrow 2 from 0,Fermi_E_eq_z, graph 0 to 2, Fermi_E_eq_z, \
#graph 1 nohead  dt '--' lw 3 lc '#E46DD8'
##set arrow 2 from 0,HOMOCB, graph 0 to 2, HOMOCB, graph 1 nohead  dt '--' lw 3 lc '#8A15F0'
#
#set title 'Energy levels: Central region' font ",18" offset 0,-0.5
#
#p  F2P_0 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
#   F2P_0 u (-0.5):($2-1e-11 <= Fermi_E_eq_z ? $2-0.009 :1/0):(0):(abs($2-($2+0.017))) every :::i::i w vectors arrowstyle 221 notitle ,\
#   F2P_0 u (0.001):($3):(1):(0) every :::i::i w vectors arrowstyle 33 title sprintf('Vg = %2.4f',i*VG) ,\
#   F2P_0 u (0.5):($3+1e-11 <= Fermi_E_eq_z ? $3+0.009 :1/0):(0):(-abs($3-($3+0.017))) every :::i::i w vectors arrowstyle 331 notitle,\
#
##p 'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (-0.8):($2-1e-11 <= Fermi_E ? $2-0.3 :1/0):(0):(abs($2-($2+0.7))) every :::i::i w vectors arrowstyle 221 notitle ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (0.001):($3):(1):(0) every :::i::i w vectors arrowstyle 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (0.8):($3+1e-11 <= Fermi_E ? $3+0.3 :1/0):(0):(-abs($3-($3+0.7))) every :::i::i w vectors arrowstyle 221 notitle,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (0.001):($4):(-1):(0) every :::i::i w vectors arrowstyle 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (-0.5):($4-0.01 <= Fermi_E ? $4-0.3 :1/0):(0):(abs($4-($4+0.7))) every :::i::i w vectors arrowstyle 331 notitle ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (0.001):($5):(1):(0) every :::i::i w vectors arrowstyle 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##   u (0.5):($5+1e-11 <= Fermi_E ? $5+0.3 :1/0):(0):(-abs($5-($5+0.7))) every :::i::i w vectors arrowstyle 331 notitle
#
#set tmargin at screen 0.15
#set bmargin at screen 0.85
#set lmargin at screen 0.55
#set rmargin at screen 0.95  
#
#set format x 
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS
#set ytics  @YTICSDOS
#set xtics
#set mxtics 2 
#set mytics 2
#set yzeroaxis 
#set xlabel 'DOS (eV^{-1})' font ",18"  offset 0,0
#set ylabel 'E-E_f (eV) ' font ",18"  offset 2,0
#unset label 1
#unset label 2
#unset label 3
#unset arrow 1
#unset arrow 2
#
#unset title
#set title "DOS(E): {/Symbol a} + {/Symbol b}" font ",18" offset 0,-0.5
#
#p  F2P_1 u ($3+$7):2 every :::i::i w l ls 22 title '{/Times:Bold G}{/Times (E)}',\
#
##p  F2P_1 u ($3):2 every :::i::i w l ls 42 title '{/Times:Bold G}{/Times (E)}',\
##   F2P_1 u ($7):2 every :::i::i w l ls 43 title '{/Times:Bold G}{/Times (E)}'
#
##p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##   u ($3+$9):2 every :::i::i w l ls 22 title '{/Times G(E)}' ,\
##  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##   u ($3+$9):2 every :::i::i w filledcurves ls 22 fs transparent solid 0.2 notitle '{/Times G(E)}' ,\
##  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##   u ($5+$11):2 every :::i::i w l ls 33 title '{/Times:Bold G}{/Times (E)}',\
##  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##   u ($5+$11):2 every :::i::i w filledcurves ls 33 fs transparent solid 0.2 notitle '{/Times:Bold G}{/Times (E)}'
#unset multiplot
#}
