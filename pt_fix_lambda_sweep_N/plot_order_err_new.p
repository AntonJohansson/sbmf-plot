set term epslatex;
set output 'imgs/gp_pt_sweep_N_order_err.eps';

set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.55";
RMARGIN = "set lmargin at screen 0.55; set rmargin at screen 0.95";

set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 ps 1.25 pt 7 lw 3           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 ps 1.25 lw 3           lc rgb '#01400C'
set style line 7 lw 3           lc rgb '#888888'

set style line 1 lw 2           lc rgb '#00863E'
#set style line 2 lw 2   dt 2    lc rgb '#E87E00'
#set style line 3 lw 2           lc rgb '#E87E00'
#set style line 4 lw 2   dt 2    lc rgb '#037DBF'
#set style line 5 lw 2           lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'
set style line 7 lw 2           lc rgb '#444444'


set size 1,1.125;
#set logscale x;

set ylabel '$|E_\mathrm{MBPT} - E_\mathrm{MBPT*}|$ (a.\;u. $\times 10^{-3}$)';
set ylabel offset 0,-4;
set multiplot layout 2,2;

set yrange [0.05:25]
set xrange [-10:174];
set xtics 0,40,160
set mxtics 2

scale = 1000

set format x '';
unset xlabel;
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.60;
unset key;
@TMARGIN; @LMARGIN;
set logscale y
plot 0 w lines ls 7 title '', \
     'out_64/out_l-0.50' u 1:(abs(scale*($3-$4))) w linespoints ls 2 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l-0.50' u 1:(abs(scale*($4-$5))) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l-0.50' u 1:(abs(scale*($6-$7))) w linespoints ls 4 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l-0.50' u 1:(abs(scale*($7-$8))) w linespoints ls 5 title '$E_\mathrm{RSPT3}$'

set format x '';
set format y ''
unset xlabel;
unset ylabel;
set label 1 '$\lambda = 0.5$' at graph 0.4, 0.6;
unset key;
@TMARGIN; @RMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64/out_l0.50' u 1:(abs(scale*($3-$4))) w linespoints ls 2 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l0.50' u 1:(abs(scale*($4-$5))) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l0.50' u 1:(abs(scale*($6-$7))) w linespoints ls 4 title '$E_\mathrm{ENPT3}$', \
     'out_64/out_l0.50' u 1:(abs(scale*($7-$8))) w linespoints ls 5 title '$E_\mathrm{ENPT3}$'

set format y '%.0f'
set yrange [0.5:130];
set format x '%.0f'
set xlabel '$N$ (unitless)';
set label 1 '$\lambda = -1.0$' at graph 0.4, 0.6;
unset key;
@BMARGIN; @LMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64/out_l-1.00' u 1:(abs(scale*($3-$4))) w linespoints ls 2 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l-1.00' u 1:(abs(scale*($4-$5))) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out_64/out_l-1.00' u 1:(abs(scale*($6-$7))) w linespoints ls 4 title '$E_\mathrm{ENPT3}$', \
     'out_64/out_l-1.00' u 1:(abs(scale*($7-$8))) w linespoints ls 5 title '$E_\mathrm{ENPT3}$'


set format y ''
set key at screen 0.80, 1.075;
set key box;
set key spacing 1.5;
set key maxrows 2;
set label 1 '$\lambda = 1.0$' at graph 0.4, 0.6;
dummy = "NaN title ' ' lt -3";
unset ylabel;
@BMARGIN; @RMARGIN;
plot 0 w lines ls 7 title '', \
     'out_64/out_l1.00' u 1:(abs(scale*($3-$4))) w linespoints ls 2 title '\footnotesize{RSPT2,1}', \
     'out_64/out_l1.00' u 1:(abs(scale*($4-$5))) w linespoints ls 3 title '\footnotesize{RSPT3,2}', \
     'out_64/out_l1.00' u 1:(abs(scale*($6-$7))) w linespoints ls 4 title '\footnotesize{ENPT2,1}', \
     'out_64/out_l1.00' u 1:(abs(scale*($7-$8))) w linespoints ls 5 title '\footnotesize{ENPT3,2}'
