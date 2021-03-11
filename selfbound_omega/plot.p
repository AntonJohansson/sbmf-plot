set term epslatex;
set output 'imgs/selfbound_omega.eps';

set size 0.65,  0.65;

scale = 100
set format y '%.0f'
set format x '%.1f'
set xrange [0:1.1]
set ylabel 'Rel. energy diff. to $E_\mathrm{GP}$ (\%)';
set xlabel '$\omega$ (a.\,u.)';

set key at graph 0.95, 0.55
set key spacing 1.25;

# SYM
set style line 1 lw 2           lc rgb '#00863E'
set style line 2 lw 2   dt 2    lc rgb '#E87E00'
set style line 3 lw 2           lc rgb '#E87E00'
set style line 4 lw 2   dt 2    lc rgb '#037DBF'
set style line 5 lw 2           lc rgb '#037DBF'

plot 'out' u 1:(scale*($3 - $2)/$2) w linespoints ls 2 title '$E_\mathrm{RSPT2}$',   \
     'out' u 1:(scale*($4 - $2)/$2) w linespoints ls 3 title '$E_\mathrm{RSPT3}$',   \
     'out' u 1:(scale*($5 - $2)/$2) w linespoints ls 4 title '$E_\mathrm{ENPT2}$',   \
     'out' u 1:(scale*($6 - $2)/$2) w linespoints ls 5 title '$E_\mathrm{ENPT3}$';
