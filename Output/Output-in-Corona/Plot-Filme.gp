###################### Fuer Alpha+Beta G und G_cb unabhaengig ##################
#reset
#clear
#
#load '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
#Jorges_Farben.gp
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"
##set terminal gif animate size 1024,768 enhanced font "Helvetica, 22"
#
### Bei Filme, kommentiert
##set output '2-TbPc-FE-FE-16_per-9_0_CNT_Al-1eVrange-DZVP-SR-CDFT-C26-C26-\
##UP-UP.png'
#
#XRANGEDOS = "[ -1.5 : 1.5 ]"
##XRANGEDOS = "[ * : * ]"
#YRANGEDOS = "[ 0 : 10 ]"
##YRANGEDOS = "[ 0 : * ]"
#XRANGET   = "[ -1.5 : 1.5 ]"
##XRANGET   = "[ * : * ]"
#YRANGET   = "[ 0 : 8 ]"
##YRANGET   = "[ 0 : * ]"
#XTICS     = "-1.5 , 0.5 , 1.5"
##XTICS     = "autofreq"
#YTICSDOS  = "0 , 2 , 10"
##YTICSDOS  = "autofreq"
#YTICST    = "0 , 1 , 8"
##YTICST    = "autofreq"
#
##F2P_0 = "< paste 2-TbPc-Antipar-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6\
##-C26-Mg6-C26-up-down/out-alpha-sp-g-1eV.out 2-TbPc-Antipar-16_per-9_0_CNT\
##_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26-Mg6-C26-up-down/out-beta-sp-g-1eV.out"
#
##F2P_0 = "< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP-SR-CDFT-Mg6-C26\
##-Mg6-C26-UP-UP/out-alpha-sp-g-1eV.out 2-TbPc-FE-FE-16_per-9_0_CNT_Ohne_Metall-DZVP\
##-SR-CDFT-Mg6-C26-Mg6-C26-UP-UP/out-beta-sp-g-1eV.out"
#
##F2P_0 = "< paste CNT_9_0-16periods-CB-SZV-Fortran/out-alpha-sp-g.out \
##CNT_9_0-16periods-CB-SZV-Fortran/out-beta-sp-g.out"
##F2P_0 = "< paste CNT_9_0-16periods-CB-SZV/out-alpha-cb-allGated.out \
##CNT_9_0-16periods-CB-SZV/out-beta-cb-allGated.out"
#
#F2P_0 = "< paste Toy_modelle/FE-AF/out-alpha-sp-g.out Toy_modelle/FE-AF/out-\
#beta-sp-g.out"
##F2P_0 = "< paste Toy_modelle/FE-FE/out-alpha-sp-g.out Toy_modelle/FE-FE/out-\
##beta-sp-g.out"
#
#set tics font ",18"
#
#set xtics @XTICS out nomirror offset 0,0.4
##set ytics @YTICS in offset 0.4,0
#set mxtics 2
#set mytics 2
#
#set grid noxtics
#set grid noytics
#
##set ylabel "DOS(eV^{-1})" font ",21"  offset 0,0.7
##set ylabel "T(E)" font ",21"  offset 0.5,0
#
#set key top right opaque font ",14" 
#set key samplen 1
#set style textbox opaque noborder
#
#set grid ls 9
#set border ls 101
#set tics scale 1.2 
#
##set tmargin at screen 0.4
##set bmargin at screen 0.0
##set lmargin at screen 0.0
##set rmargin at screen 0.4  
#
##Fermi_E_voll = -3.03988
##Fermi_E_eq_z = -4.76469
##set arrow 1 from -2,Fermi_E, graph 0 to 0, Fermi_E, graph 1 nohead \
##dt '--' lw 3 lc '#E46DD8'
#
##--- Das hier lauft ok ---#
##do for [i=0:2] {p sprintf('H-kette-cb/out-alpha.dat',i) \
##u 2:4 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
#
##--- Das hier lauft auch ok ---#
##do for [i=0:5] {
##set multiplot layout 2,1
##p sprintf('H-kette-cb/out-alpha.dat',i) \
##u 2:4 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
##p sprintf('H-kette-cb/out-alpha.dat',i) \
##u 2:6 every :::i::i w l ls 2 title sprintf('Vg=%i',i); pause 1.0
##}
#
##do for [i=0:10] {
#do for [i=0:199] {
#set multiplot layout 2,1 rowsfirst \
#title "Toy model (FE-AF)" font "Baskerville, 22"
#
##title "16 periods of (9,0) CNT + 2TbPc_2 (FE-AF)" font "Baskerville, 22"
##title "16 periods (9,0) CNT" font "Baskerville, 22"
##title "16 periods (9,0) CNT" font "Baskerville, 22"
##title "16 periods (9,0) CNT; Gating all terms" font "Baskerville, 22"
##title "16 periods (9,0) CNT; DZVP-SR" font "Baskerville, 22"
##title "Double Chain of H atoms. 2 atoms basis. 2 periods on the leads. \
##1 central period (2 atoms)" font "Baskerville:Italic, 22"
#
#set tmargin at screen 0.9
#set bmargin at screen 0.55
#set lmargin at screen 0.1
#set rmargin at screen 0.96 
#
#unset xlabel 
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set ytics @YTICSDOS in offset 0.4,0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#
##p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##                       u 2:($3+$9) every :::i::i w l ls 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat \H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##                       u 2:($3+$9) every :::i::i w filledcurves ls 22 fs transparent solid 0.2 \
##                                                              notitle sprintf('Vg = %2.4f',i*VG)
##unset label 3
##p '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##                    u 2:($5+$11) every :::i::i w l ls 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  '< paste H-Doppel-Kette-cb-empirisch/out-alpha.dat H-Doppel-Kette-cb-empirisch/out-beta.dat'\
##                     u 2:($5+$11) every :::i::i w filledcurves ls 33 fs transparent solid 0.2 \
##                                                           notitle sprintf('Vg = %2.4f',i*VG) 
#
### Fuer CNT + 2SMM 
#p F2P_0 u 2:($3+$7) every :::i::i w l ls 33 notitle sprintf('Vg = %2.4f',i*VG) ,\
#  F2P_0 u 2:($3+$7) every :::i::i w filledcurves above y1=0 ls 33 fs transparent\
#                                     solid 0.2 notitle sprintf('Vg = %2.4f',i*VG)
#
### Fuer CNT
##p F2P_0 u 2:($3+$7) every :::i::i w l ls 44 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  F2P_0 u 2:($3+$7) every :::i::i w filledcurves above y1=0 ls 44 fs transparent\
#                                     solid 0.2 notitle sprintf('Vg = %2.4f',i*VG)
#
##p F2P_0 u 2:3 every :::i::i w l ls 2 notitle sprintf('Vg = %2.4f',i*VG) ,\
##  F2P_0 u 2:3 every :::i::i w filledcurves above y1=0 ls 2 fs transparent\
##  solid 0.2 title '{/Symbol a}'
##  F2P_0 u 2:7 every :::i::i w l ls 3 notitle '' ,\
##  F2P_0 u 2:7 every :::i::i w filledcurves above y1=0 ls 3 fs transparent\
##  solid 0.2 title '{/Symbol b}',\
##  F2P_0 u 0:0:1 every :::i::i w labels notitle '' offset 20,-4.5 font 'Arial, 18'
#
#unset label 3
#
#set xlabel "Energy (eV)" font ", 21" offset 0,0.7
#set ylabel "T (a.u.)"    font ", 21" offset 0.5,0
#
#set xrange @XRANGET
#set yrange @YRANGET
#set ytics  @YTICST in offset 0.4,0
#
#set tmargin at screen 0.45
#set bmargin at screen 0.13
#set lmargin at screen 0.1
#set rmargin at screen 0.96 
#
#p F2P_0 u 2:($4+$8) every :::i::i w l ls 33 notitle '',\
#  F2P_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                      notitle '' offset 21, 0.8 boxed font 'Arial, 18'
#
### Fuer CNT
##p  F2P_0 u 2:($4+$8) every :::i::i w l ls 44 notitle '',\
##   F2P_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                       notitle '' offset 21, 0.7 boxed font 'Arial, 18'
#
#unset label 1
#
##p  F2P_0 u 2:4 every :::i::i w l ls 2 notitle sprintf('Vg = %2.4f',i*VG)
##   F2P_0 u 2:8 every :::i::i w l ls 3 notitle ''
#
#}

