#########    Fuer Alpha+Beta G und G_cb unabhaengig    ##########

reset
clear

set ls 1  lw 3 dt 1 lc 0
set ls 2  lw 3 dt 1 lc 1
set ls 3  lw 3 dt 1 lc 3
set ls 4  lw 3 dt 1 lc 8
set ls 5  lw 2 dt 3 lc 5
set ls 6  lw 2 dt 2 lc 6
set ls 9  lw 0.7 dt 3 lc 0
set ls 22 lw 2.5 dt 1 lc rgb '#8F31E2'
set ls 3  lw 3 dt 2 lc 4
set ls 33 lw 3 dt 1 lc rgb '#00C5CD'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
#set terminal gif animate size 1024,768 enhanced font 'Arial, 21'

## Bei Filme, kommentiert
#set output '2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP.png'

XRANGEDOS = "[*:*]"
YRANGEDOS = "[0:*]"
XRANGET   = "[*:*]"
YRANGET   = "[0:*]"
XTICS     = "-4,1,4"
YTICSDOS  = "0,20,200"
YTICST    = "0,1,10"

set tics font ",17" 

set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS in offset 0.4,0
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics
#set logscale y
#set format x ''

VG = 0.01507538

set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#set ylabel 'T(E) ' font ",18"  offset 2,0

set key top right opaque font ",14" 
set key samplen 1
set style textbox opaque noborder

set grid ls 9

#set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.3795181 eV";
#set multiplot layout 2,1 rowsfirst title "H atoms linear chain. 4 atoms basis. 2periods on leads. 1 period central";

#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  

#set tmargin at screen 0.4
#set bmargin at screen 0.0
#set lmargin at screen 0.0
#set rmargin at screen 0.4  

VG = 0.01507538
#VG = -0.0351759

#--- Das hier lauft ok ---#
#do for [i=0:5] {p sprintf('H-kette-cb/out-alpha.dat',i) \
#u 2:4 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0

#--- Das hier lauft auch ok ---#
#do for [i=0:5] {
#set multiplot layout 2,1
#p sprintf('H-kette-cb/out-alpha.dat',i) \
#u 2:4 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
#p sprintf('H-kette-cb/out-alpha.dat',i) \
#u 2:6 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
#}

