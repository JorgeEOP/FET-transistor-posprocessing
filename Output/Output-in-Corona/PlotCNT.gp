reset
clear

set ls 1  lw 3.0 dt 1 lc 0
set ls 2  lw 3.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
set ls 3  lw 3.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
set ls 4  lw 3.0 dt ".." lc 4
set ls 5  lw 2.0 dt 3 lc 5
set ls 6  lw 2.0 dt 2 lc 6
set ls 9  lw 1.3 dt 3 lc 0
set ls 22 lw 3.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
set ls 33 lw 3.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
set ls 44 lw 3.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)

set ls 11  lw 3.0 dt ".." lc 0 
set ls 12  lw 1.0 dt ".." lc "#660033"
set ls 13  lw 3.0 dt 1    lc 1
set ls 14  lw 3.0 dt 1    lc 3
set ls 15  lw 3.0 dt 1    lc 3
set ls 101 lw 1.2         lc 0         # Fuer Achsen und Tics sowie Kisten

set macros

set terminal pngcairo size 1024,768 enhanced font "Helvetica, 22"

#set output '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/CNT_5_0/\
#tube/CNT_5_0_3periods_tube.png'
## Fuer MacOs
#set output '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/CNT_10_0/\
#tube/SZV/CNT_10_0_3periods_tube_SZV.png'
## Fuer Ubuntu
set output '/home/jorge/Desktop/Physik/FET-transistor-posprocessing/Output/Output-in-Corona\
/CNT_10_0_3periods_tube_SZV.png'

#set title "(5,0) CNT 9periods"
#set title "(6,0) CNT 14periods"
#set title "(9,0) CNT 16periods"
#set title "(12,0) CNT"
#set title "(13,0) CNT"
#set title "(14,0) CNT 6periods (DZVP basis set)"
#set title "(9,0) CNT 16periods non-CB vs CB regime"

XRANGE  = "[-1.5:1.5]"
#YRANGE  = "[*:100]"
YRANGE  = "[*:50]"
XTICS   = "-1.5,0.5,1.5"
#YTICS   = "0,20,50"
YTICS   = "0,10.0,50"

#F2P_0 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
#CNT_5_0/tube/out-alpha-sp-g-1eV.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
#Simulationen/CNT/CNT_5_0/tube/out-beta-sp-g-1eV.out"
## Fuer MacOs
#F2P_0 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
#CNT_10_0/tube/SZV/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
#Simulationen/CNT/CNT_10_0/tube/SZV/out-beta.out"
## Fuer Ubuntu
F2P_0 = "< paste /home/jorge/Desktop/Physik/FET-transistor-posprocessing/Output/\
Output-in-Corona/CNT_10_0_3periods_SZV/tube/out-alpha.out /home/jorge/Desktop/\
Physik/FET-transistor-posprocessing/Output/Output-in-Corona/CNT_10_0_3periods_SZV/\
tube/out-beta.out"

set tics font ",18" 
set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS out nomirror offset 0,0.4
set ytics @YTICS in offset 0.4,0
set mxtics 2
set mytics 2

#set grid noxtics
#set grid noytics
#set logscale y
#set format x ''

set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0

#set key top right opaque font ", 14" box ls 101 width 0 height 0.6 \
#                                  maxcols 2 spacing 1.1 samplen 2
set style textbox opaque noborder

#set grid ls 9

#set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.3795181 eV";
#set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.01 eV";

#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  

#set tmargin at screen 0.4
#set bmargin at screen 0.0
#set lmargin at screen 0.0
#set rmargin at screen 0.4  

#p    'CNT5_0-3periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
#     'CNT5_0-3periods-DZVP-SR/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
#     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
#     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
#     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
#     'CNT5_0-6periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\

#     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
#     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
#     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
#     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-def2-TZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
#     'CNT5_0-6periods-def2-TZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\

#p    'CNT5_0-9periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
#     'CNT5_0-9periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
#     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
#     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
#     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\

