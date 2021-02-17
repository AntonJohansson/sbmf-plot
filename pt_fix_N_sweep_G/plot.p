set term epslatex;
set output 'imgs/gp_pt_sweep_G.eps';

set size 0.75,0.75

set style line 1 lw 2           lc rgb '#00863E'
set style line 2 lw 2   dt 2    lc rgb '#E87E00'
set style line 3 lw 2           lc rgb '#E87E00'
set style line 4 lw 2   dt 2    lc rgb '#037DBF'
set style line 5 lw 2           lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'


set format y '%.2f';

set xtics ('-2' -2, '' -1.75, '' -1.5, '' -1.25, '-1' -1, '' -0.75, '' -0.5, '' -0.25, '0' 0, '' 0.25, '' 0.5, '' 0.75, '1' 1, '' 1.25, '' 1.5, '' 1.75, '2' 2);
set xrange [-2.25:2.25];
set yrange [-0.20:0.01];

set ylabel 'Energy rel. to $E_\mathrm{GP}$ (a.\,u.)';
set xlabel '$\lambda = g(N-1), N=100$ \quad (a.\,u.)';

set key at screen 0.55, 0.5;
set key spacing 1.5;

plot 'out' u 1:3 w linespoints ls 1 title '$E_\mathrm{BestMF}$', \
     'out' u 1:5 w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
     'out' u 1:6 w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
     'out' u 1:7 w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \
     'out' u 1:8 w linespoints ls 5 title '$E_\mathrm{ENPT3}$';