################    Fuer Energieniveaus + G und G_cb zusammen    #############

#reset
#clear
#
#load '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
#
#set macros
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"
#
#XRANGEE   = "[ -3 : 3 ]"
#XTICSE    = "autofreq"
#YRANGEE   = "[ -1.5 : 1.5 ]"
#YTICSE    = "-1.5 , 0.5 , 1.5"
#XRANGEDOS = "[ 0 : 10 ]"
#XTICSDOS  = "0 , 2 , 10"
#YRANGEDOS = "[ -1.5 : 1.5 ]"
#YTICSDOS  = " -1.5 , 0.5, 1.5 "
#
#set tics font ",18"
#set nomxtics
#set mytics 4
#
#set grid ls 9
#set grid noxtics
#set grid ytics
#set grid mytics
#set border ls 101
#set tics scale 1.2 
#
#set key top right opaque font ",16" 
#set style textbox opaque noborder
#
#F2P_0 = "< paste Toy_modelle/FE-AF/energies-alpha-sp-g.out Toy_modelle/FE-AF/\
#energies-beta-sp-g.out "
##F2P_0 = "< paste Toy_modelle/FE-FE/energies-alpha-sp-g.out Toy_modelle/FE-FE/\
##energies-beta-sp-g.out"
#F2P_1 = "< paste Toy_modelle/FE-AF/out-alpha-sp-g.out Toy_modelle/FE-AF/out-\
#beta-sp-g.out"
##F2P_1 = "< paste Toy_modelle/FE-FE/out-alpha-sp-g.out Toy_modelle/FE-FE/out-\
##beta-sp-g.out"
#
#Fermi_E_voll = 0
#Fermi_E_eq_z = -3.1
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
#set style arrow 22  nohead lc rgb '#CD2626' lw 3
#set style arrow 221 head   lc rgb '#252121' lw 2 filled
#set style arrow 222 nohead lc rgb '#66B2FF' lw 3
#set style arrow 33  nohead lc rgb '#0000EE' lw 3 
#set style arrow 331 head   lc rgb '#252121' lw 2 filled
#
##! --- Anfang von do Loop --- #
#do for [i=0:199] {
#set multiplot layout 2,1 rowsfirst \
#title "Toy model (FE-AF)" font "Baskerville, 22"
#
#set format x ''
#unset xtics
#unset mxtics
#
#set nomytics
#
#set tmargin at screen 0.90
#set bmargin at screen 0.1
#set lmargin at screen 0.1
#set rmargin at screen 0.45  
#
#set xrange @XRANGEE
#set yrange @YRANGEE
#set ytics  @YTICSE out nomirror offset 0.7,0
#set xzeroaxis ls 1
#set yzeroaxis ls 1
#set mytics 2
#
#unset xlabel
#set ylabel 'E (eV)' font ",21" offset 2,0
##set key top right opaque font ", 14" box ls 101 width 0 height 0.6 \
##                                  maxcols 2 spacing 1.1 samplen 2
##set style textbox opaque noborder
#
##set label 1 "{/Symbol a}" font ",23" at -1.3,-3.5 left front boxed tc \
##rgbcolor '#EF1414'
#
##set label 2 "{/Symbol b}" font ",23" at  1.3,-3.5 left front boxed tc \
##rgbcolor '#1431EF' front boxed tc rgbcolor '#1A1A1A'
#
##set arrow 1 from -2,Fermi_E_voll, graph 0 to 0, Fermi_E_voll, \
##graph 1 nohead  dt '--' lw 3 lc '#E46DD8'
#
#set arrow 2 from graph 0,0.5 to 3,0  nohead lw 4 lc 0 front
##set arrow 3 from 0,0, graph 0 to 0, -4, graph 1 nohead lw 5 lc 0 front
##set arrow 3 from 0,0, graph 0 to 2, 0, graph 1 nohead lw 5 lc 0 front
#
##set title 'Energy levels: Central region' font ",18" offset 0,-0.5
#
#p  F2P_0 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#   F2P_0 u (0.001):($5):(1):(0)  every :::i::i w vectors arrowstyle 33 notitle ,\
#   F2P_0 u (-1):($3):(-1):(0)    every :::i::i w vectors arrowstyle 2 notitle ,\
#   F2P_0 u (1):($6):(1):(0)      every :::i::i w vectors arrowstyle 3 notitle ,\
#   F2P_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                       notitle '' offset -5.0, 9.4 boxed font 'Arial, 16'
#
##p  F2P_0 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle sprintf('Vg = %2.4f',i*VG) ,\
##   F2P_0 u (-0.5):($2-1e-11 <= Fermi_E_eq_z ? $2-0.009 :1/0):(0):(abs($2-($2+0.017))) every :::i::i w vectors arrowstyle 221 notitle ,\
##   F2P_0 u (0.001):($3):(1):(0) every :::i::i w vectors arrowstyle 33 title sprintf('Vg = %2.4f',i*VG) ,\
##   F2P_0 u (0.5):($3+1e-11 <= Fermi_E_eq_z ? $3+0.009 :1/0):(0):(-abs($3-($3+0.017))) every :::i::i w vectors arrowstyle 331 notitle,\
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
#set tmargin at screen 0.90
#set bmargin at screen 0.10
#set lmargin at screen 0.55
#set rmargin at screen 0.95  
#
#set tics font ",18"
#set nomxtics
#set mytics 4
#
#set format x 
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0.3
#set ytics  @YTICSDOS out nomirror offset 0.5,0
#set xtics
#set mxtics 2 
#set mytics 2
#set yzeroaxis 
#set xlabel 'DOS (eV^{-1})' font ",18"  offset 0,0.9
##set ylabel 'E-E_f (eV) ' font ",18"  offset 2,0
#unset ylabel
#unset label 1
#unset label 2
#unset label 3
#unset arrow 1
#unset arrow 2
#
#unset title
##set title "DOS(E): {/Symbol a} + {/Symbol b}" font ",21" offset 0,-0.5
#
#p  F2P_1 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1 u 7:2 every :::i::i w l ls 3 notitle ''
#
##   F2P_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                      notitle '' offset 22, 0.8 boxed font 'Arial, 18'
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
#XRANGEE   = "[ -3 : 3 ]"
#XTICSE    = "autofreq"
#YRANGEE   = "[ -0.2 : 0.2 ]"
#YTICSE    = "-0.2 , 0.1 , 0.2"
#
#XRANGEDOS = "[ 0 : 15 ]"
#XTICSDOS  = "0 , 5 , 15"
#YRANGEDOS = "[ -0.2 : 0.2 ]"
#YTICSDOS  = "-0.2 , 0.1, 0.2"
#
#XRANGET = "[ -0.2 : 0.2 ]"
#XTICST  = "-0.2 , 0.1 , 0.2"
#YRANGET = "[ 0 : 2 ]"
#YTICST  = "0 , 0.5 , 2"
#### --- ###
#
#### CNT-SMM ###
##XRANGEE   = "[ -3 : 3 ]"
##XTICSE    = "autofreq"
##YRANGEE   = "[ -1.0 : 1.0 ]"
##YTICSE    = "-1.0 , 0.5 , 1.0"
##
##XRANGEDOS = "[ -0.5 : 0.5 ]"
##XTICSDOS  = "-0.5 , 0.1 , 0.5"
##YRANGEDOS = "[ 0 : 400 ]"
##YTICSDOS  = "0 , 50, 400"
##
##XRANGET = "[ -0.5 : 0.5 ]"
##XTICST  = "-0.5 , 0.1 , 0.5"
##YRANGET = "[ 0 : 5 ]"
##YTICST  = "0 , 1 , 5"
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
#F2P_0_0 = "< paste Toy_modelle_175/FE-AF/energies-alpha-sp-g.out Toy_modelle_175/FE-AF/\
#energies-beta-sp-g.out "
#F2P_1_0 = "< paste Toy_modelle_175/FE-AF/out-alpha-sp-g.out Toy_modelle_175/FE-AF/\
#out-beta-sp-g.out"
#F2P_0_1 = "< paste Toy_modelle_175/FE-FE/energies-alpha-sp-g.out Toy_modelle_175/FE-FE/\
#energies-beta-sp-g.out"
#F2P_1_1 = "< paste Toy_modelle_175/FE-FE/out-alpha-sp-g.out Toy_modelle_175/FE-FE/out-\
#beta-sp-g.out"
#
##F2P_0_0 = "< paste Toy_modelle_171/FE-FE_00/energies-alpha-sp-g.out Toy_modelle_171/FE-FE_00/\
##energies-beta-sp-g.out"
##F2P_0_1 = "< paste Toy_modelle_171/FE-FE_01/energies-alpha-sp-g.out Toy_modelle_171/FE-FE_01/\
##energies-beta-sp-g.out"
##F2P_1_0 = "< paste Toy_modelle_171/FE-FE_00/out-alpha-sp-g.out Toy_modelle_171/FE-FE_00/out-\
##beta-sp-g.out"
##F2P_1_1 = "< paste Toy_modelle_171/FE-FE_01/out-alpha-sp-g.out Toy_modelle_171/FE-FE_01/out-\
##beta-sp-g.out"
#### --- ###
#
#### CNT-SMM ###
#
#Fermi_E_voll = 0
#Fermi_E_eq_z = -3.1
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
#do for [i=0:299] {
##do for [i=0:399] {
##do for [i=0:499] {
#set multiplot layout 3,1 rowsfirst \
##title "Toy model" font "Baskerville, 22"
#
#set format y
#set format x ''
#unset xtics
#unset mxtics
#
#set nomytics
#
#set xrange @XRANGEE
#set yrange @YRANGEE
#set ytics  @YTICSE out nomirror offset 0,0
#set xzeroaxis ls 1
#set yzeroaxis ls 1
#set mytics 2
#
#unset xlabel
#set ylabel 'E (eV)' font ",11" offset 0,0
##set arrow 2 from graph 0,0.5 to 3,0  nohead lw 4 lc 0 front
#set arrow 2 from graph 0,0.5 to -1,0.0  nohead lw 3 lc 0 front
#set arrow 3 from graph 1,0.5 to 1,0  nohead lw 3 lc 0 front
#
#set tmargin at screen 0.01
#set bmargin at screen 0.2
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
#p  F2P_0_0 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#   F2P_0_0 u (0.001):($5):(1):(0)  every :::i::i w vectors arrowstyle 33 notitle ,\
#   F2P_0_0 u (-1):($3):(-1):(0)    every :::i::i w vectors arrowstyle 2 notitle ,\
#   F2P_0_0 u (1):($6):(1):(0)      every :::i::i w vectors arrowstyle 3 notitle ,\
##   F2P_0_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                       notitle '' offset -5.0, 9.4 boxed font 'Arial, 13'
#
#unset xtics
#set format y ''
#unset ylabel
#
#set tmargin at screen 0.01
#set bmargin at screen 0.2
#set lmargin at screen 0.55
#set rmargin at screen 0.98
#
#p  F2P_0_1 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#   F2P_0_1 u (0.001):($5):(1):(0)  every :::i::i w vectors arrowstyle 33 notitle ,\
#   F2P_0_1 u (-1):($3):(-1):(0)    every :::i::i w vectors arrowstyle 2 notitle ,\
#   F2P_0_1 u (1):($6):(1):(0)      every :::i::i w vectors arrowstyle 3 notitle 
#
########################################
#
#set tics font ",11"
##set nomxtics
##set nomytics
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
#set xlabel 'DOS (eV^{-1})' font ",11"  offset 0,4
#set ylabel 'E (eV)' font ",11"  offset 0,0
#unset label 1
#unset label 2
#unset label 3
#unset arrow 1
#unset arrow 2
#unset arrow 3
#
#unset title
#
#set tmargin at screen 0.25
#set bmargin at screen 0.60
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
#p  F2P_1_0 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1_0 u 7:2 every :::i::i w l ls 3 notitle ''
#
#set format y ''
#unset ylabel
#
#set tmargin at screen 0.25
#set bmargin at screen 0.60
#set lmargin at screen 0.55
#set rmargin at screen 0.98  
#
#p  F2P_1_1 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1_1 u 7:2 every :::i::i w l ls 3 notitle ''
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
#set tmargin at screen 0.65
#set bmargin at screen 0.99
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
##unset xlabel
##unset ylabel
#set xlabel 'E (eV)' font ",11"  offset 0,20
#set ylabel 'T (a.u.)' font ",11"  offset 0,0
#
#set key top left opaque font ",12" 
#set key samplen 0
#set style textbox opaque noborder
#
#unset arrow 1
#unset arrow 2
#unset arrow 3
#
#### Fuer CNT + 2SMM 
#p F2P_1_0 u 2:4 every :::i::i w l ls 2 title '{/Symbol a}',\
#  F2P_1_0 u 2:8 every :::i::i w l ls 3 title '{/Symbol b}',\
#  F2P_1_0 u 2:($4+$8) every :::i::i w l ls 33 title 'FE-AF',\
#
#set tmargin at screen 0.65
#set bmargin at screen 0.99
#set lmargin at screen 0.55
#set rmargin at screen 0.98
#
#set format y ''
#unset ylabel
#
#### Fuer CNT + 2SMM 
#p F2P_1_1 u 2:4 every :::i::i w l ls 2 title '{/Symbol a}',\
#  F2P_1_1 u 2:8 every :::i::i w l ls 3 title '{/Symbol b}',\
#  F2P_1_1 u 2:($4+$8) every :::i::i w l ls 33 title 'FE-FE',\
#  F2P_1_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                      notitle '' offset 20,17 boxed font 'Arial, 11'
#
#unset multiplot
#}
#
#################### Fuer T und E niveaus zusammen (Statisches Bild) #########

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
#XRANGEE   = "[ -3 : 3 ]"
#XTICSE    = "autofreq"
#YRANGEE   = "[ -1.0 : 1.0 ]"
#YTICSE    = "-1.0 , 0.5 , 1.0"
#
#XRANGEDOS = "[ 0 : 8 ]"
#XTICSDOS  = "0 , 2 , 8"
#YRANGEDOS = "[ -1.0 : 1.0 ]"
#YTICSDOS  = " -1.0 , 0.5, 1.0 "
#
#XRANGET = "[ -1.0 : 1.0 ]"
#YRANGET = "[ 0 : 4 ]"
#XTICST  = "-1.0 , 0.5 , 1.0"
#YTICST  = "0 , 1 , 4"
#
#set output 'excess_EL.png'
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 13"
#
#set grid ls 9
#set grid noxtics
#set grid ytics
#set grid mytics
#set border ls 101
#set tics scale 1.0 
#
#set key top right opaque font ",13" 
#set style textbox opaque noborder
#
#F2P_0_0 = "< paste Toy_modelle/FE-AF/energies-alpha-sp-g.out Toy_modelle/FE-AF/\
#energies-beta-sp-g.out "
#F2P_0_1 = "< paste Toy_modelle/FE-FE/energies-alpha-sp-g.out Toy_modelle/FE-FE/\
#energies-beta-sp-g.out"
#F2P_1_0 = "< paste Toy_modelle/FE-AF/out-alpha-sp-g.out Toy_modelle/FE-AF/out-\
#beta-sp-g.out"
#F2P_1_1 = "< paste Toy_modelle/FE-FE/out-alpha-sp-g.out Toy_modelle/FE-FE/out-\
#beta-sp-g.out"
#
#Fermi_E_voll = 0
#Fermi_E_eq_z = -3.1
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
#set style arrow 22  nohead lc rgb '#CD2626' lw 3
#set style arrow 221 head   lc rgb '#252121' lw 2 filled
#set style arrow 222 nohead lc rgb '#66B2FF' lw 3
#set style arrow 33  nohead lc rgb '#0000EE' lw 3 
#set style arrow 331 head   lc rgb '#252121' lw 2 filled
#
##! --- Anfang von do Loop --- #
#do for [i=100:100] {
##set multiplot layout 3,1 rowsfirst
#set multiplot layout 2,1 rowsfirst
#
#set format y
#set format x ''
#unset xtics
#unset mxtics
#
#set nomytics
#
#set xrange @XRANGEE
#set yrange @YRANGEE
#set ytics  @YTICSE out nomirror offset 0,0
#set xzeroaxis ls 1
#set yzeroaxis ls 1
#set mytics 2
#
#unset xlabel
#set ylabel 'E (eV)' font ",13" offset 0,0
##set arrow 2 from graph 0,0.5 to 3,0  nohead lw 3 lc 0 front
#set arrow 2 from graph 0,0.5 to -1,0.0  nohead lw 3 lc 0 front
#set arrow 3 from graph 1,0.5 to 1,0  nohead lw 3 lc 0 front
#
#set tmargin at screen 0.5
#set bmargin at screen 0.95
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
#p  F2P_0_0 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#   F2P_0_0 u (0.001):($5):(1):(0)  every :::i::i w vectors arrowstyle 33 notitle ,\
#   F2P_0_0 u (-1):($3):(-1):(0)    every :::i::i w vectors arrowstyle 2 notitle ,\
#   F2P_0_0 u (1):($6):(1):(0)      every :::i::i w vectors arrowstyle 3 notitle ,\
#
#unset xtics
#set format y ''
#unset ylabel
#
#set tmargin at screen 0.5
#set bmargin at screen 0.95
#set lmargin at screen 0.55
#set rmargin at screen 0.98
#
#p  F2P_0_1 u (0.001):($2):(-1):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#   F2P_0_1 u (0.001):($5):(1):(0)  every :::i::i w vectors arrowstyle 33 notitle ,\
#   F2P_0_1 u (-1):($3):(-1):(0)    every :::i::i w vectors arrowstyle 2 notitle ,\
#   F2P_0_1 u (1):($6):(1):(0)      every :::i::i w vectors arrowstyle 3 notitle 
#
########################################
#
#set tics font ",11"
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
#set xlabel 'DOS (eV^{-1})' font ",13"  offset 0,0
#set ylabel 'E (eV)' font ",13"  offset 0,0
#unset label 1
#unset label 2
#unset label 3
#unset arrow 1
#unset arrow 2
#unset arrow 3
#
#unset title
#
##set tmargin at screen 0.25
##set bmargin at screen 0.60
##set lmargin at screen 0.08
##set rmargin at screen 0.51
#set tmargin at screen 0.08
#set bmargin at screen 0.45
#set lmargin at screen 0.08
#set rmargin at screen 0.51
#
#p  F2P_1_0 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1_0 u 7:2 every :::i::i w l ls 3 notitle ''
#
#set format y ''
#unset ylabel
#
##set tmargin at screen 0.25
##set bmargin at screen 0.60
##set lmargin at screen 0.55
##set rmargin at screen 0.98  
#set tmargin at screen 0.08
#set bmargin at screen 0.45
#set lmargin at screen 0.55
#set rmargin at screen 0.98
#
#p  F2P_1_1 u 3:2 every :::i::i w l ls 2 notitle '{/Times DOS}{/Times (E)}' ,\
#   F2P_1_1 u 7:2 every :::i::i w l ls 3 notitle '' ,\
#   F2P_1_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                       notitle '' offset 37,29 boxed font 'Arial, 13'
#
########################################
#
##set format x 
##set format y
##set xrange @XRANGET
##set yrange @YRANGET
##set xtics  @XTICST out nomirror offset 0,0
##set ytics  @YTICST out nomirror offset 0,0
##
##set tmargin at screen 0.65
##set bmargin at screen 0.99
##set lmargin at screen 0.08
##set rmargin at screen 0.51
##
###unset xlabel
###unset ylabel
##set xlabel 'E (eV)' font ",11"  offset 0,20
##set ylabel 'T (a.u.)' font ",11"  offset 0,0
##
##set key bottom right opaque font ",12" 
##set key samplen 0
##set style textbox opaque noborder
##
##### Fuer CNT + 2SMM 
##p F2P_1_0 u 2:($4+$8) every :::i::i w l ls 33 title 'FE-AF',\
##
##set tmargin at screen 0.65
##set bmargin at screen 0.99
##set lmargin at screen 0.55
##set rmargin at screen 0.98
##
##set format y ''
##unset ylabel
##
##### Fuer CNT + 2SMM 
##p F2P_1_1 u 2:($4+$8) every :::i::i w l ls 33 title 'FE-FE',\
##  F2P_1_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                      notitle '' offset 20,17 boxed font 'Arial, 11'
#
#unset multiplot
#}

