#set term epslatex size 5.5,3.5
#set output 'imgs/gp_pt_sweep_G.eps';

set macros;
LMARGIN = "set lmargin at screen 0.15;  set rmargin at screen 0.55";
RMARGIN = "set lmargin at screen 0.55;  set rmargin at screen 0.95";
TMARGIN = "set tmargin at screen 0.70;  set bmargin at screen 0.2";

set size 0.75,0.75

set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 lw 3           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 3           lc rgb '#01400C'

set style line 1 lw 2           lc rgb '#00863E'
#set style line 2 lw 2   dt 2   lc rgb '#E87E00'
#set style line 3 lw 2          lc rgb '#E87E00'
#set style line 4 lw 2   dt 2   lc rgb '#037DBF'
#set style line 5 lw 2          lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'
set style line 7 lw 2           lc rgb '#444444'
set style line 8 lw 1           lc rgb '#BBBBBB'

set format y '%.1f';

set key spacing 1.5;

set xtics -2,1,2
set xrange [-2.4:2.4];
scale = 100
#set yrange [-1:19]
#set ytics -4,1,0
set mytics 2

set key at graph 0.75, 0.95

set ylabel '$|(E_\mathrm{ENPT3} - E_\mathrm{GP})/E_\mathrm{ENPT3}|$ (a.\,u. $\times 10^{-2}$)'
set xlabel '$\lambda$ (unitless)';

plot 0 w lines ls 7 title '', \
     'out' u 1:(abs(scale*$10/$2)) w linespoints lw 3 lc rgb '#01400C' ps 1.25 pt 7        title '\footnotesize{ENPT3}';
