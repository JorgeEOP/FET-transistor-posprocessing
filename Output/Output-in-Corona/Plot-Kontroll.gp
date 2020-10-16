########################## (1) Normal 2SMM+CNT transmission and DOS   ##########################
reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt "-" lc 4
set ls 5 lw 2 dt 1 lc 5
set ls 6 lw 2 dt 1 lc 6
set ls 9 lw 0.4 dt 3 lc 0
set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 1.3 dt 1 lc 0
set ls 122 lw 1.3 dt "---" lc rgb "white"
set ls 103 lw 1.2 dt 1 lc 0
load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/jet.pal'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 20'

#set output 'Kontroll-9_0_CNT-Al-SZV-CB.png'
set output 'Kontroll-CB-H-Kette.png'

### For 1stVsd ###
XRANGE  = "[*:*]"
YRANGE  = "[*:*]"
ZRANGE  = "[*:80]"
XTICS   = "autofreq"
YTICS   = "autofreq"
CBRANGE = "[*:80]"
CBTICS  = "autofreq"

set cbtics offset -1,0 font ",13" 
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 0.5 font ",13"
set ytics @YTICS out mirror scale 0.5 font ",13"
set xtics offset 0,0.5
set ytics offset 1.5,0
set cbrange @CBRANGE 
set cbtics @CBTICS
set xzeroaxis ls 122
set yzeroaxis ls 122

set pm3d map 
#set pm3d map at bs
#set pm3d
#set colorbox user size 0.025,0.6
#set colorbox user size 0.025,0.2 origin 0.9,0.63
#set view 75,10

#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,20,100"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[0:100]"

#set tics font ",17" 
#set xrange @XRANGE
#set yrange @YRANGE

#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS in offset 0.4,0
#set mxtics 2
#set mytics 2

set grid noxtics
set grid noytics
#set format x ''

set xlabel "E-E_{f} (eV)" font ",16" offset 0,0.5
#set ylabel 'V_{g} ' font ",16"  offset 3,0
set ylabel 'T(E) ' font ",16"  offset 3,0
#set cblabel 'DOS(ev^{-1})'  offset 0,0 rotate by 0 font ",14"

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 101

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,92 left front boxed
set style textbox opaque border

set multiplot layout 2, 2 title "16per of (9,0)CNT + AL-slabs (Parallel-HS); SR-basis; CB-Kontroll";
#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.88  


splot  'Kontroll-CB-50Vg-1000E-t1/out-alpha_total.out' u 2:1:3 w pm3d notitle '  '

################################################################
unset title

#ZRANGE  = "[*:*]"
#CBRANGE = "[0:2.0]"
#CBTICS  = "0.0,1.0,5.0"

#set colorbox user size 0.025,0.2 origin 0.9,0.18
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 0.5 font ",13"
set ytics @YTICS out mirror scale 0.5 font ",13"
set xtics offset 0,0.5
set ytics offset 1.5,0
set cbrange @CBRANGE 
set cbtics @CBTICS 
#set cbtics ("0.00" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, ">1.0" 1.0)
set cbtics offset -1,0 font ",13" 

set format x
set xlabel "E-E_{f} (eV)" font ",16" offset 0,0.5
set cblabel 'DOS(ev^{-1})'  offset -4,3.5 rotate by 0 font ",14"

set pm3d map 
#set pm3d map at bs
#set pm3d
#set view 35,20

#set tmargin at screen 0.12
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.88   

splot  'Kontroll-CB-50Vg-1000E-t1/out-beta_total.out' u 2:1:3 w pm3d notitle '  '

################################################################
unset title

XRANGE  = "[*:*]"
YRANGE  = "[*:*]"
ZRANGE  = "[*:*]"
XTICS   = "autofreq"
YTICS   = "autofreq"
CBRANGE = "[*:*]"
CBTICS  = "autofreq"

#set colorbox user size 0.025,0.2 origin 0.9,0.18
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 0.5 font ",13"
set ytics @YTICS out mirror scale 0.5 font ",13"
set xtics offset 0,0.5
set ytics offset 1.5,0
set cbrange @CBRANGE 
set cbtics @CBTICS 
#set cbtics ("0.00" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, ">1.0" 1.0)
set cbtics offset -1,0 font ",13" 

set format x
set xlabel "E-E_{f} (eV)" font ",16" offset 0,0.5
unset cblabel 

set pm3d map 
#set pm3d map at bs
#set pm3d
#set view 35,20

#set tmargin at screen 0.12
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.88   

splot  'Kontroll-CB-50Vg-1000E-t1/out-alpha_total.out' u 2:1:4 w pm3d notitle '  '
################################################################
unset title