do for [i=0:0] {
set multiplot layout 2,2 rowsfirst \
title "2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-UP-UP" \
font "Baskerville:Italic, 22"

##title "Double Chain of H atoms. 2 atoms basis. 2 periods on the leads. \
##1 central period (2 atoms)" font "Baskerville:Italic, 22"

set xrange @XRANGEDOS
set yrange @YRANGEDOS
set ytics @YTICSDOS in offset 0.4,0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
set label 3 sprintf('Vg = %2.4f', i*VG) font ",14" at -1,9 right front boxed tc rgbcolor '#1A1A1A'

#p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($3+$9) every :::i::i w l ls 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($3+$9) every :::i::i w filledcurves ls 22 fs transparent solid 0.2 notitle sprintf('Vg = %2.4f',i*VG)
#unset label 3
#p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($5+$11) every :::i::i w l ls 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u 2:($5+$11) every :::i::i w filledcurves ls 33 fs transparent solid 0.2 notitle sprintf('Vg = %2.4f',i*VG) 

p '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/out-alpha-cb.dat'\
   u 2:3 every :::i::i w l ls 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
  '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/out-alpha-cb.dat'\
   u 2:3 every :::i::i w filledcurves ls 22 fs transparent solid 0.2 notitle sprintf('Vg = %2.4f',i*VG)
unset label 3
p '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/out-alpha-cb.dat'\
   u 2:5 every :::i::i w l ls 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
  '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/out-alpha-cb.dat'\
   u 2:5 every :::i::i w filledcurves ls 33 fs transparent solid 0.2 notitle sprintf('Vg = %2.4f',i*VG)

set xrange @XRANGET
set yrange @YRANGET
set ylabel 'T(E) ' font ",18"  offset 2,0
#set yrange @YRANGET
set ytics @YTICST in offset 0.4,0
p '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/out-alpha-cb.dat'\
   u 2:4 every :::i::i w l ls 22 title '{/Times G(E)}'
p '2-TbPc-Antipar-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-up-down/out-alpha-cb.dat'\
   u 2:6 every :::i::i w l ls 33 title '{/Times G(E)}'
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


###############    Fuer Energieniveaus + G und G_cb zusammen    ##########

#reset
#clear
#
#set ls 1 lw 3 dt 1 lc 0
#set ls 2 lw 2.5 dt '--' lc 1
#set ls 22 lw 2.5 dt 1 lc rgb '#8F31E2'
#set ls 3 lw 3 dt 2 lc 4
#set ls 33 lw 3 dt 1 lc rgb '#00C5CD'
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
#XRANGEE   = "[-2:2]"
#YRANGEE   = "[-4:4]"
#XTICSE    = "autofreq"
#YTICSE    = "-4,1,4"
#XRANGEDOS = "[0:10]"
#YRANGEDOS = "[-4:4]"
#XTICSDOS  = "0,2,10"
#YTICSDOS  = "-4,1,4"
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
#Fermi_E = 0
#HOMOCA = -1.084334
#HOMOCB = -1.084334
#VG = 0.01507538
#
##!Schwarzer Pfeil
#set style arrow 11 head lc rgb '#131A3D' lw 1.5
#
#set style arrow 01 nohead lc 7 lw 3
#set style arrow 1 nohead lc rgb '#EF1414' lw 3
#
#set style arrow 22  nohead lc rgb '#8F31E2' lw 3
#set style arrow 221 head   lc rgb '#8F31E2' lw 2
#set style arrow 33  nohead lc rgb '#00C5CD' lw 3
#set style arrow 331 head   lc rgb '#00C5CD' lw 2
#
#set style arrow 111 nohead lc rgb '#FF3399' lw 3
#set style arrow 2   nohead lc rgb '#1431EF' lw 3
#
#set style arrow 222 nohead lc rgb '#66B2FF' lw 3
#
##! --- Anfang von do Loop --- #
#do for [i=0:199] {
#set multiplot layout 1,2 rowsfirst \
#title "Double Chain of H atoms. 2 atoms basis. 2 periods on the leads. \
#1 central period (2 atoms)" font "Baskerville:Italic, 22"
####"Times:Italic, 22" 
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
#unset xlabel
#set ylabel 'E (eV)' font ",18"  offset 1,0
#set key samplen 0 
#set label 1 "{/Symbol a}" font ",23" at -1.3,-3.5 left front boxed tc rgbcolor '#EF1414'
#set label 2 "{/Symbol b}" font ",23" at  1.3,-3.5 left front boxed tc rgbcolor '#1431EF'
#set label 3 sprintf('Vg = %2.4f', i*VG) font ",16" at 1.8,3.5 right front boxed tc rgbcolor '#1A1A1A'
##set arrow 1 from -2,HOMOCA, graph 0 to 0, HOMOCA, graph 1 nohead  dt '--' lw 3 lc '#E46DD8'
##set arrow 2 from 0,HOMOCB, graph 0 to 2, HOMOCB, graph 1 nohead  dt '--' lw 3 lc '#8A15F0'
#
#
#set title 'Energy levels: Central region' font ",18" offset 0,-0.5
#
#p 'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (-0.8):($2-1e-11 <= Fermi_E ? $2-0.3 :1/0):(0):(abs($2-($2+0.7))) every :::i::i w vectors arrowstyle 221 notitle ,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (0.001):($3):(1):(0) every :::i::i w vectors arrowstyle 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (0.8):($3+1e-11 <= Fermi_E ? $3+0.3 :1/0):(0):(-abs($3-($3+0.7))) every :::i::i w vectors arrowstyle 221 notitle,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (0.001):($4):(-1):(0) every :::i::i w vectors arrowstyle 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (-0.5):($4-0.01 <= Fermi_E ? $4-0.3 :1/0):(0):(abs($4-($4+0.7))) every :::i::i w vectors arrowstyle 331 notitle ,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (0.001):($5):(1):(0) every :::i::i w vectors arrowstyle 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
#   u (0.5):($5+1e-11 <= Fermi_E ? $5+0.3 :1/0):(0):(-abs($5-($5+0.7))) every :::i::i w vectors arrowstyle 331 notitle
#
##p '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.001):($3):(-1):(0) every :::i::i w vectors arrowstyle 1 title sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (-0.5):($3-0.01 <= Fermi_E ? $3-0.5 :1/0):(0):(abs($3-($3+0.8))) every :::i::i w vectors arrowstyle 11 notitle ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.001):($6):(1):(0) every :::i::i w vectors arrowstyle 2 title sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.5):($6+1e-11 <= Fermi_E ? $6+0.5 :1/0):(0):(-abs($6-($6+0.8))) every :::i::i w vectors arrowstyle 11 notitle
#
##p '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.001):($3):(-1):(0) every :::i::i w vectors arrowstyle 1 title sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (-0.5):($3-0.01 <= Fermi_E ? $3-0.5 :1/0):(0):(abs($3-($3+0.8))) every :::i::i w vectors arrowstyle 11 notitle ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.001):($5):(-1):(0) every :::i::i w vectors arrowstyle 111 title sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (-0.5):($5-0.01 <= Fermi_E ? $5-0.5 :1/0):(0):(abs($5-($5+0.8))) every :::i::i w vectors arrowstyle 11 notitle ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.001):($8):(1):(0) every :::i::i w vectors arrowstyle 2 title sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.5):($8+1e-11 <= Fermi_E ? $8+0.5 :1/0):(0):(-abs($8-($8+0.8))) every :::i::i w vectors arrowstyle 11 notitle,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.001):($10):(1):(0) every :::i::i w vectors arrowstyle 222 title sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/energy-levels-alpha.dat \H-Doppel-Kette-cb-empirisch/energy-levels-beta.dat' \
##  u (0.5):($10+1e-11 <= Fermi_E ? $10+0.5 :1/0):(0):(-abs($10-($10+0.8))) every :::i::i w vectors arrowstyle 11 notitle
#
##p 'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##  u (0.001):($4):(-1):(0) every :::i::i w vectors arrowstyle 1 notitle spri.ntf('Vg = %2.4f',i*VG) ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##  u (-0.5):($4+1e-11 <= Fermi_E ? $4-0.5 :1/0):(0):(abs($4-($4+0.8))) every :::i::i w vectors arrowstyle 11 notitle,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##  u (0.001):($5):(1):(0) every :::i::i w vectors arrowstyle 222 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  'H-Doppel-Kette-cb-empirisch/energy-levels.dat' \
##  u (0.5):($5+1e-11 <= Fermi_E ? $5+0.5 :1/0):(0):(-abs($5-($5+0.8))) every :::i::i w vectors arrowstyle 11 notitle
#
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
##set xlabel 'E-Ef (eV) ' font ",18"  offset 0,0
#set xlabel 'DOS (eV^{-1})' font ",18"  offset 0,0
#unset label 1
#unset label 2
#unset label 3
#unset arrow 1
#unset arrow 2
#
#unset title
#set title "DOS(E): {/Symbol a} + {/Symbol b}" font ",18" offset 0,-0.5
#
#p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u ($3+$9):2 every :::i::i w l ls 22 title '{/Times G(E)}' ,\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u ($3+$9):2 every :::i::i w filledcurves ls 22 fs transparent solid 0.2 notitle '{/Times G(E)}' ,\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u ($5+$11):2 every :::i::i w l ls 33 title '{/Times:Bold G}{/Times (E)}',\
#  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
#   u ($5+$11):2 every :::i::i w filledcurves ls 33 fs transparent solid 0.2 notitle '{/Times:Bold G}{/Times (E)}'
#unset multiplot
#}