#p    'CNT5_0-15periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
#     'CNT5_0-15periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
#     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
#     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
#     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title '6 periods',\
#     'CNT5_0-6periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT5_0-15periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '15 periods',\
#     'CNT5_0-15periods-DZVP/out.dat' u 1:2  w l ls 2 notitle ' ',\

#p    'CNT5_0-9periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'Ribbon',\
#     'CNT5_0-9periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title 'Tube',\
#     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:2  w l ls 2 notitle ' ',\

#p    'CNT6_0-14periods-TZVP/out.dat' u 1:2 w l ls 1 notitle ' ',\
#     'CNT6_0-14periods-TZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

#p    'CNT9_0-16periods-DZVP-SR/out.dat' u 1:2 w l ls 1 notitle ' ',\
#     'CNT9_0-16periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

#p    'CNT12_0-9periods-SZV/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#     'CNT12_0-9periods-SZV/out.dat' u 1:2  w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-3x3x3/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#     'CNT12_0-9periods-3x3x3/out.dat' u 1:2  w l ls 1 notitle ' ',\

#p    'CNT13_0-9periods/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.2 title 'TZVP 1500 points ',\
#     'CNT13_0-9periods/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT13_0-9periods-SZV/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title 'SZV ',\
#     'CNT13_0-9periods-SZV/out.dat' u 1:2  w l ls 3 notitle ' ',\
#     'CNT13_0-9periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 4 fs transparent solid 0.3 title 'DZVP ',\
#     'CNT13_0-9periods-DZVP/out.dat' u 1:2  w l ls 4 notitle ' ',\
#     'CNT13_0-9periods-DZVP-test/out.dat' u 1:2  w filledcurves x1 ls 5 fs transparent solid 0.3 \
#     title 'DZVP no Overlap matrix ',\
#     'CNT13_0-9periods-DZVP-test/out.dat' u 1:2  w l ls 5 notitle ' ',\

p F2P_0 u 1:2 w l ls 1 notitle ' ',\
  F2P_0 u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
  F2P_0 u 1:5 w l ls 2 notitle ' ',\
  F2P_0 u 1:5  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\