##############  Fuer T und DOS niveaus zusammen (Statisches Bild)  #############
reset
clear

load '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
Jorges_Farben.gp

set macros

XRANGEE   = "[ -3 : 3 ]"
XTICSE    = "autofreq"
YRANGEE   = "[ -1.0 : 1.0 ]"
YTICSE    = "-1.0 , 0.5 , 1.0"

XRANGEDOS = "[ -0.5 : 0.5 ]"
XTICSDOS  = "-0.5 , 0.25, 0.5 "
YRANGEDOS = "[ 0 : 50 ]"
YTICSDOS  = "0 , 10 , 50"

XRANGET = "[ -0.5 : 0.5 ]"
XTICST  = "-0.5 , 0.25 , 0.5"
YRANGET = "[ 0 : 1 ]"
YTICST  = "0 , 0.2 , 1"

set output 'Dritte_runde_toy_modelle/Toy_modelle_d41/Toy_modell-41_T_DOS.png'
set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"

set border ls 101
set tics scale 1.0 

set key top right opaque font ",18" # Veroeffentlichung
set key samplen 1
set style textbox opaque noborder
set tics font ",19"

F2P_0_0 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d41/FE-AF/\
out-alpha-sp-g.out Dritte_runde_toy_modelle/Toy_modelle_d41/FE-AF/\
out-beta-sp-g.out"
F2P_0_1 = "< paste Dritte_runde_toy_modelle/Toy_modelle_d41/FE-FE/\
out-alpha-sp-g.out Dritte_runde_toy_modelle/Toy_modelle_d41/FE-FE/\
out-beta-sp-g.out"

