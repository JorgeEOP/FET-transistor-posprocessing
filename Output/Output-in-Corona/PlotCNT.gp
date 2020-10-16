reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt '--' lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt 1 lc 8
set ls 5 lw 2 dt 3 lc 5
set ls 6 lw 2 dt 2 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '5_0_CNT-9periods.png'
#set output '6_0_CNT-14periods.png'
#set output '9_0_CNT-16periods.png'
#set output 'CNT_cb_0p3795-Vg.png'
set output 'CNT_cb_0p01Vg.png'

#set output '12_0_CNT-9periods-3x3x3.png'
#set output '12_0_CNT-9periods-SZV.png'

#set output '13_0_CNT-9periods-SZV.png'
#set output '13_0_CNT-9periods.png'

#set output '14_0_CNT-comp-tube-ribbon.png'

#set title "(5,0) CNT 9periods"
#set title "(6,0) CNT 14periods"
#set title "(9,0) CNT 16periods"
#set title "(12,0) CNT"
#set title "(13,0) CNT"
#set title "(14,0) CNT 6periods (DZVP basis set)"
#set title "(9,0) CNT 16periods non-CB vs CB regime"

XRANGE  = "[-1.0:1.0]"
#YRANGE  = "[*:100]"
YRANGE  = "[*:50]"
XTICS   = "-1.0,0.5,1.0"
#YTICS   = "0,20,50"
YTICS   = "0,10.0,50"

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

set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 2,0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.3795181 eV";
set multiplot layout 2,2 rowsfirst title "(9,0) CNT 16periods non-CB vs CB regime; Vg = 0.01 eV";

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

p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:3 w l ls 1 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:3  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:3 w l ls 2 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:3  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\

################################################################
#XTICS   = "-0.5,0.1,0.5"
YTICS   = "0,0.5,4"
#XRANGE  = "[-1.5:1.5]"
YRANGE  = "[0:4]"
set key top left opaque font ",15"
unset title

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
set ylabel 'T(E)' font ",19" offset 3,0

#set tmargin at screen 0.0
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   


#p    'CNT5_0-3periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-def2-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 2 notitle ' ',\

#p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\

#p    'CNT6_0-14periods-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT9_0-16periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-SZV/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-3x3x3/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT13_0-9periods/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT13_0-9periods-SZV/out.dat' u 1:3 w l ls 3 notitle ' ',\
#     'CNT13_0-9periods-DZVP/out.dat' u 1:3 w l ls 4 notitle ' ',\
#     'CNT13_0-9periods-DZVP-test/out.dat' u 1:3 w l ls 5 notitle ' ',\

#p    'CNT14_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\

p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:4 w l ls 1 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:4  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:4 w l ls 2 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:4  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\

################################################################
set macros

XRANGE  = "[-1.0:1.0]"
#YRANGE  = "[*:100]"
YRANGE  = "[*:50]"
#XTICS   = "-1.0,0.25,1.0"
#YTICS   = "0,20,100"
YTICS   = "0,10.0,50"

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

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  


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

p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:5 w l ls 1 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:5  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:5 w l ls 2 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:5  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\

################################################################
#XTICS   = "-0.5,0.1,0.5"
YTICS   = "0,0.5,4"
#XRANGE  = "[-1.5:1.5]"
YRANGE  = "[0:4]"
set key top left opaque font ",15"
unset title

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
set ylabel 'T(E)' font ",19" offset 3,0

#set tmargin at screen 0.1
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   


#p    'CNT5_0-3periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-3periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-3periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-6periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-6periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-def2-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-9periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-9periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-15periods-DZVP-3pz/out.dat' u 1:3 w l ls 2 notitle ' ',\
#     'CNT5_0-15periods-DZVP-3pz-4pz/out.dat' u 1:3 w l ls 3 notitle ' ',\

#p    'CNT5_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-15periods-DZVP/out.dat' u 1:3 w l ls 2 notitle ' ',\

#p    'CNT5_0-9periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT5_0-9periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\

#p    'CNT6_0-14periods-TZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT9_0-16periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-SZV/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-3x3x3/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT13_0-9periods/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT13_0-9periods-SZV/out.dat' u 1:3 w l ls 3 notitle ' ',\
#     'CNT13_0-9periods-DZVP/out.dat' u 1:3 w l ls 4 notitle ' ',\
#     'CNT13_0-9periods-DZVP-test/out.dat' u 1:3 w l ls 5 notitle ' ',\

#p    'CNT14_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\

p    'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:6 w l ls 1 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-alpha_0p01Vg.out' u 2:6  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:6 w l ls 2 notitle ' ',\
     'CNT_9_0-16periods-CB-SZV-2nd/out-beta_0p01Vg.out' u 2:6  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\

unset multiplot
