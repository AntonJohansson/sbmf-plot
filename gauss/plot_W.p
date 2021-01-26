set term epslatex;
set output 'imgs/gp_gauss_W.eps';

set size 0.75,0.75;
set key at graph 0.95, 0.95

#set format y '%.3f'
set ylabel 'Density per particle (a.\,u.)';
set xlabel 'Position $x$ (a.\,u.)';
set xrange [-3:3];
set yrange [0:6];
plot 'out_W' u 1:2 w lines lw 2 title 'Potential', \
     'out_W' u 1:3 w lines lc 3 lw 2 title 'Sym. guess', \
     'out_W' u 1:4 w lines lc 4 lw 2 title 'Asym. guess';