Fermi_E_voll = 0
Fermi_E_eq_z = -3.1

val_00 = -0.17
val_01 = 0.3
#val_02 = 0.1

#!Schwarzer Pfeil
#set style arrow 11 head lc rgb '#131A3D' lw 1.5

#set style arrow 01 nohead lc 7 lw 3
#set style arrow 1 nohead lc rgb '#EF1414' lw 3

set arrow 1 from val_00, graph 0 to val_00, graph 1 \
arrowstyle 888
set arrow 2 from val_01, graph 0 to val_01, graph 1 \
arrowstyle 888

#! --- Anfang von do Loop --- #
do for [i=300:300] {
set multiplot layout 2,1 rowsfirst

set format y
set format x ''

set xrange @XRANGET
set yrange @YRANGET
set xtics  @XTICST out nomirror offset 0,0
set ytics  @YTICST out nomirror offset 0.5,0
set xzeroaxis ls 1
set yzeroaxis
set mxtics 2
set mytics 2

unset xlabel
set ylabel 'T (arb. units)' offset 2.0,0

set tmargin at screen 0.98
set bmargin at screen 0.58
set lmargin at screen 0.1
set rmargin at screen 0.50

set label 1 "a) FE-AF" font ",19" at -0.47,0.93 left front boxed

#p F2P_0_0 u 2:($4+$8) every :::i::i w filledcurves above y1=0 ls 22 fs \
#                                         transparent solid 0.2 notitle,\

p  F2P_0_0 u 2:4 every :::i::i w l ls 2 title "{/Symbol a}",\
   F2P_0_0 u 2:8 every :::i::i w l ls 3 title "{/Symbol b}",\
   1/0 t "Fano" ls 888

set format y ''
unset ylabel
unset label 1

set label 1 "b) FE-FE" font ",19" at -0.47,0.93 left front boxed

set tmargin at screen 0.98
set bmargin at screen 0.58
set lmargin at screen 0.56
set rmargin at screen 0.97

p  F2P_0_1 u 2:4 every :::i::i w l ls 2 title "{/Symbol a}",\
   F2P_0_1 u 2:8 every :::i::i w l ls 3 title "{/Symbol b}",\
   1/0 t "Fano" ls 888

#######################################################
set format x 
set format y
set xrange @XRANGEDOS
set yrange @YRANGEDOS
set xtics  @XTICSDOS out nomirror offset 0,0
set ytics  @YTICSDOS out nomirror offset 0.5,0
set mxtics 2 
set mytics 2
set yzeroaxis 
set xlabel 'E (eV)' offset 0,0.2
set ylabel 'DOS (eV^{-1})' offset 1.7,0

unset title

set tmargin at screen 0.51
set bmargin at screen 0.13
set lmargin at screen 0.1
set rmargin at screen 0.50

v_Hove_00 = -0.11
v_Hove_01 = 0.24
v_Hove_02 = 0.48

unset arrow 1
unset arrow 2

#set arrow 1 from v_Hove_00, graph 0 to v_Hove_00, graph 0.5 \
#arrowstyle 999 front
#set arrow 2 from v_Hove_01, graph 0 to v_Hove_01, graph 0.42 \
#arrowstyle 999 front
#set arrow 3 from v_Hove_02, graph 0 to v_Hove_02, graph 1 \
#arrowstyle 666 front

unset label 1
#unset label 2

set label 1 "c) FE-AF" font ",19" at -0.47,47 left front boxed
#set label 2 "-0.11" font ",19" at -0.12,5 right front
#set label 3 "0.22" font ",19" at 0.22,5 right front
#set label 4 "0.48" font ",19" at 0.45,5 right front tc rgb "#1E90FF"
#set label 2 "FE-AF" font ",19" at 0.27,39 left front boxed

p F2P_0_0 u 2:($3+$7) every :::i::i w l ls 22 title \
                                                  "{/Symbol a} + {/Symbol b}" ,\
  F2P_0_0 u 2:($3+$7) every :::i::i w filledcurves x1 ls 22 fs \
                             transparent solid 0.3 notitle " ",\
#  1/0 t "Broad" ls 999,\
#  1/0 t "Sharp" ls 666

set format y ''
unset ylabel

set tmargin at screen 0.51
set bmargin at screen 0.13
set lmargin at screen 0.56
set rmargin at screen 0.97

#unset arrow 1
#set arrow 1 from v_Hove_00, graph 0 to v_Hove_00, graph 0.8 \
#arrowstyle 999 front

unset label 1
unset label 2
unset label 3
unset label 4

set label 1 "d) FE-FE" font ",19" at -0.47,47 left front boxed
#set label 2 "-0.11" font ",19" at -0.12,5 right front
#set label 3 "0.22" font ",19" at 0.22,5 right front
#set label 4 "0.48" font ",19" at 0.45,5 right front tc rgb "#1E90FF"
#set label 2 "FE-FE" font ",19" at 0.27,39 left front boxed

p F2P_0_1 u 2:($3+$7) every :::i::i w l ls 33 title \
                                                  "{/Symbol a} + {/Symbol b}" ,\
  F2P_0_1 u 2:($3+$7) every :::i::i w filledcurves x1 ls 33 fs \
                             transparent solid 0.3 notitle " ",\
#  1/0 t "Broad" ls 999,\
#  1/0 t "Sharp" ls 666
#  F2P_0_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
#                          notitle '' offset 5,14 boxed font 'Arial, 21'

unset multiplot
}

