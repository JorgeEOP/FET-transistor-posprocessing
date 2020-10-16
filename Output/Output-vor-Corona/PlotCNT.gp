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

#set output '5_0_CNT-9periods.png'
#set output '6_0_CNT-14periods.png'
set output '9_0_CNT-14periods-B3LYP.png'

#set output '12_0_CNT-9periods-3x3x3.png'
#set output '12_0_CNT-9periods-SZV.png'

#set output '13_0_CNT-9periods-SZV.png'
#set output '13_0_CNT-9periods.png'

#set output '14_0_CNT-comp-tube-ribbon.png'

#set title "(5,0) CNT 9periods"
#set title "(6,0) CNT 14periods"
set title "(9,0) CNT 14periods B3LYP"
#set title "(12,0) CNT"
#set title "(13,0) CNT"
#set title "(14,0) CNT 6periods (DZVP basis set)"

XTICS   = "-0.5,0.1,0.5"
#YTICS   = "-0.5,1.0,0.5"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[*:100]"

set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS in mirror
#set ytics @YTICS out nomirror 
set mxtics 2 
set mytics 2
set grid noxtics 
set grid noytics
set ylabel 'DOS(E)' font ",19" offset 1

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

set multiplot layout 2, 1;
set tmargin 2
set bmargin 2
set lmargin 7.5
set rmargin 5


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

p    'CNT9_0-14periods-TZVP-B3LYP/out.dat' u 1:2 w l ls 1 notitle ' ',\
     'CNT9_0-14periods-TZVP-B3LYP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

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


#p    'CNT14_0-6periods-DZVP/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 title 'Ribbon',\
#     'CNT14_0-6periods-DZVP/out.dat' u 1:2  w l ls 1 notitle ' ',\
#     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.3 title 'Tube',\
#     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:2  w l ls 2 notitle ' ',\
################################################################

set key top left opaque font ",15"
unset title


unset logscale y
set xlabel 'E-E_f [eV]'
set format x
#set format y "%3.0e"
set yrange [0:*]
#set ytics 0,2,11
set ylabel 'T(E)' font ",19"  offset 1
set mxtics 2

set tmargin 1
set bmargin 4
set lmargin 7.5
set rmargin 5


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

p    'CNT9_0-14periods-TZVP-B3LYP/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-SZV/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT12_0-9periods-3x3x3/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    'CNT13_0-9periods/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT13_0-9periods-SZV/out.dat' u 1:3 w l ls 3 notitle ' ',\
#     'CNT13_0-9periods-DZVP/out.dat' u 1:3 w l ls 4 notitle ' ',\
#     'CNT13_0-9periods-DZVP-test/out.dat' u 1:3 w l ls 5 notitle ' ',\

#p    'CNT14_0-6periods-DZVP/out.dat' u 1:3 w l ls 1 notitle ' ',\
#     'CNT14_0-6periods-DZVP-tube/out.dat' u 1:3 w l ls 2 notitle ' ',\

unset multiplot
