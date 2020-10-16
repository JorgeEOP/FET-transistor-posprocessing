reset
clear

set ls 1 lw 3 dt 1 lc 0
set ls 2 lw 3 dt 1 lc 1
set ls 3 lw 3 dt 1 lc 3
set ls 4 lw 2 dt 1 lc 4
set ls 5 lw 2 dt 1 lc 7
set ls 9 lw 2 dt 0 lc 0

set terminal pngcairo size 1024,768 enhanced font 'Arial, 20'
set output '4_0_CNT-0K.png'
set grid noxtics
set grid noytics
set xrange [-2.5:2.5]
set yrange [*:*]
#set logscale y
set key top right opaque font ",14" 
set multiplot layout 2, 1;
set style textbox opaque noborder
show mytics
#set xtics -2.5,0.5,2.5
#set format y "%3.3f"
set title "(4,0)CNT 0K"
set tmargin 2
set bmargin 2
set lmargin 15
set rmargin 8

#set xlabel 'E-Ef (eV)'
set ylabel 'DOS(E)' font ",19" offset 1

p    'CNT4_0/out.dat' u 1:2 w l ls 1 notitle 't_c = 0.1  t  ',\
#     'CNT4_0/out-beta.dat' u 1:2 w l ls 2 notitle 't_c = 0.1  t  ',\

#p      'TBS4B2-alpha/alpha-beta.dat'  u 1:($2+$5) w l ls 1 title 't_c = 0.1t, {/Symbol a} + {/Symbol b}',\
#       'TBS4B2-1-alpha/alpha-beta.dat'  u 1:($2+$5) w l ls 2 title 't_c = 1.0t, {/Symbol a} + {/Symbol b}',\
#       'TBS4B2-2-alpha/alpha-beta.dat'  u 1:($2+$5) w l ls 3 title 't_c = 10.0t, {/Symbol a} + {/Symbol b}',\

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
set xlabel 'E-E_f (eV)'
#set format y "%3.0e"
set ylabel 'T(E)' font ",19"  offset 0

set tmargin 1
set bmargin 3
set lmargin 15
set rmargin 8

p    'CNT4_0/out.dat' u 1:3 w l ls 1 notitle 't_c = 0.1 t  ',\
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
