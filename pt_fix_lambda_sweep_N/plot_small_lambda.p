set macros;
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.55";
RMARGIN = "set lmargin at screen 0.55; set rmargin at screen 0.95";

set term epslatex;
set output 'imgs/gp_pt_sweep_N_small_lambda.eps';

set size 1,1;
set logscale x;

set ylabel 'Energy rel. to $E_\mathrm{GP}$ (a.\,u.)';
set ylabel offset 0,0;
set multiplot layout 1,2;

set yrange [-6*1e-4:6*1e-4];
set xrange [5:0.30*1e8];
set ytics -6*1e-4,1e-4,6*1e-4;
set format y '%.3f';

set format x '$10^{%L}$';
set xlabel 'Particle number $N$ (a.\,u.)';

set label 1 '$\lambda = -0.01$' at graph 0.4, 0.6;
unset key;
@LMARGIN;
plot 'out_small_lambda/out_l-0.01' u 1:3 w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_small_lambda/out_l-0.01' u 1:5 w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_small_lambda/out_l-0.01' u 1:6 w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_small_lambda/out_l-0.01' u 1:7 w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_small_lambda/out_l-0.01' u 1:8 w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';

set format y '';
unset ylabel;
set label 1 '$\lambda = 0.01$' at graph 0.4, 0.6;
unset key;
@RMARGIN;
plot 'out_small_lambda/out_l0.01' u 1:3 w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_small_lambda/out_l0.01' u 1:5 w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_small_lambda/out_l0.01' u 1:6 w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_small_lambda/out_l0.01' u 1:7 w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_small_lambda/out_l0.01' u 1:8 w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';
