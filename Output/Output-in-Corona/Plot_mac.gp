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

set output 'H-Kette.png'

XRANGE  = "[-5:5]"
YRANGE  = "[*:2]"
XTICS   = "autofreq"
YTICS   = "autofreq"

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
#set ylabel 'DOS(eV^{-1})' font ",18" offset 0

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 9

#set multiplot layout 2, 1; set title "H-kette"
#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.96  


do for [i=1:3] {p 'H-kette-cb/out-alpha.dat' u 2:3 every ::i::i  w l ls 2}


#set output filename(i)
#plot 'H-kette-cb/out-alpha-0.dat' u 6:3 every ::nskip*i::nskip*i
#i=i+1
#if(i<n) reread

#p    'H-kette-cb/out-alpha-0.dat' u 2:4  w l ls 2 notitle ' ',\
#     'H-kette-cb/out-alpha-0.dat' u 2:4  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#     'H-kette-cb/out-beta-0.dat' u 2:4   w l ls 3 notitle ' ',\
#     'H-kette-cb/out-beta-0.dat' u 2:4   w filledcurves x1 ls 3 fs transparent solid 0.3 notitle ' ',\
################################################################
#XTICS   = "-0.5,0.1,0.5"
YTICS   = "autofreq"
#XRANGE  = "[-1.5:1.5]"
#YRANGE  = "[*:*]"
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
set ylabel 'T(E)' font ",19" offset 1,0

set tmargin at screen 0.1
set bmargin at screen 0.45
set lmargin at screen 0.1
set rmargin at screen 0.96   

#p    'H-kette-cb/out-alpha-0.dat' u 2:6  w l ls 2 notitle ' ',\
#     'H-kette-cb/out-alpha-0.dat' u 2:6  w filledcurves x1 ls 2 fs transparent solid 0.3 notitle ' ',\
#     'H-kette-cb/out-beta-0.dat' u 2:6   w l ls 3 notitle ' ',\
#     'H-kette-cb/out-beta-0.dat' u 2:6   w filledcurves x1 ls 3 fs transparent solid 0.3 notitle ' ',\

unset multiplot
