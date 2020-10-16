########################## (1) Normal 2SMM+CNT transmission and DOS   ##########################
reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt 1 lc 4
set ls 5 lw 2 dt 1 lc 5
set ls 6 lw 2 dt 1 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16periods-TbPc2_CNT9_0-Antipar-DZVP-SR-1eVrange-up-down.png'
set output '16periods-TbPc2_CNT9_0-Metal-Al-Antipar-DZVP-SR-1eVrange-up-down-5p6E.png'

set title "16 periods of (9,0)CNT + 2TbPc_2 (Antipar): SR-basis; CDFT: up-down"
#set title "16 periods of (9,0)CNT + 2TbPc_2 (FE-FE); SR-basis; CDFT: UP-UP"

XTICS   = "-2.8,0.5,2.8"
#YTICS   = "-5.0,0.2,0.0"
XRANGE  = "[-2.8:2.8]"
YRANGE  = "[*:100]"

set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS out nomirror
#set ytics @YTICS out nomirror 
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics
#set logscale y
set format x ''
#set xlabel ' ' font ",19" offset 0
set ylabel 'DOS(E)' font ",19" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

set label 1 "Distance Tb-Tb: 20.56 [\305]" font ",17" at -0.45,92 left front boxed
#set label 2 "Distance Tb-Tb: 17.04 [\305]" font ",17" at -0.45,110 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin 2
set bmargin 0.8
set lmargin 9
set rmargin 3

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

p     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
      '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#      '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#      '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#      '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#      '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#      '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

################################################################
#XTICS   = "-1.5,0.5,1.5"
#YTICS   = "-5.0,1.0,0.0"
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
set mxtics 2
set ylabel 'T(E)' font ",19"  offset 0

set tmargin 0.3
set bmargin 3.5
set lmargin 9
set rmargin 3


#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

p    '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-R-geo-CDFT-up-down-5p6E/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT_Metal-Al-1eVrange-DZVP-SR-CDFT-UP-UP-5p6E/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#     '< paste 2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d2-Tb_mag/out-alpha.dat \
#     2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d2-Tb_mag/out-beta.dat' u 1:($3+$6)  w l ls 4 notitle ' ',\


unset multiplot

#################### (2) Sum of alpha+beta: transmission and DOS   ######################
reset
clear

set ls 1 lw 3 dt 1 lc 0 
set ls 2 lw 3 dt 1 lc rgb "#F308B5"
set ls 3 lw 3 dt 1 lc rgb "#2564E1"
set ls 4 lw 3 dt 1 lc 4
set ls 5 lw 2 dt 1 lc 5
set ls 6 lw 2 dt 1 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output '16periods-TbPc2_CNT9_0-Anti_FE-DZVP-SR-1eVrange-sum.png'
#set output '14periods-TbPc2_CNT12_0-Anti_FE-DZVP-1eVrange-d1-CDFT-sum.png'
set output '16periods-TbPc2_CNT9_0-Anti_FE-DZVP-SR-1eVrange-CDFT-sum.png'

#set title "14 periods of (12,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE; DZVP-SR"
#set title "14 periods of (12,0)CNT + 2TbPc_2(AF-AF)"
#set title "14 periods of (12,0)CNT + 2TbPc_2(FE-FE)"
#set title "16 periods of (9,0)CNT + 2TbPc_2: Comparison Antipar/FE-FE; DZVP-SR"
#set title "16 periods of (9,0)CNT + 2TbPc_2 (Antipar): SR-basis; CDFT: up-down"
set title "16 periods of (9,0)CNT + 2TbPc_2: Antipar/FE-FE; CDFT; DZVP-SR"

XTICS   = "-0.5,0.1,0.5"
#YTICS   = "-5.0,0.1,0.0"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[*:100]"

set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS out nomirror
#set ytics @YTICS out nomirror 
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics
#set logscale y
set format x ''
#set xlabel ' ' font ",19" offset 0
set ylabel 'DOS(E)' font ",19" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set label 1 "Distance Tb-Tb: 25.50 [\305]" font ",17" at -0.45,280 left front boxed
#set label 2 "Distance Tb-Tb: 17.04 [\305]" font ",17" at -0.45,110 left front boxed
set label 1 "Distance Tb-Tb: 20.56 [\305]" font ",17" at -0.45,90 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin 2
set bmargin 0.8
set lmargin 9
set rmargin 3

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves x1 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w filledcurves x1 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2 w l ls 1 title 'Pristine CNT ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha.dat \
#               2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-beta.dat' u 1:($2+$5) w filledcurves x1 ls 2 fs \
#               transparent solid 0.2 title 'Antipar' ,\
#      '< paste 2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha.dat \
#               2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w filledcurves x1 ls 3 fs \
#               transparent solid 0.2 title 'FE-FE' ,\
#      '< paste 2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/out-alpha.dat \
#               2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\
#      'CNT12_0-9periods-3x3x3/out.dat' u 1:2 w l ls 1 title 'Pristine CNT ',\
#      'CNT12_0-9periods-3x3x3/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
              2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($2+$5) w filledcurves x1 ls 2 fs \
              transparent solid 0.2 title 'Antipar' ,\
      '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
              2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($2+$5) w l ls 2 notitle ' ',\
      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
              2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w filledcurves x1 ls 3 fs \
              transparent solid 0.2 title 'FE-FE' ,\
      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
              2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($2+$5) w l ls 3 notitle ' ',\
      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2 w l ls 1 title 'Pristine CNT ',\
      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

