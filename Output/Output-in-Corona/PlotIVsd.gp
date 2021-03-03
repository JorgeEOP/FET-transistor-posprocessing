reset
clear

set ls 2 lw 4 dt 1 lc rgb "#703090"
set ls 3 lw 4 dt 1 lc rgb "#952525"
set ls 4 lw 4 dt 1 lc rgb "#509020"
set ls 5 lw 4 dt 1 lc rgb "#805020"
set ls 6 lw 4 dt 1 lc rgb "#204094"
set ls 7 lw 4 dt 1 lc rgb "#703090"
set ls 8 lw 4 dt 1 lc rgb "#952525"
set ls 9 lw 4 dt 1 lc rgb "#509020"
set ls 10 lw 4 dt 1 lc rgb "#805020"
set ls 11 lw 4 dt 1 lc rgb "#204094"

set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 0.7 dt 1 lc 0
set ls 103 lw 1.2 dt 1 lc 0

set macros

XTICS   = "-0.001,0.0005,0.001"
YTICS   = "-0.000004,0.000001,0.000003"
XRANGE  = "[-0.001:0.001]"
YRANGE  = "[-0.000004:0.000003]"

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'

#set output 'IV_source_drain-TbPc-AF-13_0_CNT-9periods-TZVP-3eVrange.png'
#set output 'IV_source_drain-TbPc-FE-13_0_CNT-9periods-TZVP-3eVrange.png'

#set output 'IV_source_drain-TbPc-AF-12_0_CNT-9periods-DZVP-3eVrange.png'
#set output 'IV_source_drain-TbPc-FE-12_0_CNT-9periods-DZVP-3eVrange.png'

#set output 'IV_source_drain-2-TbPc-AF-AF-13_0_CNT-14periods-DZVP-3eVrange.png'
#set output 'IV_source_drain-2-TbPc-Antipar-13_0_CNT-14periods-DZVP-3eVrange.png'
#set output 'IV_source_drain-2-TbPc-FE-FE-13_0_CNT-14periods-DZVP-3eVrange.png'

#set output 'IV_source_drain-2-TbPc-AF-AF-12_0_CNT-14periods-DZVP-3eVrange-d2-2p0K.png'
#set output 'IV_source_drain-2-TbPc-Antipar-12_0_CNT-14periods-DZVP-3eVrange-d1-0p1K.png'
#set output 'IV_source_drain-2-TbPc-FE-FE-12_0_CNT-14periods-DZVP-3eVrange-d1-0p1K.png'

#set output 'IV_source_drain-2-TbPc-AF-AF-6_0_CNT-14periods-DZVP-1eVrange-d1.png'
#set output 'IV_source_drain-2-TbPc-Antipar-12_0_CNT-14periods-DZVP-1eVrange-d1.png'
#set output 'IV_source_drain-2-TbPc-FE-FE-12_0_CNT-14periods-DZVP-1eVrange-d1.png'

set output 'IV_source_draintest_CBCNT.png'

#set title "IV_{SD} curve: TbPc-(13,0)CNT (Antiferromagnetic)"
#set title "IV_{SD} curve: TbPc-(13,0)CNT (Ferromagnetic)"

#set title "IV_{SD} curve: TbPc-(12,0)CNT (Antiferromagnetic)"
#set title "IV_{SD} curve: TbPc-(12,0)CNT (Ferromagnetic)"

#set title "IV_{SD} curve: 2TbPc-(13,0)CNT (SMM1: beta, SMM2: beta)"
#set title "IV_{SD} curve: 2TbPc-(13,0)CNT (Antiparallel)"
#set title "IV_{SD} curve: 2TbPc-(13,0)CNT (SMM1: alpha, SMM2: alpha)"

set title "IV_{SD} curve: 2TbPc-(12,0)CNT (SMM1: beta, SMM2: beta)"
#set title "IV_{SD} curve: 2TbPc-(12,0)CNT (Antiparallel)"
#set title "IV_{SD} curve: 2TbPc-(12,0)CNT (SMM1: alpha, SMM2: alpha)"

#set xrange @XRANGE
#set yrange @YRANGE

set grid mxtics
set grid mytics
set grid xtics
set grid ytics
set xzeroaxis ls 102
set yzeroaxis ls 102
set format x ''
set format y '%.0s*10^{%T}'
set mxtics 2
set mytics 2
unset xlabel
#set xlabel 'V_{SD} [V]' font ",17" offset 0
set ylabel 'I(E) [A]' font ",17" offset 1,0

#set key bottom right opaque box ls 10 font ",23" 
#set key width 1 height 0.2
#set style textbox opaque noborder

set grid ls 101

#set multiplot layout 2, 1;
set tmargin 2
set bmargin 1.8
set lmargin 10
set rmargin 3

