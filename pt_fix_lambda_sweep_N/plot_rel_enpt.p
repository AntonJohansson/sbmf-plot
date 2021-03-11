set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.50";
RMARGIN = "set lmargin at screen 0.60; set rmargin at screen 0.95";

set style line 1 lw 2           lc rgb '#00863E'
set style line 2 lw 2   dt 2    lc rgb '#E87E00'
set style line 3 lw 2           lc rgb '#E87E00'
set style line 4 lw 2   dt 2    lc rgb '#037DBF'
set style line 5 lw 2           lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'
set style line 7 lw 2           lc rgb '#888888'

set term epslatex;
set output 'imgs/gp_pt_sweep_N_rel_enpt.eps';

set size 1,1.125;
#set logscale x;

set ylabel 'Energy rel. to $E_\mathrm{GP}$ (\%)';
set ylabel offset 0,-4;
set multiplot layout 2,2;

#set yrange [-1:0.085];
#set ytics -0.9,0.3,0
set xrange [-5:170];
set format y '%.1f';

set xtics (      \
''     0,      \
''    20,     \
''    40,     \
''    60,     \
''    80,     \
''    100,   \
''    120, \
''    140, \
''    160 \
)

set format x '';
unset xlabel;
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @LMARGIN;
plot 'out_64_new/out_l-0.50' u 1:(100*($3-$6)/$6) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l-0.50' u 1:(100*($4-$6)/$6) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l-0.50' u 1:(100*($5-$6)/$6) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \

set format x '';
set format y '%.1f';
#set yrange [-0.7:0.075];
#set ytics -0.6,0.2,0
unset xlabel;
unset ylabel;
set label 1 '$\lambda = 0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @RMARGIN;
plot 'out_64_new/out_l0.50' u 1:(100*($3-$6)/$6) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l0.50' u 1:(100*($4-$6)/$6) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l0.50' u 1:(100*($5-$6)/$6) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \

#set yrange [-0.06*100:0.01*100];
#set ytics -0.05*100,0.01*100,0;

set xtic (      \
'0'     0,      \
''    20,     \
'40'    40,     \
''    60,     \
'80'    80,     \
''    100,   \
'120'    120, \
''    140, \
'160'    160 \
)

set format x '%.0f'
set format y '%.0f';
set xlabel 'Particle number $N$ (a.\,u.)';
#set ylabel 'Energy (a.\,u.)';
set label 1 '$\lambda = -1.0$' at graph 0.4, 0.5;
unset key;
@BMARGIN; @LMARGIN;
plot 0 w lines ls 2 title '', \
     'out_64_new/out_l-1.00' u 1:(100*($3-$6)/$6) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l-1.00' u 1:(100*($4-$6)/$6) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l-1.00' u 1:(100*($5-$6)/$6) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \


set format y '%.1f';
#set yrange [-2.2:0.2];
#set ytics -2,0.5,0
set key at screen 0.95, 1.075;
set key box;
set key spacing 1.5;
set key maxrows 2;
set label 1 '$\lambda = 1.0$' at graph 0.4, 0.5;
dummy = "NaN title ' ' lt -3";
unset ylabel;
@BMARGIN; @RMARGIN;
plot 0 w lines ls 2 title '', \
     'out_64_new/out_l1.00' u 1:(100*($3-$6)/$6) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l1.00' u 1:(100*($4-$6)/$6) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l1.00' u 1:(100*($5-$6)/$6) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \