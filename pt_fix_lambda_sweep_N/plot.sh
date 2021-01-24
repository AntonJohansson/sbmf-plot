
set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

set term epslatex;
set output 'imgs/gp_pt_sweep_N.eps';

set size 1,1.15;

set multiplot layout 2,2;

set ylabel 'Energy rel. to GP(a.\,u.)';
#set xtics ('' 4, '' 8, '' 12, '' 16, '' 20, '' 24, '' 28, '' 32, '' 36, '' 40, '' 44, '' 48, '' 52, '' 56, '' 60, '' 64);
unset xlabel;
set format y '%.3f'
#set ytics border 1.575,0.0050,1.60;
#set yrange [1.574:1.593];
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @LMARGIN;
plot \
	'out_l-0.50' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
	'out_l-0.50' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l-0.50' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l-0.50' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l-0.50' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';

#set xtics ('' 4, '' 8, '' 12, '' 16, '' 20, '' 24, '' 28, '' 32, '' 36, '' 40, '' 44, '' 48, '' 52, '' 56, '' 60, '' 64);
unset xlabel;
set format y '%.3f'
#set ytics border 2.375,0.005,2.39;
#set yrange [2.374:2.391];
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

set xlabel 'Basis size (a.\,u.)';
set ylabel 'Energy (a.\,u.)';
#set xtics ('4' 4, '' 8, '' 12, '16' 16, '' 20, '' 24, '' 28, '32' 32, '' 36, '' 40, '' 44, '48' 48, '' 52, '' 56, '' 60, '64' 64);
set format y '%.3f'
#set ytics border 1.10,0.0250,1.17;
#set yrange [1.09:1.17];
set label 1 '$\lambda = -1$' at graph 0.4, 0.5;
unset key;
@BMARGIN; @LMARGIN;
plot \
	'out_l-1.00' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
	'out_l-1.00' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l-1.00' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l-1.00' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l-1.00' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';

set xlabel 'Basis size (a.\,u.)';
#set xtics ('4' 4, '' 8, '' 12, '16' 16, '' 20, '' 24, '' 28, '32' 32, '' 36, '' 40, '' 44, '48' 48, '' 52, '' 56, '' 60, '64' 64);
set format y '%.3f'
#set ytics border 2.705,0.0250,2.760;
#set yrange [2.70:2.765];
set key at screen 0.75, 1.125;
set key box;
#set key outside right;
set key spacing 1.5;
#set key at graph 1.0,0.975;
set label 1 '$\lambda = 1.0$' at graph 0.4, 0.5;
unset ylabel;
@BMARGIN; @RMARGIN;
plot \
	'out_l1.00' u 1:3				w linespoints lw 2 				title '$E_\mathrm{BestMF}$', \
	'out_l1.00' u 1:5 				w linespoints dt 2 lc 4 lw 2 	title '$E_\mathrm{RSPT2}$', \
	'out_l1.00' u 1:6 				w linespoints lc 4 lw 2 		title '$E_\mathrm{RSPT3}$', \
	'out_l1.00' u 1:7 				w linespoints dt 2 lc 6 lw 2 	title '$E_\mathrm{ENPT2}$', \
	'out_l1.00' u 1:8 				w linespoints lc 6 lw 2 		title '$E_\mathrm{ENPT3}$';