#set colorbox user size 0.025,0.2 origin 0.9,0.18
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 0.5 font ",13"
set ytics @YTICS out mirror scale 0.5 font ",13"
set xtics offset 0,0.5
set ytics offset 1.5,0
set cbrange @CBRANGE 
set cbtics @CBTICS 
#set cbtics ("0.00" 0, "0.2" 0.2, "0.4" 0.4, "0.6" 0.6, "0.8" 0.8, ">1.0" 1.0)
set cbtics offset -1,0 font ",13" 

set format x
set xlabel "E-E_{f} (eV)" font ",16" offset 0,0.5
set cblabel 'T(E)'  offset -4,3.5 rotate by 0 font ",14"

set pm3d map 
#set pm3d map at bs
#set pm3d
#set view 35,20

#set tmargin at screen 0.12
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.88   

splot  'Kontroll-CB-50Vg-1000E-t1/out-beta_total.out' u 2:1:4 w pm3d notitle '  '

unset multiplot

########################## (2) Sum: alpha+beta Kontroll transmission and DOS   ##########################
reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 3 dt "-" lc 4
set ls 5 lw 2 dt 1 lc 5
set ls 6 lw 2 dt 1 lc 6
set ls 9 lw 0.4 dt 3 lc 0
set ls 101 lw 0.7 dt 3 lc 0
set ls 102 lw 1.3 dt 1 lc 0
set ls 122 lw 1.3 dt "---" lc rgb "white"
set ls 103 lw 1.2 dt 1 lc 0
load '/home/jorge/Desktop/Gnuplot_palettes/gnuplot-palettes/jet.pal'

set macros

set terminal pngcairo size 1024,768 enhanced font 'Arial, 20'

#set output 'Kontroll-9_0_CNT-Al-SZV-CB-SUM.png'

### For 1stVsd ###
XRANGE  = "[*:*]"
YRANGE  = "[*:*]"
ZRANGE  = "[*:*]"
XTICS   = "autofreq"
YTICS   = "autofreq"
CBRANGE = "[*:*]"
CBTICS  = "autofreq"

set cbtics offset -1,0 font ",13" 
set xrange @XRANGE
set yrange @YRANGE
set xtics @XTICS out mirror scale 0.5 font ",13"
set ytics @YTICS out mirror scale 0.5 font ",13"
set xtics offset 0,0.5
set ytics offset 1.5,0
set cbrange @CBRANGE 
set cbtics @CBTICS
set xzeroaxis ls 122
set yzeroaxis ls 122

set pm3d map 
#set pm3d map at bs
#set pm3d
#set colorbox user size 0.025,0.6
#set colorbox user size 0.025,0.2 origin 0.9,0.63
#set view 65,10

#XTICS   = "-0.5,0.1,0.5"
#YTICS   = "0,20,100"
#XRANGE  = "[-0.5:0.5]"
#YRANGE  = "[0:100]"

#set tics font ",17" 
#set xrange @XRANGE
#set yrange @YRANGE

#set xtics @XTICS out nomirror offset 0,0.4
#set ytics @YTICS in offset 0.4,0
#set mxtics 2
#set mytics 2

set grid noxtics
set grid noytics
#set format x ''

set xlabel "E-E_{f} (eV)" font ",16" offset 0,0.5
set ylabel 'V_{g} ' font ",16"  offset 3,0
#set cblabel 'DOS(ev^{-1})'  offset 0,0 rotate by 0 font ",14"

set key top right opaque font ",14" 
set style textbox opaque noborder

set grid ls 101

#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -0.45,92 left front boxed
#set label 1 "d_{Tb-Tb} = 20.56 \305" font ",17" at -2.75,92 left front boxed
set style textbox opaque border

set multiplot layout 2, 1 title "16per of (9,0)CNT + AL-slabs (Parallel-HS); SR-basis; CB-Kontroll;Sum";
#set tmargin at screen 0.55
#set bmargin at screen 0.9
#set lmargin at screen 0.1
#set rmargin at screen 0.88  


#splot '< paste Kontroll-CB-250Vg-600E/out-alpha.dat Kontroll-CB/out-beta.dat' u 2:1:($3+$7) w pm3d notitle ' '
#splot '< paste Kontroll-CB-250Vg-600E/out-alpha.dat Kontroll-CB/out-beta.dat' u 2:1:($4+$8) w pm3d notitle ' ',\

unset multiplot








##YTICS   = "autofreq"
##YRANGE  = "[0:4]"
##YRANGE  = "[0:10]"
#
#set key top left opaque font ",15"
#
#unset label 1
#unset label 2
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
#set tmargin at screen 0.1
#set bmargin at screen 0.45
#set lmargin at screen 0.1
#set rmargin at screen 0.96   
#
#
#       
#p    'Kontroll-CB/out-alpha.dat' u 2:4  w l ls 2 notitle ' ',\
#     'Kontroll-CB/out-beta.dat' u 2:4  w l ls 3 notitle ' ',\
#
#
#unset multiplot
