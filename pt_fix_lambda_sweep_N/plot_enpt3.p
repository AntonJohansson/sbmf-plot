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
set output 'imgs/gp_pt_sweep_N_enpt3.eps';

set size 0.75,0.75;

set ylabel '$|(E_\mathrm{ENPT3} - E_\mathrm{GP})/E_\mathrm{GP}|$ (\textperthousand)';
set xlabel '$N$ (unitless)';

set logscale y
#set logscale x

#set ytics -0.8,0.4,0
#set mytics 2
set xrange [-8:172];
#set format y '%.1f';
set yrange [0.05:100]

set xtics 0,40,160
set mxtics 2

set key at graph 0.95, 0.90
set key spacing 1.25
plot 0 w lines ls 7 title '', \
     'out_64_new/out_l-0.50'    u 1:(abs(1000*($6-$2)/$2)) w linespoints pt 6 lw 2 lc rgb '#01400C' title '$\lambda = -0.5$',\
     'out_64_new/out_l-1.00'    u 1:(abs(1000*($6-$2)/$2)) w linespoints pt 7 lw 2 lc rgb '#01400C' title '$\lambda = -1.0$',\
     'out_64_new/out_l0.50'     u 1:(abs(1000*($6-$2)/$2)) w linespoints pt 4 lw 2 lc rgb '#56c268' title '$\lambda = 0.5$',\
     'out_64_new/out_l1.00'     u 1:(abs(1000*($6-$2)/$2)) w linespoints pt 5 lw 2 lc rgb '#56c268' title '$\lambda = 1.0$';
