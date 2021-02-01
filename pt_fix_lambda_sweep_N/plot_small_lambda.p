set macros;
LMARGIN         = "set tmargin at screen 0.65; set bmargin at screen 0.2; set lmargin at screen 0.15; set rmargin at screen 0.50";
RMARGIN         = "set tmargin at screen 0.65; set bmargin at screen 0.2; set lmargin at screen 0.60; set rmargin at screen 0.95";
INSET_LMARGIN   = "set tmargin at screen 0.50; set bmargin at screen 0.35; set lmargin at screen 0.23; set rmargin at screen 0.38";
INSET_RMARGIN   = "set tmargin at screen 0.50; set bmargin at screen 0.35; set lmargin at screen 0.68; set rmargin at screen 0.83";

# Arrows between inset and graph
set arrow from screen 0.23, screen 0.50 to screen 0.15,     screen 0.585    nohead lc "#999999";
set arrow from screen 0.38, screen 0.50 to screen 0.3725,   screen 0.585    nohead lc "#999999";
set arrow from screen 0.68, screen 0.35 to screen 0.60,     screen 0.263    nohead lc "#999999";
set arrow from screen 0.83, screen 0.35 to screen 0.8225,   screen 0.263    nohead lc "#999999";

scale = 1e4;

set term epslatex;
set output 'imgs/gp_pt_sweep_N_small_lambda.eps';

set size 1,0.75;
set logscale x;

set ylabel 'Energy rel. to $E_\mathrm{GP}$ (a.\,u.) $^{\times 10^{-4}}$';
set ylabel offset 0,0;
set multiplot layout 1,2;

set yrange [-6*1e-4*scale:1e-4*scale];
set xrange [5:0.30*1e8];
set ytics -6*1e-4*scale,1e-4*scale,6*1e-4*scale;
set format y '%.0f';

set format x '$10^{%L}$';
set xlabel 'Particle number $N$ (a.\,u.)';

set label 1 '$\lambda = -0.01$' at graph 0.35, 0.920;
unset key;
@LMARGIN;
plot 'out_small_lambda/out_l-0.01' u 1:(scale*$3) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$5) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$6) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$7) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$8) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';

unset ylabel;
unset key;
set label 1 '$\lambda = 0.01$' at graph 0.35, 0.920;
set yrange [-1e-4*scale:6*1e-4*scale];
@RMARGIN;
plot 'out_small_lambda/out_l0.01' u 1:(scale*$3) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$5) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$6) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$7) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$8) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';

# Draw inset plots




unset label;
unset xlabel;
unset ylabel;
set size 0.2, 0.35;
set origin 0.0, 0.2;
set xrange [5:1e5];
set yrange [-1e-5*scale:1e-6*scale];
set format y '\tiny{%.3f}';
set format x '\tiny{$10^{%L}$}';
set ytics offset 0.8,0.1;
set xtics offset 0,  0.5;
set ytics -1e-5*scale,0.25*1e-5*scale,1e-6*scale;
@INSET_LMARGIN;
plot 'out_small_lambda/out_l-0.01' u 1:(scale*$3) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$5) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$6) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$7) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_small_lambda/out_l-0.01' u 1:(scale*$8) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';

set size 0.7, 0.35;
set origin 0.0, 0.2;
set xrange [5:1e5];
set yrange [-0.5*1e-5*scale:0.25*1e-5*scale];
set ytics -0.45*1e-5*scale,0.15*1e-5*scale,1.5*1e-6*scale;
@INSET_RMARGIN;
plot 'out_small_lambda/out_l0.01' u 1:(scale*$3) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$5) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$6) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$7) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_small_lambda/out_l0.01' u 1:(scale*$8) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';
