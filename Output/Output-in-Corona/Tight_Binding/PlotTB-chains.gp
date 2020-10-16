reset
clear

set ls 1 lw 3 dt 1 lc 1
set ls 2 lw 3 dt 1 lc 3
set ls 3 lw 3 dt 1 lc 4
set ls 4 lw 2 dt 1 lc 5
set ls 5 lw 2 dt 1 lc 6
set ls 9 lw 2 dt 0 lc 0

set terminal pngcairo size 1024,768 enhanced font 'Arial, 21'
set output 'out-lecture.png'
set grid noxtics
set grid noytics
set xrange [-2.5:2.5]
set yrange [*:*]
#set logscale y

set key top right opaque font ",14" 
set multiplot layout 2, 1;
set style textbox opaque noborder
show mytics
set xtics -2.5,0.5,2.5
#set format y "%3.3f"
set title "Tight binding chain: 2 atoms per region. 1 orbital per atom"
set tmargin 2
set bmargin 2
set lmargin 15
set rmargin 8

set ylabel 'DOS(arb.u.)' font ",19" offset 0

#p    'CNT4_0/out.dat' u 1:2  w filledcurves x1 ls 1 fs transparent solid 0.4 notitle 't_c = 0.1  t  ',\
#     'CNT4_0/out.dat' u 1:2  w l ls 1 notitle 't_c = 0.1  t  ',\

#     'CNT4_0/out-beta.dat' u 1:2 w l ls 2 notitle 't_c = 0.1  t  ',\

p      'out-lecture.dat'  u 1:2 w l ls 1 title '{/Symbol e}=0; t = 1',\

#p     'TBS4B-alpha/alpha-beta.dat'  u 1:2 w l ls 1 title 't_c = 0.1t {/Symbol a}',\
#      'TBS4B-1-alpha/alpha-beta.dat'  u 1:2 w l ls 2 title 't_c = 1.0t {/Symbol a}',\
#      'TBS4B-2-alpha/alpha-beta.dat'  u 1:2 w l ls 3 title 't_c = 10.0t {/Symbol a}',\
#      'TBS4B-alpha/alpha-beta.dat'  u 1:5 w l ls 4 title 't_c = 0.1t {/Symbol b}',\
#      'TBS4B-1-alpha/alpha-beta.dat'  u 1:5 w l ls 5 title 't_c = 1.0t {/Symbol b}',\
#      'TBS4B-2-alpha/alpha-beta.dat'  u 1:5 w l ls 6 title 't_c = 10.0t {/Symbol b}',\
#      'TBS4B-alpha/alpha-beta.dat'  u 1:($2+$5) w l ls 7 title '{/Symbol a} + {/Symbol b}'

################################################################

set yrange [0:*]
set key top left opaque font ",15"
unset title


unset logscale y
set xlabel 'E-E_f (arb.u.)'
#set format y "%3.0e"
set ylabel 'T(E)' font ",19"  offset 0
set ytics 0,0.2,1

set tmargin 1
set bmargin 3
set lmargin 15
set rmargin 8

p      'out-lecture.dat'  u 1:3 w l ls 1 notitle 't_c = 0.1t, {/Symbol a} + {/Symbol b}',\
#p    'CNT4_0/out.dat' u 1:3 w l ls 2 notitle 't_c = 0.1 t  ',\
#     'CNT4_0/out-beta.dat' u 1:3 w l ls 2 notitle 't_c = 0.1 t  ',\

#p      'TBS4B2-alpha/alpha-beta.dat'  u 1:($3+$6) w l ls 1 notitle 't_c = 0.1t, {/Symbol a} + {/Symbol b}',\
#       'TBS4B2-1-alpha/alpha-beta.dat'  u 1:($3+$6) w l ls 2 notitle 't_c = 1.0t, {/Symbol a} + {/Symbol b}',\
#       'TBS4B2-2-alpha/alpha-beta.dat'  u 1:($3+$6) w l ls 3 notitle 't_c = 10.0t, {/Symbol a} + {/Symbol b}',\

#p     'TBS4B-alpha/alpha-beta.dat'  u 1:3 w l ls 1 title 't_c = 0.1t {/Symbol a}',\
#      'TBS4B-1-alpha/alpha-beta.dat'  u 1:3 w l ls 2 title 't_c = 1.0t {/Symbol a}',\
#      'TBS4B-2-alpha/alpha-beta.dat'  u 1:3 w l ls 3 title 't_c = 10.0t {/Symbol a}',\
#      'TBS4B-alpha/alpha-beta.dat'  u 1:6 w l ls 4 title 't_c = 0.1t {/Symbol b}',\
#      'TBS4B-1-alpha/alpha-beta.dat'  u 1:6 w l ls 5 title 't_c = 1.0t {/Symbol b}',\
#      'TBS4B-2-alpha/alpha-beta.dat'  u 1:6 w l ls 6 title 't_c = 10.0t {/Symbol b}',\
#      'TBS4B-alpha/alpha-beta.dat'  u 1:($3+$6) w l ls 7 title '{/Symbol a} + {/Symbol b}'


unset multiplot
