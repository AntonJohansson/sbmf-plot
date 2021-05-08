set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.50";
RMARGIN = "set lmargin at screen 0.60; set rmargin at screen 0.95";

set style line 2 lw 3 ps 1.25 pt 6  dt 2    lc rgb '#EE706A'
set style line 3 lw 3 ps 1.25 pt 7          lc rgb '#890F08'
set style line 4 lw 3 ps 1.25   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 3 ps 1.25           lc rgb '#01400C'
set style line 7 lw 3 ps 1.25           lc rgb '#888888'

set style line 1 lw 2           lc rgb '#00863E'
#set style line 2 lw 2   dt 2    lc rgb '#E87E00'
#set style line 3 lw 2           lc rgb '#E87E00'
#set style line 4 lw 2   dt 2    lc rgb '#037DBF'
#set style line 5 lw 2           lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'
set style line 7 lw 2           lc rgb '#444444'

set term epslatex;
set output 'imgs/gp_pt_sweep_N.eps';

set size 1,1.125;

set ylabel '$|(E_\mathrm{MBPT} - E_\mathrm{GP})/E_\mathrm{GP}|$ (\%)';
set ylabel offset 0,-4;
set multiplot layout 2,2;

#set yrange [-1:0.085];
set ytics -0.8,0.4,0
set mytics 2
#set xrange [-8:172];
set format y '%.1f';

set xtics 0,40,160
set mxtics 2

set format x '';
unset xlabel;
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @LMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64_new/out_l-0.50' u 1:(abs(100*($3-$2)/$2)) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l-0.50' u 1:(abs(100*($4-$2)/$2)) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l-0.50' u 1:(abs(100*($5-$2)/$2)) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \
     'out_64_new/out_l-0.50' u 1:(abs(100*($6-$2)/$2)) w linespoints ls 5 title '$E_\mathrm{ENPT3}$';

set format x '';
#set yrange [-0.59:0.075];
set ytics -0.6,0.2,0
set mytics 2
unset xlabel;
unset ylabel;
set label 1 '$\lambda = 0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @RMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64_new/out_l0.50' u 1:(abs(100*($3-$2)/$2)) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l0.50' u 1:(abs(100*($4-$2)/$2)) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l0.50' u 1:(abs(100*($5-$2)/$2)) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \
     'out_64_new/out_l0.50' u 1:(abs(100*($6-$2)/$2)) w linespoints ls 5 title '$E_\mathrm{ENPT3}$';

#set yrange [-0.06*100:0.01*100];
set ytics -5,2.5,0
set mytics 2

set format x '%.0f'
set xlabel '$N$ (unitless)';
set label 1 '$\lambda = -1.0$' at graph 0.4, 0.5;
unset key;
@BMARGIN; @LMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64_new/out_l-1.00' u 1:(abs(100*($3-$2)/$2)) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out_64_new/out_l-1.00' u 1:(abs(100*($4-$2)/$2)) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64_new/out_l-1.00' u 1:(abs(100*($5-$2)/$2)) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \
     'out_64_new/out_l-1.00' u 1:(abs(100*($6-$2)/$2)) w linespoints ls 5 title '$E_\mathrm{ENPT3}$';


#set yrange [-2.2:0.2];
set ytics -2,1,0
set mytics 2
set key at screen 0.8, 1.075;
set key box;
set key spacing 1.5;
set key maxrows 2;
set label 1 '$\lambda = 1.0$' at graph 0.4, 0.5;
dummy = "NaN title ' ' lt -3";
unset ylabel;
@BMARGIN; @RMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64_new/out_l1.00' u 1:(abs(100*($3-$2)/$2)) w linespoints ls 2 title '\footnotesize{RSPT2}', \
     'out_64_new/out_l1.00' u 1:(abs(100*($4-$2)/$2)) w linespoints ls 3 title '\footnotesize{RSPT3}', \
     'out_64_new/out_l1.00' u 1:(abs(100*($5-$2)/$2)) w linespoints ls 4 title '\footnotesize{ENPT2}', \
     'out_64_new/out_l1.00' u 1:(abs(100*($6-$2)/$2)) w linespoints ls 5 title '\footnotesize{ENPT3}';