###############  Fuer DOS und E niveaus zusammen (Statisches Bild)  ############
##
##reset
##clear
##
##set ls 1  lw 3.0 dt 1 lc 0
##set ls 2  lw 2.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
##set ls 3  lw 2.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
##set ls 4  lw 3.0 dt ".." lc 4
##set ls 5  lw 2.0 dt 3 lc 5
##set ls 6  lw 2.0 dt 2 lc 6
##set ls 9  lw 1.3 dt 3 lc 0
##set ls 22 lw 3.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
##set ls 33 lw 3.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
##set ls 44 lw 3.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)
##
##set ls 11  lw 1.0 dt ".." lc 0 
##set ls 12  lw 1.0 dt ".." lc "#660033"
##set ls 13  lw 3.0 dt 1    lc 1
##set ls 14  lw 3.0 dt 1    lc 3
##set ls 15  lw 3.0 dt 1    lc 3
##set ls 101 lw 1.2         lc 0          # Fuer Achsen und Tics sowie Kisten
##
##set macros
##
##XRANGEE   = "[ -3 : 3 ]"
##XTICSE    = "autofreq"
##YRANGEE   = "[ -1.0 : 1.0 ]"
##YTICSE    = "-1.0 , 0.5 , 1.0"
##
##XRANGEDOS = "[ 0 : 12 ]"
##XTICSDOS  = "0 , 5 , 12"
##YRANGEDOS = "[ -1.0 : 1.0 ]"
##YTICSDOS  = " -1.0 , 0.5, 1.0 "
##
##set output 'DOS_E_bild_t_0p1-v_0p1-eps_m0p3.png'
##set terminal pngcairo size 1024,768 enhanced font "Helvetica, 19"
##
##set grid ls 9
##set grid noxtics
###set grid ytics
##set grid mytics
##set border ls 101
##set tics scale 1.0 
##
##set key top right opaque font ",19" 
##set style textbox opaque noborder
##set label 1 "FE-AF" font ",19" at 9.5,0.9 left front boxed
##
##F2P_0_0 = "< paste Toy_modelle/FE-AF/energies-alpha-sp-g.out Toy_modelle/FE-AF/\
##energies-beta-sp-g.out "
##F2P_0_1 = "< paste Toy_modelle/FE-FE/energies-alpha-sp-g.out Toy_modelle/FE-FE/\
##energies-beta-sp-g.out"
##F2P_1_0 = "< paste Toy_modelle/FE-AF/out-alpha-sp-g.out Toy_modelle/FE-AF/out-\
##beta-sp-g.out"
##F2P_1_1 = "< paste Toy_modelle/FE-FE/out-alpha-sp-g.out Toy_modelle/FE-FE/out-\
##beta-sp-g.out"
##
##Fermi_E_voll = 0
##Fermi_E_eq_z = -3.1
##
###!Schwarzer Pfeil
##set style arrow 11 head lc rgb '#131A3D' lw 1.5
##
##set style arrow 01 nohead lc 7 lw 3
##set style arrow 1 nohead lc rgb '#EF1414' lw 3
##
##set style arrow 111 nohead lc rgb '#FF3399' lw 3
##set style arrow 2   nohead lc rgb '#E640EC' lw 3
##set style arrow 3   nohead lc rgb '#00C5CD' lw 3 
##set style arrow 22  nohead lc rgb '#CD2626' lw 5
##set style arrow 221 head   lc rgb '#252121' lw 2 filled
##set style arrow 222 nohead lc rgb '#66B2FF' lw 3
##set style arrow 33  nohead lc rgb '#0000EE' lw 5 
##set style arrow 331 head   lc rgb '#252121' lw 2 filled
##
###! --- Anfang von do Loop --- #
##do for [i=100:100] {
##set multiplot layout 1,2 rowsfirst
##
##set xrange @XRANGEDOS
##set yrange @YRANGEE
##set xtics @XTICSDOS out nomirror offset 0,0
##set mxtics 2
##set ytics  @YTICSE out nomirror offset 0,0
##set mytics 2
##
##set xlabel 'DOS (eV^{-1})'
##set ylabel 'E (eV)' font ",19" offset 2,0
###set arrow 2 from graph 0,0.5 to -1,0.0  nohead lw 3 lc 0 front
###set arrow 3 from graph 1,0.5 to 1,0  nohead lw 3 lc 0 front
##
##set tmargin at screen 0.97
##set bmargin at screen 0.12
##set lmargin at screen 0.1
##set rmargin at screen 0.51
##
##p  F2P_0_0 u (0):($2):(2):(0)   every :::i::i w vectors arrowstyle 22 notitle ,\
##   F2P_0_0 u (2):($5):(2):(0)   every :::i::i w vectors arrowstyle 33 notitle ,\
##   F2P_1_0 u 3:2 every :::i::i w l ls 2 notitle '' ,\
##   F2P_1_0 u 7:2 every :::i::i w l ls 3 notitle ''
##
###   F2P_0_0 u (-1):($3):(-1):(0) every :::i::i w vectors arrowstyle 2 notitle ,\
###   F2P_0_0 u (1):($6):(2):(0)   every :::i::i w vectors arrowstyle 3 notitle ,\
##
##
###unset xtics
##set format y ''
##unset ylabel
##unset label 1 
##set label 2 "FE-FE" font ",19" at 9.5,0.9 left front boxed
##
##set tmargin at screen 0.97
##set bmargin at screen 0.12
##set lmargin at screen 0.55
##set rmargin at screen 0.98
##
##p  F2P_0_1 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
##   F2P_0_1 u (2):($5):(2):(0)  every :::i::i w vectors arrowstyle 33 notitle ,\
##   F2P_1_1 u 3:2 every :::i::i w l ls 2 notitle '' ,\
##   F2P_1_1 u 7:2 every :::i::i w l ls 3 notitle '' ,\
##   F2P_1_1 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                       notitle '' offset 37,29 boxed font 'Arial, 13'
##
###   F2P_0_1 u (-1):($3):(-1):(0)    every :::i::i w vectors arrowstyle 2 notitle ,\
###   F2P_0_1 u (1):($6):(1):(0)      every :::i::i w vectors arrowstyle 3 notitle ,\
##
##unset multiplot
##}

