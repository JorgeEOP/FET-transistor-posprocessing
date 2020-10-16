########################## (1) Normal 2SMM+CNT transmission and DOS   ##########################
reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt "-" lc 4
set ls 5 lw 2 dt 1 lc 5
set ls 6 lw 2 dt 1 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16per-2TbPc_CNT9_0-Antipar-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0-FE-FE-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0-Anti-FE-AF-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0-Antipar-SR-1eV-up-down.png'
#set output '16per-2TbPc_CNT9_0-FE-FE-SR-1eV-UP-UP.png'
#set output '16per-2TbPc_CNT9_0-Anti-FE-AF-SR-1eV-UP-DOWN.png'
#set output '16per-2TbPc_CNT9_0_Metal-Antipar-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-Antipar-SR-R-geo-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-FE-FE-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-FE-FE-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Anti-FE-AF-SR-1eV.png'
#set output '16per-2TbPc_CNT9_0_Metal-Antipar-SR-1eV-up-down.png'
#set output '16per-2TbPc_CNT9_0_Metal-FE-FE-SR-1eV-UP-UP.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-Antipar-SR-R-geo-1eV-up-down-5p6E.png'
#set output '16per-2TbPc_CNT9_0_Metal-Al-FE-FE-SR-1eV-UP-UP-5p6E.png'
set output 'CNT_cb_0Vg.png'

#set output 'Kont-9_0_CNT-Pd_111_1x2_7Ang_Metal-SR-1eV-AntiparallelGEO.png'
#set output 'Kont-9_0_CNT-Pd_111_1x2_7Ang_Metal-SR-1eV.png'
#set output 'Kont-9_0_CNT_pristine-Pd_111_1x2_7Ang_Metal-SR-1eV.png'

#set title "16per of (9,0)CNT + 2TbPc_2 (Antipar): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-FE); SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-AF): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 (Antipar): SR-basis; CDFT: up-down"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-FE); SR-basis; CDFT: UP-UP"
#set title "16per of (9,0)CNT + 2TbPc_2 (FE-AF): SR-basis; CDFT: UP-DOWN"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE); SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (Anti-FE-AF): SR-basis"
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar): SR-basis; CDFT: up-down" font 'Arial, 18'
#set title "16per of (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE); SR-basis; CDFT: UP-UP" font 'Arial, 18'
#set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar): SR-basis; CDFT: up-down" font 'Arial, 18'
set title "16per of (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE); SR-basis; CDFT: UP-UP" font 'Arial, 18'

#set title "16per of (9,0)CNT + Pd-slabs (from Antiparallel): SR-basis"
#set title "16per of (9,0)CNT + Pd-slabs (from FE-FE): SR-basis"
#set title "16per of (9,0)CNT pristine + Pd-slabs: SR-basis"

#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,20,100"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[0:100]"

XTICS   = "-2.8,0.4,2.8"
YTICS   = "0,20,100"
XRANGE  = "[-2.8:2.8]"
YRANGE  = "[0:100]"

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
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 3,0
#set xlabel ' ' font ",18" offset 0
#set ylabel 'DOS(eV^{-1})' font ",18" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,92 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.96  

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR-UP-DOWN/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR-UP-DOWN/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR-UP-DOWN/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR-UP-DOWN/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\


#p    '9_0_CNT-Pd_111_1x2_7Ang-AntiparallelGEO/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '9_0_CNT-Pd_111_1x2_7Ang-AntiparallelGEO/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '9_0_CNT-Pd_111_1x2_7Ang-AntiparallelGEO/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '9_0_CNT-Pd_111_1x2_7Ang-AntiparallelGEO/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '9_0_CNT-Pd_111_1x2_7Ang/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '9_0_CNT-Pd_111_1x2_7Ang/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '9_0_CNT-Pd_111_1x2_7Ang/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '9_0_CNT-Pd_111_1x2_7Ang/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '9_0_CNT_pristine-Pd_111_1x2_7Ang/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '9_0_CNT_pristine-Pd_111_1x2_7Ang/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '9_0_CNT_pristine-Pd_111_1x2_7Ang/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '9_0_CNT_pristine-Pd_111_1x2_7Ang/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

################################################################
YTICS   = "autofreq"
#YRANGE  = "[0:4]"
YRANGE  = "[0:10]"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

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

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   


#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR-UP-DOWN/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR-UP-DOWN/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\


#p    '9_0_CNT-Pd_111_1x2_7Ang-AntiparallelGEO/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '9_0_CNT-Pd_111_1x2_7Ang-AntiparallelGEO/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '9_0_CNT-Pd_111_1x2_7Ang/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '9_0_CNT-Pd_111_1x2_7Ang/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '9_0_CNT_pristine-Pd_111_1x2_7Ang/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '9_0_CNT_pristine-Pd_111_1x2_7Ang/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\


unset multiplot

#################### (2) Sum of alpha+beta: transmission and DOS   ######################
reset
clear

set ls 1 lw 3 dt 1 lc 0 
set ls 2 lw 3 dt 1 lc rgb "#F308B5"
set ls 3 lw 3 dt 1 lc rgb "#2564E1"
set ls 4 lw 3 dt 1 lc rgb "#FFB90F"
set ls 5 lw 3 dt 1 lc 4
set ls 6 lw 2 dt 1 lc 5
set ls 7 lw 2 dt 1 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16per-TbPc2_CNT9_0-Antipar_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0-Antipar_FE-AF_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0-Antipar_FE-FE-SR-1eV-CDFT-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-AF_FE-FE-SR-1eV-SUM.png' 
#set output '16per-TbPc2_CNT9_0_Metal-Antipar_FE-FE-SR-1eV-CDFT-SUM.png'
set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar_FE-FE-SR-1eV-CDFT-SUM-5p6E.png'