set label 1 "Temperature: 2.0 [K]" font ",16" at -0.011,0.0000013 left front boxed
set label 2 "V_{g}: 0.00 [V]" font "bold,16" at -0.011, 0.0000011 left front textcolor ls 2 
set label 3 "V_{g}: 0.03 [V]" font "bold,16" at -0.011, 0.0000009 left front textcolor ls 3 
set label 4 "V_{g}: 0.36 [V]" font "bold,16" at -0.011, 0.0000007 left front textcolor ls 4 
set label 5 "V_{g}: 1.44 [V]" font "bold,16" at -0.011, 0.0000005 left front textcolor ls 5 
#set label 6 "V_{g}: 0.5 [V]" font "bold,16" at -0.0009,0.0003 left front textcolor ls 6 
set style textbox opaque border

#p    '9periods-TbPc2_CNT13_0-FE-TZVP-3eVrange/IVsd-alpha-300K.dat' u 1:2  w l ls 2 title '300K alpha ',\
#     '9periods-TbPc2_CNT13_0-FE-TZVP-3eVrange/IVsd-beta-300K.dat' u 1:2  w l ls 3 title '300K beta ',\

#p    '9periods-TbPc2_CNT12_0-AF-DZVP-3eVrange/IVsd-alpha-300K.dat' u 1:2  w l ls 2 title '300K alpha ',\
#     '9periods-TbPc2_CNT12_0-AF-DZVP-3eVrange/IVsd-beta-300K.dat' u 1:2  w l ls 3 title '300K beta ',\


#p    '2-TbPc-Antipar-13_0_CNT-3eVrange-DZVP/IVsd-alpha-300K.dat' u 1:2  w l ls 2 title '{/Symbol a}',\
#     '2-TbPc-Antipar-13_0_CNT-3eVrange-DZVP/IVsd-beta-300K.dat' u 1:2  w l ls 3 title '{/Symbol b}',\

#p    '2-TbPc-AF-AF-13_0_CNT-3eVrange-DZVP/IVsd-alpha-300K.dat' u 1:2  w l ls 2 title '{/Symbol a}',\
#     '2-TbPc-AF-AF-13_0_CNT-3eVrange-DZVP/IVsd-beta-300K.dat' u 1:2  w l ls 3 title '{/Symbol b}',\

#p    '2-TbPc-FE-FE-13_0_CNT-3eVrange-DZVP/IVsd-alpha-300K.dat' u 1:2  w l ls 2 title '{/Symbol a}',\
#     '2-TbPc-FE-FE-13_0_CNT-3eVrange-DZVP/IVsd-beta-300K.dat' u 1:2  w l ls 3 title '{/Symbol b}',\


#p  for [i=2:5] '2-TbPc-AF-AF-12_0_CNT-3eVrange-DZVP-d2-Tb_mag/IVsd_a+b.dat' u 1:i  w l ls i notitle '{/Symbol a}',\

#p  for [i=2:4] '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag/IVsd_a+b.dat' u 1:i  w l ls i notitle '{/Symbol a}',\

#p  for [i=2:4]  '2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag/IVsd_a+b.dat' u 1:i  w l ls i notitle '{/Symbol a}',\

p  for [i=2:5] 'CNT_9_0-16periods-CB-SZV/Conductance_cb.out' u 1:i  w l ls i notitle '{/Symbol a}',\


################################################################

set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 0.7 dt 1 lc 0
set ls 103 lw 1.2 dt 1 lc 0

set macros


set key top left opaque font ",15"
unset title

unset logscale y
set format x
#set xrange @XRANGE
#set yrange @YRANGE
#set xtics  @XTICS
set format y '%.0s*10^{%T}'
set mxtics 2
set mytics 2
set xlabel 'V_{SD} [V]' font ",17" offset 0,0.5
set ylabel 'G(E)' font ",17"  offset 1,0

set tmargin 0.3
set bmargin 2.5
set lmargin 10
set rmargin 3

#p  for [i=6:9] '2-TbPc-AF-AF-12_0_CNT-3eVrange-DZVP-d2-Tb_mag/IVsd_a+b.dat' u 1:i  w l ls i notitle '{/Symbol a}',\

#p  for [i=5:7] '2-TbPc-Antipar-12_0_CNT-1eVrange-DZVP-d1-Tb_mag/IVsd_a+b.dat' u 1:i  w l ls i notitle '{/Symbol a}',\

#p  for [i=5:7] '2-TbPc-FE-FE-12_0_CNT-1eVrange-DZVP-d1-Tb_mag/IVsd_a+b.dat' u 1:i  w l ls i notitle '{/Symbol a}',\

unset multiplot
