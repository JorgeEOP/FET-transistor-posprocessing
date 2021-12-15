reset
clear

load '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Gnuplot_Scripts/\
Jorges_Farben.gp'

set macros

set terminal pngcairo size 1024,768 enhanced font "Helvetica, 24"

## Fuer MacOs
set output '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/CNT_13_0_3periods_tube.png'
## Fuer Ubuntu
#set output '/home/jorge/Desktop/Physik/FET-transistor-posprocessing/Output/\
#Output-in-Corona/CNT_13_0_3periods_tube_DZVP.png'

#set title "(5,0) CNT 9periods"

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
F2P_0 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/SZV/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
Simulationen/CNT/CNT_13_0/tube/SZV/out-beta.out"
F2P_1 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/DZVP/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
Simulationen/CNT/CNT_13_0/tube/DZVP/out-beta.out"
F2P_2 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/TZVP/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
Simulationen/CNT/CNT_13_0/tube/TZVP/out-beta.out"
## Fuer Ubuntu
#F2P_0 = "< paste /home/jorge/Desktop/Physik/FET-transistor-posprocessing/Output/\
#Output-in-Corona/CNT_13_0_3periods_DZVP/tube/out-alpha.out /home/jorge/Desktop/\
#Physik/FET-transistor-posprocessing/Output/Output-in-Corona/\
#CNT_13_0_3periods_DZVP/tube/out-beta.out"

#set tics font ",18" 
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

#set xlabel 'E + E_f (eV)' font ",18" offset 0,1.0
#set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0
set xlabel 'E + E_f (eV)' offset 0,0.6
set ylabel 'DOS(eV^{-1})' offset 1.3,0

#set label 2 "(d)" font ",26" at -0.49,5.7 left front

set key top right opaque font ", 21" box ls 101 lw 1.3 width 1.2 height 0.6 \
                                            maxcols 2 spacing 1.1 samplen 2
set style textbox opaque noborder
set border lw 1.3

#set grid ls 9

#set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.3795181 eV";
#set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.01 eV";

set tmargin at screen 0.13
set bmargin at screen 0.95
set lmargin at screen 0.11
set rmargin at screen 0.96  

#set tmargin at screen 0.4
#set bmargin at screen 0.0
#set lmargin at screen 0.0
#set rmargin at screen 0.4  

# DOS alleine alpha und beta getrennt
#p F2P_0 u 1:2 w l ls 2 notitle ' ',\
#  F2P_0 u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#  F2P_0 u 1:5 w l ls 3 notitle ' ',\
#  F2P_0 u 1:5  w filledcurves x1 ls 3 fs transparent solid 0.3 notitle ' ',\

# DOS alleine alpha und beta zusammen
p F2P_0 u 1:($2+$5) w l ls 22 notitle ' ',\
  F2P_0 u 1:($2+$5) w filledcurves x1 ls 22 fs transparent solid 0.3 title 'SZV',\
  F2P_1 u 1:($2+$5) w l ls 33 notitle ' ',\
  F2P_1 u 1:($2+$5) w filledcurves x1 ls 33 fs transparent solid 0.3 title 'DZVP',\
  F2P_2 u 1:($2+$5) w l ls 44 notitle ' ',\
  F2P_2 u 1:($2+$5) w filledcurves x1 ls 44 fs transparent solid 0.3 title 'TZVP',\

#################################################################
reset
clear

set ls 1  lw 4.0 dt 1 lc 0
set ls 2  lw 4.0 dt 1 lc rgb "#CD2626"  #Schoene Rot
set ls 3  lw 4.0 dt 1 lc rgb "#0000EE"  #Schoene Blau
set ls 4  lw 4.0 dt ".." lc 4
set ls 5  lw 2.0 dt 3 lc 5
set ls 6  lw 2.0 dt 2 lc 6
set ls 9  lw 1.3 dt 3 lc 0
set ls 22 lw 4.0 dt 1 lc rgb "#E640EC"  #Schoene Purpur
set ls 33 lw 4.0 dt 1 lc rgb "#00C5CD"  #Schoene Magenta
set ls 44 lw 4.0 dt 1 lc rgb "#8A088A"  #Schoene Purpur2 (CNT)