##################  Fuer T vergleich (Statisches Bild)  ############
#
#reset
#clear
#
#set ls 1   lw 4.0 dt "-." lc rgb "#EE1289"  #Schoene Rot
#set ls 2   lw 4.0 dt 1    lc rgb "#4C0099"  #Schoene Rot
#set ls 3   lw 4.0 dt "--" lc rgb "#B23AEE"  #Schoene Blau
#set ls 4   lw 3.0 dt ".." lc 4
#set ls 5   lw 2.0 dt 3 lc 5
#set ls 6   lw 2.0 dt 2 lc 6
#set ls 9   lw 1.3 dt 3 lc 0
#set ls 22  lw 3.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
#set ls 33  lw 3.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
#set ls 222 lw 4.0 dt 1 lc rgb "#EE1289"  #Als 2 aber streiche anders
#set ls 333 lw 4.0 dt 1 lc rgb "#B23AEE"  #Als 3 aber Streiche anders
#set ls 44  lw 3.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)
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
#XRANGET = "[ -0.2 : 0.2 ]"
#XTICST  = "-0.2 , 0.1 , 0.2"
#YRANGET = "[ 0 : 1 ]"
#YTICST  = "0 , 0.5 , 1"
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"
#
##set grid ls 9
##set grid noxtics
##set grid ytics
##set grid mytics
#set border ls 101
#set tics scale 1.0 
#
#set style textbox opaque noborder
#
##F2P_1_0 = "< paste t_0p1-v_0p1/eps_m0p3/Toy_modelle/FE-AF/out-alpha-sp-g.out \
##t_0p1-v_0p1/eps_m0p3/Toy_modelle/FE-AF/out-beta-sp-g.out"
##F2P_1_1 = "< paste t_0p1-v_0p1/eps_m0p3/Toy_modelle/FE-FE/out-alpha-sp-g.out \
##t_0p1-v_0p1/eps_m0p3/Toy_modelle/FE-FE/out-beta-sp-g.out"
##F2P_2_0 = "< paste t_0p1-v_0p2/eps_m0p3/Toy_modelle/FE-AF/out-alpha-sp-g.out \
##t_0p1-v_0p2/eps_m0p3/Toy_modelle/FE-AF/out-beta-sp-g.out"
##F2P_2_1 = "< paste t_0p1-v_0p2/eps_m0p3/Toy_modelle/FE-FE/out-alpha-sp-g.out \
##t_0p1-v_0p2/eps_m0p3/Toy_modelle/FE-FE/out-beta-sp-g.out"
##F2P_3_0 = "< paste Toy_modelle_epsm0p3-0p3_E_0p3_t0p1_tau0p1_v0p25_del0p1_Sim71\
##/Toy_modelle/FE-AF/out-alpha-sp-g.out Toy_modelle_epsm0p3-0p3_E_0p3_t0p1_tau0p1_\
##v0p25_del0p1_Sim71/Toy_modelle/FE-AF/out-beta-sp-g.out"
##F2P_3_1 = "< paste Toy_modelle_epsm0p3-0p3_E_0p3_t0p1_tau0p1_v0p25_del0p1_Sim71\
##/Toy_modelle/FE-FE/out-alpha-sp-g.out Toy_modelle_epsm0p3-0p3_E_0p3_t0p1_tau0p1_\
##v0p25_del0p1_Sim71/Toy_modelle/FE-FE/out-beta-sp-g.out"
#
#F2P_1_0 = "< paste Toy_modelle_d46/FE-AF/out-alpha-sp-g.out Toy_modelle_d46/\
#FE-AF/out-beta-sp-g.out"
#F2P_1_1 = "< paste Toy_modelle_d46/FE-FE/out-alpha-sp-g.out Toy_modelle_d46/\
#FE-FE/out-beta-sp-g.out"
#
##! --- Anfang von do Loop --- #
#set output 'Toy_modelle_d46/T_comp_toy_model_d46.png'
##set output 'T_comp_toy_model_FE_AF_141.png'
##set output 'T_comp_toy_model_FE_FE_141.png'
##do for [i=100:100] {
#do for [i=300:300] {
#set multiplot layout 1,2 rowsfirst
#
#set key top right opaque width 0.5 height 0.6 spacing 1.3 samplen 2
#
#set xrange @XRANGET
#set yrange @YRANGET
#set xtics @XTICST out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICST out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'E (eV)'         font ",22" offset 0, 0.3
#set ylabel 'T (arb. units)' font ",22" offset 1.7, 0
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
##p F2P_1_0 u 2:($4+$8) every :::i::i w l ls 222 notitle "" 
#
#p F2P_1_0 u 2:($4+$8) every :::i::i w l ls 1 title "FE-AF",\
#  F2P_1_1 u 2:($4+$8) every :::i::i w l ls 3 title "FE-FE",\
##  F2P_1_0 u 0:0:(sprintf( "Vg = %2.3f (V)", $1 )) every :::i::i w labels \
##                          notitle '' offset 21,8.5 boxed font 'Arial, 20'
#unset multiplot
#}
#
#####################  Fuer t_s vergleich (Statisches Bild)  ###################
#
#reset
#clear
#
#set ls 1     lw 3.0 dt 1 lc 0
#set ls 2     lw 3.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
#set ls 3     lw 4.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
#set ls 1001  lw 4.0 dt 1 lc rgb "#EE1289"  #Schoene ?
#set ls 1002  lw 4.0 dt 1 lc rgb "#4C0099"  #Schoene ?
#set ls 1003  lw 4.0 dt 1 lc rgb "#B23AEE"  #Schoene ?
#set ls 4     lw 3.0 dt ".." lc 4
#set ls 5     lw 2.0 dt 3 lc 5
#set ls 6     lw 2.0 dt 2 lc 6
#set ls 9     lw 1.3 dt 3 lc 0
#set ls 22    lw 3.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
#set ls 33    lw 3.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
#set ls 44    lw 3.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)
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
#XRANGET = "[ -0.5 : 0.5 ]"
#XTICST  = "-0.5 , 0.25 , 0.5"
#YRANGET = "[ 0.0 : 2 ]"
#YTICST  = " 0.0 , 0.5, 2.0 "
#
#XRANGEDOS = "[ 0 : 15 ]"
#XTICSDOS  = "0 , 5 , 15"
#YRANGEDOS = "[ -0.5 : 0.5 ]"
#YTICSDOS  = " -0.5 , 0.25, 0.5 "
#
#set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"
#
##set grid ls 9
##set grid noxtics
##set grid ytics
##set grid mytics
#set border ls 101
#set tics scale 1.0 
#
#set key top right opaque font ",20" samplen 2 spacing 1.4 #Veroeffentlichung
#set key width -7.0
##set style textbox opaque noborder
#
## DOS T Dateien
#F2P_0_0 = "< paste Toy_modelle_d39/FE-AF/out-alpha-sp-g.out Toy_modelle_d39/\
#FE-AF/out-beta-sp-g.out"
#F2P_0_1 = "< paste Toy_modelle_d39/FE-FE/out-alpha-sp-g.out Toy_modelle_d39/\
#FE-FE/out-beta-sp-g.out"
#F2P_1_0 = "< paste Toy_modelle_d43/FE-AF/out-alpha-sp-g.out Toy_modelle_d43/\
#FE-AF/out-beta-sp-g.out"
#F2P_1_1 = "< paste Toy_modelle_d43/FE-FE/out-alpha-sp-g.out Toy_modelle_d43/\
#FE-FE/out-beta-sp-g.out"
#F2P_2_0 = "< paste Toy_modelle_d44/FE-AF/out-alpha-sp-g.out Toy_modelle_d44/\
#FE-AF/out-beta-sp-g.out"
#F2P_2_1 = "< paste Toy_modelle_d44/FE-FE/out-alpha-sp-g.out Toy_modelle_d44/\
#FE-FE/out-beta-sp-g.out"
#
## E niveaus Dataien
#F2P_E_0_0 = "< paste Toy_modelle_d39/FE-AF/energies-alpha-sp-g.out Toy_modelle_d39/\
#FE-AF/energies-beta-sp-g.out"
#F2P_E_0_1 = "< paste Toy_modelle_d39/FE-FE/energies-alpha-sp-g.out Toy_modelle_d39/\
#FE-FE/energies-beta-sp-g.out"
#F2P_E_1_0 = "< paste Toy_modelle_d43/FE-AF/energies-alpha-sp-g.out Toy_modelle_d43/\
#FE-AF/energies-beta-sp-g.out"
#F2P_E_1_1 = "< paste Toy_modelle_d43/FE-FE/energies-alpha-sp-g.out Toy_modelle_d43/\
#FE-FE/energies-beta-sp-g.out"
#F2P_E_2_0 = "< paste Toy_modelle_d44/FE-AF/energies-alpha-sp-g.out Toy_modelle_d44/\
#FE-AF/energies-beta-sp-g.out"
#F2P_E_2_1 = "< paste Toy_modelle_d44/FE-FE/energies-alpha-sp-g.out Toy_modelle_d44/\
#FE-FE/energies-beta-sp-g.out"
#
###! --- Anfang von do Loop ( T(E)-FE-AF ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_modell_FE-AF_T_d39-d43-d44.png'
#
#set xrange @XRANGET
#set yrange @YRANGET
#set xtics  @XTICST out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICST out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'E (eV)'         font ",22" offset 0, 0.3
#set ylabel 'T (arb. units)' font ",22" offset 1.7, 0
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_0_0 u 2:($4+$8) every :::i::i w l ls 1001 title \
#                   "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.10" ,\
#  F2P_1_0 u 2:($4+$8) every :::i::i w l ls 1002 title \
#                    "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.20",\
#  F2P_2_0 u 2:($4+$8) every :::i::i w l ls 1003 title \
#                    "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.25",\
#}
#
###! --- Anfang von do Loop ( T(E)-FE-FE ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_modell_FE-FE_T_d39-d43-d44.png'
#
#set xrange @XRANGET
#set yrange @YRANGET
#set xtics  @XTICST out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICST out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'E (eV)'         font ",22" offset 0, 0.3
#set ylabel 'T (arb. units)' font ",22" offset 1.7, 0
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_0_1 u 2:($4+$8) every :::i::i w l ls 1001 title \
#                    "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.10" ,\
#  F2P_1_1 u 2:($4+$8) every :::i::i w l ls 1002 title \
#                    "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.20",\
#  F2P_2_1 u 2:($4+$8) every :::i::i w l ls 1003 title \
#                    "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.25",\
#}
#
####! --- Anfang von do Loop ( DOS(E) und E FE-AF , t_s = 0.1 ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_model_FE-AF_DOS_t_0p1_d39.png'
#
#set key top right opaque font ",22" samplen 2 #Veroeffentlichung
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'DOS (eV^{-1})'         font ",22" offset 0, 0.3
#set ylabel 'E (eV)' font ",22" offset 1.7, 0
#set label 1 "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.10" at 10.0,0.3 \
#font ",22" front
#
#set style arrow 22 nohead lc rgb '#CD2626' lw 8
#set style arrow 33 nohead lc rgb '#0000EE' lw 8 
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_0_0 u 3:2 every :::i::i w l ls 2 title "{/Symbol a}",\
#  F2P_0_0 u 7:2 every :::i::i w l ls 3 title "{/Symbol b}",\
#  F2P_E_0_0 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#  F2P_E_0_0 u (2):($5):(2):(0) every :::i::i w vectors arrowstyle 33 notitle ,\
#}
#
###! --- Anfang von do Loop ( DOS(E) und E FE-FE , t_s = 0.1 ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_model_FE-FE_DOS_t_0p1_d39.png'
#
##set key top right opaque font ",22" samplen 2 #Veroeffentlichung
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'DOS (eV^{-1})'         font ",22" offset 0, 0.3
#set ylabel 'E (eV)' font ",22" offset 1.7, 0
#set label 1 "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.10" at 10.0,0.3 \
#font ",22" front
#
#set style arrow 22 nohead lc rgb '#CD2626' lw 8
#set style arrow 33 nohead lc rgb '#0000EE' lw 8 
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_0_1 u 3:2 every :::i::i w l ls 2 title "{/Symbol a}",\
#  F2P_0_1 u 7:2 every :::i::i w l ls 3 title "{/Symbol b}",\
#  F2P_E_0_1 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#  F2P_E_0_1 u (2):($5):(2):(0) every :::i::i w vectors arrowstyle 33 notitle ,\
#}
#
###! --- Anfang von do Loop ( DOS(E) und E FE-AF , t_s = 0.2 ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_model_FE-AF_DOS_t_0p2_d43.png'
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'DOS (eV^{-1})'         font ",22" offset 0, 0.3
#set ylabel 'E (eV)' font ",22" offset 1.7, 0
#set label 1 "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.20" at 10.0,0.3 \
#font ",22" front
#
#set style arrow 22 nohead lc rgb '#CD2626' lw 8
#set style arrow 33 nohead lc rgb '#0000EE' lw 8 
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_1_0 u 3:2 every :::i::i w l ls 2 title "{/Symbol a}",\
#  F2P_1_0 u 7:2 every :::i::i w l ls 3 title "{/Symbol b}",\
#  F2P_E_1_0 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#  F2P_E_1_0 u (2):($5):(2):(0) every :::i::i w vectors arrowstyle 33 notitle ,\
#}
#
###! --- Anfang von do Loop ( DOS(E) und E FE-FE , t_s = 0.2 ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_model_FE-FE_DOS_t_0p2_d43.png'
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'DOS (eV^{-1})'         font ",22" offset 0, 0.3
#set ylabel 'E (eV)' font ",22" offset 1.7, 0
#set label 1 "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.20" at 10.0,0.3 \
#font ",22" front
#
#set style arrow 22 nohead lc rgb '#CD2626' lw 8
#set style arrow 33 nohead lc rgb '#0000EE' lw 8 
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_1_1 u 3:2 every :::i::i w l ls 2 title "{/Symbol a}",\
#  F2P_1_1 u 7:2 every :::i::i w l ls 3 title "{/Symbol b}",\
#  F2P_E_1_1 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#  F2P_E_1_1 u (2):($5):(2):(0) every :::i::i w vectors arrowstyle 33 notitle ,\
#}
#
###! --- Anfang von do Loop ( DOS(E) und E FE-AF , t_s = 0.25 ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_model_FE-AF_DOS_t_0p25_d44.png'
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'DOS (eV^{-1})'         font ",22" offset 0, 0.3
#set ylabel 'E (eV)' font ",22" offset 1.7, 0
#set label 1 "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.25" at 10.0,0.3 \
#font ",22" front
#
#set style arrow 22 nohead lc rgb '#CD2626' lw 8
#set style arrow 33 nohead lc rgb '#0000EE' lw 8 
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_1_0 u 3:2 every :::i::i w l ls 2 title "{/Symbol a}",\
#  F2P_1_0 u 7:2 every :::i::i w l ls 3 title "{/Symbol b}",\
#  F2P_E_1_0 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#  F2P_E_1_0 u (2):($5):(2):(0) every :::i::i w vectors arrowstyle 33 notitle ,\
#}
#
###! --- Anfang von do Loop ( DOS(E) und E FE-FE , t_s = 0.25 ) --- #
#do for [i=300:300] {
#set output 't_s_comp_toy_model_FE-FE_DOS_t_0p25_d44.png'
#
#set xrange @XRANGEDOS
#set yrange @YRANGEDOS
#set xtics  @XTICSDOS out nomirror offset 0,0
#set mxtics 2
#set ytics  @YTICSDOS out nomirror offset 0,0
#set mytics 2
#
#set xlabel 'DOS (eV^{-1})' font ",22" offset 0, 0.3
#set ylabel 'E (eV)' font ",22" offset 1.7, 0
#set label 1 "t^{13}_{{/Symbol s}, k} = t^{24}_{{/Symbol s}, k} = 0.25" at 10.0,0.3 \
#font ",22" front
#
#set style arrow 22 nohead lc rgb '#CD2626' lw 8
#set style arrow 33 nohead lc rgb '#0000EE' lw 8 
#
#set tmargin at screen 0.97
#set bmargin at screen 0.13
#set lmargin at screen 0.13
#set rmargin at screen 0.97
#
#p F2P_1_1 u 3:2 every :::i::i w l ls 2 title "{/Symbol a}",\
#  F2P_1_1 u 7:2 every :::i::i w l ls 3 title "{/Symbol b}",\
#  F2P_E_1_1 u (0):($2):(2):(0) every :::i::i w vectors arrowstyle 22 notitle ,\
#  F2P_E_1_1 u (2):($5):(2):(0) every :::i::i w vectors arrowstyle 33 notitle ,\
#}
