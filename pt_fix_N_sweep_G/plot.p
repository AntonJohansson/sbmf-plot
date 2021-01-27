set term epslatex;
set output 'imgs/gp_pt_sweep_G.eps';

set size 0.75, 0.75;

set format y '%.1f';
set ylabel 'Energy rel. to $E_\mathrm{GP}$ (a.\,u.)';
set xlabel '$\lambda = g(N-1), N=100$ \quad (a.\,u.)';
set key at graph 0.75, 0.65;
set xtics -5,1,5;
set key spacing 1.5;

plot 'out' u 1:3 w linespoints lw 2              title '$E_\mathrm{BestMF}$', \
     'out' u 1:5 w linespoints dt 2 lc 4 lw 2    title '$E_\mathrm{RSPT2}$', \
     'out' u 1:6 w linespoints lc 4 lw 2         title '$E_\mathrm{RSPT3}$', \
     'out' u 1:7 w linespoints dt 2 lc 6 lw 2    title '$E_\mathrm{ENPT2}$', \
     'out' u 1:8 w linespoints lc 6 lw 2         title '$E_\mathrm{ENPT3}$';
