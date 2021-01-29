set macros;
dummy = "NaN title ' ' lt -3";
LMARGIN = "set tmargin at screen 0.7; set bmargin at screen 0.15; set lmargin at screen 0.15; set rmargin at screen 0.50";
RMARGIN = "set tmargin at screen 0.7; set bmargin at screen 0.15; set lmargin at screen 0.60; set rmargin at screen 0.95";

set term epslatex;
set output 'imgs/gp_pt_sweep_G.eps';

set size 1, 1;

set format y '%.2f';
unset key;

set xtics ('-2' -2, '' -1.75, '' -1.5, '' -1.25, '-1' -1, '' -0.75, '' -0.5, '' -0.25, '0' 0, '' 0.25, '' 0.5, '' 0.75, '1' 1, '' 1.25, '' 1.5, '' 1.75, '2' 2);
set xrange [-2.5:2.5];
set yrange [-0.15:0.01];

set multiplot layout 1,2;
@LMARGIN;
plot 'out_zoom' u 1:3 w linespoints lw 2              title '$E_\mathrm{BestMF}$', \
     'out_zoom' u 1:5 w linespoints dt 2 lc 4 lw 2    title '$E_\mathrm{RSPT2}$', \
     'out_zoom' u 1:6 w linespoints lc 4 lw 2         title '$E_\mathrm{RSPT3}$', \
     'out_zoom' u 1:7 w linespoints dt 2 lc 6 lw 2    title '$E_\mathrm{ENPT2}$', \
     'out_zoom' u 1:8 w linespoints lc 6 lw 2         title '$E_\mathrm{ENPT3}$';

set ylabel 'Energy rel. to $E_\mathrm{GP}$ (a.\,u.)';
set xlabel '$\lambda = g(N-1), N=100$ \quad (a.\,u.)';
set xtics ('' -5, '-4' -4, '' -3, '-2' -2, '' -1, '0' 0, '' 1, '2' 2, '' 3, '4' 4, '' 5);
set xrange [-6:6];
set yrange [-1.1:0.3];
set format y '%.1f';

set xlabel offset -12.5,-0;

set key at screen 0.95, 0.85;
set key box;
set key spacing 1.5;
set key maxrows 2;
set key spacing 1.5;

unset ylabel;
@RMARGIN;
plot 'out' u 1:3 w linespoints lw 2              title '$E_\mathrm{BestMF}$', \
     @dummy, \
     'out' u 1:5 w linespoints dt 2 lc 4 lw 2    title '$E_\mathrm{RSPT2}$', \
     'out' u 1:6 w linespoints lc 4 lw 2         title '$E_\mathrm{RSPT3}$', \
     'out' u 1:7 w linespoints dt 2 lc 6 lw 2    title '$E_\mathrm{ENPT2}$', \
     'out' u 1:8 w linespoints lc 6 lw 2         title '$E_\mathrm{ENPT3}$';
