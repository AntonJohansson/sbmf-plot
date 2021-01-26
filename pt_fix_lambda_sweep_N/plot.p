set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.55";
RMARGIN = "set lmargin at screen 0.55; set rmargin at screen 0.95";

set term epslatex;
set output 'imgs/gp_pt_sweep_N.eps';

set size 1,1.125;
set logscale x;

set ylabel 'Energy rel. to $E_\mathrm{GP}$ (a.\,u.)';
set ylabel offset 0,-4;
set multiplot layout 2,2;

set yrange [-0.0125:0.002];
set xrange [5:0.25*1e7];
set ytics -0.01,0.002,0;
set format y '%.3f';

set format x '';
unset xlabel;
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @LMARGIN;
plot \
	'out_l-0.50' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
	'out_l-0.50' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l-0.50' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l-0.50' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l-0.50' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';

set format x '';
set format y '';
unset xlabel;
unset ylabel;
set label 1 '$\lambda = 0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @RMARGIN;
plot \
	'out_l0.50' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
	'out_l0.50' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l0.50' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l0.50' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l0.50' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';

set yrange [-0.05:0.01];
set ytics -0.04,0.01,0;

set format x '$10^{%L}$';
set format y '%.3f';
set xlabel 'Basis size (a.\,u.)';
#set ylabel 'Energy (a.\,u.)';
set label 1 '$\lambda = -1$' at graph 0.4, 0.5;
unset key;
@BMARGIN; @LMARGIN;
plot \
	'out_l-1.00' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
	'out_l-1.00' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l-1.00' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l-1.00' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l-1.00' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';

set format x '$10^{%L}$';
set format y '';
set xlabel 'Basis size (a.\,u.)';
set key at screen 0.95, 1.075;
set key box;
set key spacing 1.5;
set key maxrows 2;
set label 1 '$\lambda = 1.0$' at graph 0.4, 0.5;
dummy = "NaN title ' ' lt -3";
unset ylabel;
@BMARGIN; @RMARGIN;
plot \
	'out_l1.00' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
    @dummy, \
	'out_l1.00' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l1.00' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l1.00' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l1.00' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';