################################################################
#XTICS   = "-1.5,0.5,1.5"
#YTICS   = "0.0,0.5,6.0"
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
set mxtics 2
set ylabel 'T(E)' font ",19"  offset 0

set tmargin 0.3
set bmargin 3.5
set lmargin 9
set rmargin 3

#p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-alpha.dat \
#               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p     '< paste 2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha.dat \
#               2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
#       '< paste 2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/out-alpha.dat \
#                2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-UP/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\
#       'CNT12_0-9periods-3x3x3/out.dat' u 1:3 w l ls 1 notitle ' ',\

p     '< paste 2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-alpha.dat \
               2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-up-down/out-beta.dat' u 1:($3+$6)  w l ls 2 notitle ' ',\
      '< paste 2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-alpha.dat \
               2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-CDFT-UP-UP/out-beta.dat' u 1:($3+$6)  w l ls 3 notitle ' ',\
      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\

unset multiplot


########################## (3) PDOS 2SMM+CNT transmission and DOS   ##########################
reset
clear

set ls 1 lw 3 dt 1 lc 0 
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt 1 lc 4
set ls 5 lw 2 dt 1 lc 5
set ls 6 lw 2 dt 1 lc 6
set ls 9 lw 0.7 dt 3 lc 0

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

set output '14periods-TbPc2_CNT12_0-Antipar-DZVP-1eVrange-d1-CDFT-up-down-PDOS.png'
#set output '14periods-TbPc2_CNT12_0-FE-FE-DZVP-1eVrange-d1-CDFT-UP-UP-pDOS.png'
#set output '16periods-TbPc2_CNT9_0-Antipar-DZVP-SR-1eVrange-pDOS.png'
#set output '16periods-TbPc2_CNT9_0-FE-FE-DZVP-SR-1eVrange-pDOS.png'

set title "14 periods of (12,0)CNT + 2TbPc_2 (Antipar); up-down; PDOS"
#set title "14 periods of (12,0)CNT + 2TbPc_2 (FE-FE); up-up; PDOS"
#set title "PDOS of CNT: 16 periods of (9,0)CNT + 2TbPc_2 (Antipar)"
#set title "PDOS of CNT: 16 periods of (9,0)CNT + 2TbPc_2 (FE-FE)"

XTICS   = "-0.5,0.1,0.5"
#YTICS   = "-5.0,0.1,0.0"
XRANGE  = "[-0.5:0.5]"
YRANGE  = "[*:300]"

set xrange @XRANGE
set yrange @YRANGE

set xtics @XTICS out nomirror
#set ytics @YTICS out nomirror 
set mxtics 2
set mytics 2

set grid noxtics
set grid noytics
#set logscale y
set format x ''
#set xlabel ' ' font ",19" offset 0
set ylabel 'DOS(E)' font ",19" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

set label 1 "Distance Tb-Tb: 20.56 [\305]" font ",17" at -0.45,280 left front boxed
#set label 1 "Distance Tb-Tb: 25.50 [\305]" font ",17" at -0.45,280 left front boxed
set style textbox opaque border

set multiplot layout 2, 1;
set tmargin 2
set bmargin 0.8
set lmargin 9
set rmargin 3


p     '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha-PDOS.dat' u 1:3  w filledcurves x1 ls 2 \
                                                       fs transparent solid 0.2 title '{/Symbol a} spin 2SMM',\
      '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha-PDOS.dat' u 1:3  w l ls 2 notitle ' ',\
      '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha-PDOS.dat' u 1:2  w filledcurves x1 ls 1 \
                                                       fs transparent solid 0.2 title '{/Symbol a} spin CNT',\
      '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha-PDOS.dat' u 1:2  w l ls 1 notitle ' ',\

#      '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-DOWN-pDOS/out-beta.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#      '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT-UP-DOWN-pDOS/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\

#p     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-alpha.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#      '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#      '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-beta.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#      '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2 w l ls 1 title 'Pristine CNT ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\

#p     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-alpha.dat' u 1:2  w filledcurves x1 ls 2 fs transparent solid 0.2 title '{/Symbol a} spin',\
#      '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-alpha.dat' u 1:2  w l ls 2 notitle ' ',\
#      '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-beta.dat' u 1:2  w filledcurves x1 ls 3 fs transparent solid 0.2 title '{/Symbol b} spin',\
#      '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-beta.dat' u 1:2  w l ls 3 notitle ' ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2 w l ls 1 title 'Pristine CNT ',\
#      'CNT9_0-14periods-DZVP-SR/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.3 notitle ' ',\


################################################################
#XTICS   = "-1.5,0.5,1.5"
#YTICS   = "-5.0,1.0,0.0"
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
set mxtics 2
set ylabel 'T(E)' font ",19"  offset 0

set tmargin 0.3
set bmargin 3.5
set lmargin 9
set rmargin 3


p    '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-alpha-PDOS.dat' u 1:4  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag-CDFT/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\

#p    '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-Antipar-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\
#     'CNT9_0-14periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\

#p    '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-alpha.dat' u 1:3  w l ls 2 notitle ' ',\
#     '2-TbPc-FE-FE-16_per-9_0_CNT-1eVrange-DZVP-SR-PDOS/out-beta.dat' u 1:3  w l ls 3 notitle ' ',\
#     'CNT9_0-14periods-DZVP-SR/out.dat' u 1:3 w l ls 1 notitle ' ',\

unset multiplot