set ls 11  lw 4.0 dt ".." lc 0 
set ls 12  lw 1.0 dt ".." lc "#660033"
set ls 13  lw 4.0 dt 1    lc 1
set ls 14  lw 4.0 dt 1    lc 3
set ls 15  lw 4.0 dt 1    lc 3
set ls 101 lw 1.2         lc 0          #Fuer Achsen und Tics sowie Kisten

set macros

set terminal pngcairo size 1024,768 enhanced font "Helvetica, 24"

## Fuer MacOs
set output '/Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/CNT_13_0/\
tube/CNT_13_0_3periods_tube_T.png'
## Fuer Ubuntu
#set output '/home/jorge/Desktop/Physik/FET-transistor-posprocessing/Output/Output-in-Corona\
#/CNT_13_0_3periods_tube_DZVP.png'

#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,10,60"
YTICS   = "0,1,10"
#XRANGE  = "[-1.5:1.5]"
#YRANGE  = "[0:60]"
YRANGE  = "[0:10]"

## Fuer MacOs
F2P_0 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/SZV/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
Simulationen/CNT/CNT_13_0/tube/SZV/out-beta.out"
F2P_1 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/DZVP/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
Simulationen/CNT/CNT_13_0/tube/DZVP/out-beta.out"
F2P_2 = "< paste /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/Simulationen/CNT/\
CNT_13_0/tube/TZVP/out-alpha.out /Users/jorge_jaeger/Desktop/Physik/KIT/PhD/\
Simulationen/CNT/CNT_13_0/tube/TZVP/out-beta.out"
## Fuer Ubuntu
#F2P_0 = "< paste /home/jorge/Desktop/Physik/FET-transistor-posprocessing/Output/\
#Output-in-Corona/CNT_13_0_3periods_DZVP/tube/out-alpha.out /home/jorge/Desktop/\
#Physik/FET-transistor-posprocessing/Output/Output-in-Corona/CNT_13_0_3periods_DZVP/\
#tube/out-beta.out"

#set tics font ",18" 
set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS out nomirror offset 0,0.4
set ytics @YTICS in nomirror offset 0.4,0
set mxtics 2
set mytics 2

#set grid noxtics
#set grid noytics
#set logscale y
#set format x ''

set xlabel 'E + E_f (eV)'    offset 0,0.6
set ylabel 'T (arb. units)' offset 1.3,0

unset title

set key top right opaque font ", 21" box ls 101 lw 1.3 width 1.2 height 0.6 \
                                            maxcols 2 spacing 1.1 samplen 2
set style textbox opaque noborder
set border lw 1.3

bandluecke_13_0  = 0.14
bandluecke_13_0 = 0.91
bandluecke_13_0 = 0.12
bandluecke_13_0 = 0.71
#set arrow from bandluecke_13_0, graph 0 to bandluecke_13_0, graph 1 nohead

set tmargin at screen 0.13
set bmargin at screen 0.95
set lmargin at screen 0.11
set rmargin at screen 0.96  

# DOS alleine alpha und beta getrennt
#p F2P_0 u 1:2 w l ls 2 notitle ' ',\
#  F2P_0 u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#  F2P_0 u 1:5 w l ls 3 notitle ' ',\
#  F2P_0 u 1:5  w filledcurves x1 ls 3 fs transparent solid 0.3 notitle ' ',\

# DOS alleine alpha und beta zusammen
p F2P_0 u 1:($3+$6) w l ls 22 title 'SZV',\
  F2P_1 u 1:($3+$6) w l ls 33 title 'DZVP',\
  F2P_2 u 1:($3+$6) w l ls 44 title 'TZVP',\