#set title "16per (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16per (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-AF/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16per (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE; DZVP-SR; CDFT " font 'Arial, 18'
#set title "16per (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16per (9,0)CNT + 2TbPc_2 + Al-slabs: Comparison Antipar/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16per (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison Antipar/FE-AF/FE-FE; DZVP-SR" font 'Arial, 18'
#set title "16per (9,0)CNT + 2TbPc_2 + Pd-slabs: Comparison Antipar/FE-FE; DZVP-SR; CDFT" font 'Arial, 18'
set title "16per (9,0)CNT + 2TbPc_2 + Al-slabs: Comparison Antipar/FE-FE; DZVP-SR; CDFT" font 'Arial, 18'

#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,20,100"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[0:100]"

XTICS   = "-2.8,0.4,2.8"
YTICS   = "0,20,200"
XRANGE  = "[-2.8:2.8]"
YRANGE  = "[0:200]"

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
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 3,0
#set xlabel ' ' font ",18" offset 0
#set ylabel 'DOS(eV^{-1})' font ",18" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,182 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.96  


#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\
#      '< paste 2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 4 fs \
#               transparent solid 0.2 title 'Antipar: FE-AF' ,\
#      '< paste 2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 4 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\
#      '< paste 2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 4 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 4 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\

p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat \
               2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 2 fs \
               transparent solid 0.2 title 'Antipar' ,\
      '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat \
               2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat \
               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:($2+$5) w filledcurves above y1=0 ls 3 fs \
               transparent solid 0.2 title 'FE-FE' ,\
      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat \
               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\

################################################################
#XTICS   = "-1.5,0.5,1.5"
YTICS   = "autofreq"
#XRANGE  = "[-1.5:1.5]"
YRANGE  = "[*:*]"

set key top left opaque font ",15"
unset title

unset label 1
unset label 2

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
set ylabel 'T(E)' font ",19" offset 2,0

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\
#      '< paste 2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 4 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\
#      '< paste 2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 4 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\

p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat \
               2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat \
               2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\

unset multiplot


########################## (3) PDOS 2SMM+CNT transmission and DOS   ##########################
reset
clear

set ls 1 lw 3 dt "--" lc 0 
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt ".." lc 4
set ls 5 lw 3 dt 1 lc 3
set ls 6 lw 4 dt ".." lc 7
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16per-TbPc2_CNT9_0-Antipar-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0-FE-FE-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0-Anti-FE-AF-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0-Antipar-SR-1eV-up-down-PDOS.png'
#set output '16per-TbPc2_CNT9_0-FE-FE-SR-1eV-UP-UP-PDOS.png'
#set output '16per-TbPc2_CNT9_0_Metal-Antipar-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0_Metal-Al-Antipar-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0_Metal-FE-FE-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0_Metal-Anti-FE-AF-SR-1eV-PDOS.png'
#set output '16per-TbPc2_CNT9_0_Metal-Antipar-SR-1eV-up-down-PDOS.png'
set output '16per-2TbPc_CNT9_0_Metal-Al-Antipar-SR-R-geo-1eV-up-down-PDOS.png'
#set output '16per-TbPc2_CNT9_0_Metal-Al-FE-FE-SR-1eV-UP-UP-PDOS.png'

#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (Antipar)" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (FE-FE)" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (FE-AF)" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (Antipar): up-down" font 'Arial, 18'

#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 (FE-FE): UP-UP" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar)" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar)" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE)" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (FE-AF)" font 'Arial, 18'

#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (Antipar): up-down" font 'Arial, 18'
set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (Antipar): up-down" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Pd-slabs (FE-FE): UP-UP" font 'Arial, 18'
#set title "PDOS: 16per (9,0)CNT + 2TbPc_2 + Al-slabs (FE-FE): UP-UP" font 'Arial, 18'

XTICS   = "-0.5,0.1,0.5"
YTICS   = "0,20,100"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[0:100]"

set tics font ",16" 
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
#set xlabel ' ' font ",19" offset 0
set ylabel 'PDOS(eV^{-1})' font ",19" offset 3,0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",18" at -0.45,92 left front boxed
set label 1 "d_{Tb-Tb} = 20.56 \305" font ",18" at -0.47,92 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin at screen 0.55
set bmargin at screen 0.9
set lmargin at screen 0.1
set rmargin at screen 0.96  

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMMs',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 1 fs transparent solid 0.2 title '{/Symbol a} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin; 2SMM',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:2  w filledcurves above y1=0 ls 4 fs transparent solid 0.2 title '{/Symbol b} spin; CNT',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:2  w l ls 4 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:3  w filledcurves above y1=0 ls 5 fs transparent solid 0.2 title '{/Symbol b} spin; 2SMMs',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta-PDOS.dat' u 1:3  w l ls 5 notitle ' ',\



################################################################
XTICS   = "-0.5,0.1,0.5"
#YTICS   = "-5.0,0.1,0.0"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[*:100]"

unset title

unset label 1
unset label 2

unset logscale y
#set format x
#set format y "%3.0f"
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out nomirror
#set ytics @YTICS out nomirror 
set mxtics 2
set mytics 2
#set mxtics 2
set xlabel 'E-E_f (eV)' font ",18" offset 0,1.0
set ylabel 'DOS(eV^{-1}) ' font ",18"  offset 3,0
set key top right opaque font ",14" 

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Anti-FE-AF-16_per-9_0_CNT_Metal-1eVrange-DZVP-SR/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w filledcurves above y1=0 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w filledcurves above y1=0 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\


unset multiplot
