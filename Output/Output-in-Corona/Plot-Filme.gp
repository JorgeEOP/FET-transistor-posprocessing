#########    Fuer Alpha+Beta G und G_cb unabhaengig    ##########

reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt 1 lc 8
set ls 5 lw 2 dt 3 lc 5
set ls 6 lw 2 dt 2 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
#set terminal gif animate size 1024,768 enhanced font 'Arial, 21'

#set output 'H-Kette-cb.gif'

XRANGEDOS = "[-7:7]"
YRANGEDOS = "[*:10]"
XRANGET   = "[-7:7]"
YRANGET   = "[*:3]"
XTICS   = "autofreq"
YTICS   = "autofreq"

set tics font ",17" 

set xtics @XTICS out nomirror offset 0,0.4
set ytics @YTICS in offset 0.4,0
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics
#set logscale y
#set format x ''

set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#set ylabel 'T(E) ' font ",18"  offset 2,0

set key top right opaque font ",14" 
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

VG = -0.0120240481
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


do for [i=0:499] {
set multiplot layout 2,2 rowsfirst \
title "Chain of H atoms. 4 atoms basis. 2 periods on the leads. 1 central period"

set xrange @XRANGEDOS
set yrange @YRANGEDOS
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
p '< paste H-kette-cb-finesse/out-alpha.dat \H-kette-cb-finesse/out-beta.dat' u 2:($3+$5) every :::i::i w l ls 2 \
title sprintf('Vg = %2.4f',i*VG)
p '< paste H-kette-cb-finesse/out-alpha.dat H-kette-cb-finesse/out-beta.dat' u 2:($9+$11) every :::i::i w l ls 3 \
title sprintf('Vg = %2.4f',i*VG) 
set ylabel 'T(E) ' font ",18"  offset 2,0
set yrange @YRANGET
p '< paste H-kette-cb-finesse/out-alpha.dat \H-kette-cb-finesse/out-beta.dat' u 2:($4+$10) every :::i::i w l ls 2 \
title sprintf('Vg = %2.4f',i*VG)
p '< paste H-kette-cb-finesse/out-alpha.dat H-kette-cb-finesse/out-beta.dat' u 2:($6+$12) every :::i::i w l ls 3 \
title sprintf('Vg = %2.4f',i*VG)
}

##########    Fuer Alpha+Beta G und G_cb zusammen    ##########

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


###########    Fuer Energieniveaus + G und G_cb zusammen    ##########
#
#reset
#clear
#
#set ls 1 lw 3 dt 1 lc 0
#set ls 2 lw 2.5 dt '--' lc 1
#set ls 22 lw 2.5 dt 1 lc rgb '#8F31E2'
#set ls 3 lw 3 dt 2 lc 4
#set ls 33 lw 3 dt 1 lc rgb '#057EE8'
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
#XRANGEE  = "[-2:2]"
#YRANGEE  = "[-10:14]"
#XTICSE   = "autofreq"
#YTICSE   = "-10,2,14"
#XRANGEDOS = "[-7:7]"
#YRANGEDOS = "[*:10]"
#XTICSDOS  = "autofreq"
#YTICSDOS  = "autofreq"
##XRANGET   = "[-7:7]"
##YRANGET   = "[*:3]"
#HOMOCA = -5.119886396250848
#HOMOCB = -5.119886396250848
#
#set tics font ",17" 
#
##set xtics @XTICS out nomirror offset 0,0.4
##set ytics @YTICS in offset 0.4,0
#set ytics 
#set nomxtics
#set mytics 4
#
#set grid noxtics
#set grid ytics
#set grid mytics
#
#set key top right opaque font ",14" 
#set style textbox opaque noborder
#
#set grid ls 9 
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
## --- Anfang von do Loop --- #
#do for [i=0:99] {
#set multiplot layout 1,2 rowsfirst \
#title "Chain of H atoms. 4 atoms basis. 2 periods on the leads. \
#1 central period" font "Times:Italic, 21"
#set format x ''
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
#set yzeroaxis ls 199
#set mytics 2
#unset xlabel
#set ylabel ' E (eV)' font ",18"  offset 2,0
#set label 1 "{/Symbol a}" font ",23" at -1.5,11 left front boxed tc rgbcolor '#EF1414'
#set label 2 "{/Symbol b}" font ",23" at  1.5,11 left front boxed tc rgbcolor '#1431EF'
#
#set title 'Energy levels: Central region' font ", 18" offset 0,-0.5
#
#p '< paste H-kette-cb-finesse/energy-levels-alpha.dat \H-kette-cb-finesse/energy-levels-beta.dat' \
#  u (0.001):($3):(-1):(0) every :::i::i w vectors arrowstyle 1 title sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-kette-cb-finesse/energy-levels-alpha.dat \H-kette-cb-finesse/energy-levels-beta.dat' \
#  u (-0.5):($3-0.01 <= HOMOCA ? $3-0.5 :1/0):(0):(abs($3-($3+0.8))) every :::i::i w vectors arrowstyle 11 notitle ,\
#  '< paste H-kette-cb-finesse/energy-levels-alpha.dat \H-kette-cb-finesse/energy-levels-beta.dat' \
#  u (0.001):($6):(1):(0) every :::i::i w vectors arrowstyle 2 title sprintf('Vg = %2.4f',i*VG) ,\
#  '< paste H-kette-cb-finesse/energy-levels-alpha.dat \H-kette-cb-finesse/energy-levels-beta.dat' \
#  u (0.5):($6+1e-11 <= HOMOCB ? $6+0.5 :1/0):(0):(-abs($6-($6+0.8))) every :::i::i w vectors arrowstyle 11 notitle
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
#set nomxtics 
#set nomytics
#unset yzeroaxis 
#set xlabel 'E-Ef (eV) ' font ",18"  offset 0,0
#set ylabel 'DOS (eV^{-1}) ' font ",18"  offset 3,0
#unset label 1
#unset label 2
#
#unset title
#set title "DOS(E): {/Symbol a} + {/Symbol b}" font ", 18" offset 0,-0.5
#
#p '< paste H-kette-cb-finesse/out-alpha.dat \H-kette-cb-finesse/out-beta.dat'\
#  u 2:($3+$5) every :::i::i w l ls 22 title '{/Times G(E)}' ,\
#  '< paste H-kette-cb-finesse/out-alpha.dat H-kette-cb-finesse/out-beta.dat'\
#  u 2:($9+$11) every :::i::i w l ls 33 title '{/Times:Bold G}{/Times (E)}' 
#unset multiplot
#}
