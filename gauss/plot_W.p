set term epslatex;
set output 'imgs/gp_gauss_W.eps';

set size 0.75,0.75;
set key at graph 0.99, 0.95;
set key spacing 1.5;

set style line 1 lw 3 lt 1       lc rgb '#000000'; # Potential
set style line 2 lw 3 lt 1       lc rgb '#b80707'; # SYM Energy
set style line 3 lw 3 lt 1       lc rgb '#072ab8'; # ASYM Energy

#set format y '%.3f'
set ylabel 'Density per particle (a.\,u.)';
set xlabel 'Position $x$ (a.\,u.)';
set xrange [-3:3];
set yrange [0:1];
plot 'out_W' u 1:3 w lines ls 2 dt 4 title '\footnotesize{Symmetric}', \
     'out_W' u 1:4 w lines ls 3 dt 6 title '\footnotesize{Asymmetric}';