#################################################################
##XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,0.5,4"
##XRANGE  = "[-1.5:1.5]"
#YRANGE  = "[0:4]"
#set key top left opaque font ",15"
#unset title
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
#set ylabel 'T(E)' font ",19" offset 3,0
#
##set tmargin at screen 0.0
##set bmargin at screen 0.45
##set lmargin at screen 0.1
##set rmargin at screen 0.96   
#
#
##p    'CNT5_0-3periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-def2-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 2 notitle ' ',\
#
##p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\
#
##p    'CNT6_0-14periods-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT9_0-16periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT12_0-9periods-SZV/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT12_0-9periods-3x3x3/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT13_0-9periods/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT13_0-9periods-SZV/out.dat' u 1:3 w l ls 3 notitle ' ',\
##     'CNT13_0-9periods-DZVP/out.dat' u 1:3 w l ls 4 notitle ' ',\
##     'CNT13_0-9periods-DZVP-test/out.dat' u 1:3 w l ls 5 notitle ' ',\
#
##p    'CNT14_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\
#
#p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:4 w l ls 1 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:4  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:4 w l ls 2 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:4  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#
#################################################################
#set macros
#
#XRANGE  = "[-1.0:1.0]"
##YRANGE  = "[*:100]"
#YRANGE  = "[*:50]"
##XTICS   = "-1.0,0.25,1.0"
##YTICS   = "0,20,100"
#YTICS   = "0,10.0,50"
#
#set tics font ",17" 
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
#
##set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
#
#set key top right opaque font ",14" 
#set style textbox opaque noborder
#
#set grid ls 9
#
##set tmargin at screen 0.55
##set bmargin at screen 0.9
##set lmargin at screen 0.1
##set rmargin at screen 0.96  
#
#
##p    'CNT5_0-3periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
##     'CNT5_0-3periods-DZVP-SR/out.dat' u 1:2  w l ls 1 notitle ' ',\
##     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
##     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
##     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
##     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
##     'CNT5_0-6periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#
##     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
##     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
##     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
##     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-def2-TZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
##     'CNT5_0-6periods-def2-TZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#
##p    'CNT5_0-9periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
##     'CNT5_0-9periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
##     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
##     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
##     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
##     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\
#
##p    'CNT5_0-15periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'All AO',\
##     'CNT5_0-15periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
##     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '3pz',\
##     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:2  w l ls 2 notitle ' ',\
##     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title '3pz-4pz ',\
##     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:2  w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title '6 periods',\
##     'CNT5_0-6periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
##     'CNT5_0-15periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title '15 periods',\
##     'CNT5_0-15periods-DZVP/out.dat' u 1:2  w l ls 2 notitle ' ',\
#
##p    'CNT5_0-9periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'Ribbon',\
##     'CNT5_0-9periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
##     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title 'Tube',\
##     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:2  w l ls 2 notitle ' ',\
#
##p    'CNT6_0-14periods-TZVP/out.dat' u 1:2 w l ls 1 notitle ' ',\
##     'CNT6_0-14periods-TZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#
##p    'CNT9_0-16periods-DZVP-SR/out.dat' u 1:2 w l ls 1 notitle ' ',\
##     'CNT9_0-16periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#
##p    'CNT12_0-9periods-SZV/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
##     'CNT12_0-9periods-SZV/out.dat' u 1:2  w l ls 1 notitle ' ',\
#
##p    'CNT12_0-9periods-3x3x3/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
##     'CNT12_0-9periods-3x3x3/out.dat' u 1:2  w l ls 1 notitle ' ',\
#
##p    'CNT13_0-9periods/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.2 title 'TZVP 1500 points ',\
##     'CNT13_0-9periods/out.dat' u 1:2  w l ls 1 notitle ' ',\
##     'CNT13_0-9periods-SZV/out.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.3 title 'SZV ',\
##     'CNT13_0-9periods-SZV/out.dat' u 1:2  w l ls 3 notitle ' ',\
##     'CNT13_0-9periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 4 fs transparent solid 0.3 title 'DZVP ',\
##     'CNT13_0-9periods-DZVP/out.dat' u 1:2  w l ls 4 notitle ' ',\
##     'CNT13_0-9periods-DZVP-test/out.dat' u 1:2  w filledcurves x1 ls 5 fs transparent solid 0.3 \
##     title 'DZVP no Overlap matrix ',\
##     'CNT13_0-9periods-DZVP-test/out.dat' u 1:2  w l ls 5 notitle ' ',\
#
#p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:5 w l ls 1 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:5  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:5 w l ls 2 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:5  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#
#################################################################
##XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,0.5,4"
##XRANGE  = "[-1.5:1.5]"
#YRANGE  = "[0:4]"
#set key top left opaque font ",15"
#unset title
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
#set ylabel 'T(E)' font ",19" offset 3,0
#
##set tmargin at screen 0.1
##set bmargin at screen 0.45
##set lmargin at screen 0.1
##set rmargin at screen 0.96   
#
#
##p    'CNT5_0-3periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-def2-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
##     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\
#
##p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 2 notitle ' ',\
#
##p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\
#
##p    'CNT6_0-14periods-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT9_0-16periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT12_0-9periods-SZV/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT12_0-9periods-3x3x3/out.dat' u 1:3 w l ls 1 notitle ' ',\
#
##p    'CNT13_0-9periods/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT13_0-9periods-SZV/out.dat' u 1:3 w l ls 3 notitle ' ',\
##     'CNT13_0-9periods-DZVP/out.dat' u 1:3 w l ls 4 notitle ' ',\
##     'CNT13_0-9periods-DZVP-test/out.dat' u 1:3 w l ls 5 notitle ' ',\
#
##p    'CNT14_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
##     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\
#
#p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:6 w l ls 1 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:6  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:6 w l ls 2 notitle ' ',\
#     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:6  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#
#unset multiplot
