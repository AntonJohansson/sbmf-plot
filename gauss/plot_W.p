set term epslatex;
set output 'imgs/gp_gauss_W.eps';

set size 0.75,0.75;
set key at graph 0.95, 0.95

#set format y '%.3f'
set ylabel 'Density per particle (a.\,u.)';
set xlabel 'Position $x$ (a.\,u.)';
set xrange [-3:3];
set yrange [0:6];
plot 'out_W' u 1:2 w lines lw 3 title 'Potential', \
     'out_W' u 1:3 w lines dt 6 lc 3 lw 3 title 'State 1', \
     'out_W' u 1:4 w lines dt 4 lc 4 lw 3 title 'State 2', \
