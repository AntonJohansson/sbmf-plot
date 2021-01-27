set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.55";
RMARGIN = "set lmargin at screen 0.55; set rmargin at screen 0.95";

set term epslatex;
set output 'imgs/gp_pt_sweep_N_E_over_N.eps';

set size 1,1.125;
set logscale x;

set ylabel 'Energy per particle rel. to $E_\mathrm{GP}$ (a.\,u.) $^{\times 10^{-3}}$';
set ylabel offset 0,-4;
set multiplot layout 2,2;

set yrange [-0.0012*1e3:0.0002*1e3];
set xrange [5:0.30*1e8];
set ytics -0.0010*1e3,0.0002*1e3,0;
set format y '%.3f';

set format x '';
unset xlabel;
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @LMARGIN;
plot 'out_48/out_l-0.50' u 1:(1e3*$3/$1) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_48/out_l-0.50' u 1:(1e3*$5/$1) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_48/out_l-0.50' u 1:(1e3*$6/$1) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_48/out_l-0.50' u 1:(1e3*$7/$1) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_48/out_l-0.50' u 1:(1e3*$8/$1) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';

set format x '';
set format y '';
unset xlabel;
unset ylabel;
set label 1 '$\lambda = 0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @RMARGIN;
plot 'out_48/out_l0.50' u 1:(1e3*$3/$1) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_48/out_l0.50' u 1:(1e3*$5/$1) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_48/out_l0.50' u 1:(1e3*$6/$1) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_48/out_l0.50' u 1:(1e3*$7/$1) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_48/out_l0.50' u 1:(1e3*$8/$1) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';

set yrange [-0.005*1e3:0.001*1e3];
set ytics -0.004*1e3,0.001*1e3,0;

set format x '$10^{%L}$';
set format y '%.3f';
set xlabel 'Particle number $N$ (a.\,u.)';
#set ylabel 'Energy (a.\,u.)';
set label 1 '$\lambda = -1.0$' at graph 0.4, 0.5;
unset key;
@BMARGIN; @LMARGIN;
plot 'out_48/out_l-1.00' u 1:(1e3*$3/$1) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     'out_48/out_l-1.00' u 1:(1e3*$5/$1) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_48/out_l-1.00' u 1:(1e3*$6/$1) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_48/out_l-1.00' u 1:(1e3*$7/$1) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_48/out_l-1.00' u 1:(1e3*$8/$1) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';


set format x '$10^{%L}$';
set format y '';
set key at screen 0.95, 1.075;
set key box;
set key spacing 1.5;
set key maxrows 2;
set label 1 '$\lambda = 1.0$' at graph 0.4, 0.5;
dummy = "NaN title ' ' lt -3";
unset ylabel;
@BMARGIN; @RMARGIN;
plot 'out_48/out_l1.00' u 1:(1e3*$3/$1) w linespoints lw 2           title '$E_\mathrm{BestMF}$', \
     @dummy, \
     'out_48/out_l1.00' u 1:(1e3*$5/$1) w linespoints dt 2 lc 4 lw 2 title '$E_\mathrm{RSPT2}$', \
     'out_48/out_l1.00' u 1:(1e3*$6/$1) w linespoints lc 4 lw 2      title '$E_\mathrm{RSPT3}$', \
     'out_48/out_l1.00' u 1:(1e3*$7/$1) w linespoints dt 2 lc 6 lw 2 title '$E_\mathrm{ENPT2}$', \
     'out_48/out_l1.00' u 1:(1e3*$8/$1) w linespoints lc 6 lw 2      title '$E_\mathrm{ENPT3}$';
