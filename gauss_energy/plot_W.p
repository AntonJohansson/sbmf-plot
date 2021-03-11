set term epslatex;
set output 'imgs/gp_gauss_energy.eps';

set size 1,1;
#set key at graph 0.95, 0.95

set format y '%.2f'
set yrange [0.948:1.0025];
set ylabel 'Energy per particle (a.\,u.)';
set xlabel 'Particle count $N$ (a.\,u.)';

set key outside right;
set key box;
set key spacing 1.25;
set key box width -1;

set macros;
dummy = "NaN title ' ' lt -3";

# SYM
set style line 1 lw 2           lc rgb '#00863E'
set style line 2 lw 2   dt 2    lc rgb '#E87E00'
set style line 3 lw 2           lc rgb '#E87E00'
set style line 4 lw 2   dt 2    lc rgb '#037DBF'
set style line 5 lw 2           lc rgb '#037DBF'

# ASYM
set style line 6    lw 2       lc rgb '#450180'; # ASYM Energy
set style line 7    lw 2 dt 2  lc rgb '#86B400'; # ASYM RSPT2
set style line 8    lw 2       lc rgb '#86B400'; # ASYM RSPT3
set style line 9    lw 2 dt 2  lc rgb '#AD007E'; # ASYM ENPT2
set style line 10   lw 2       lc rgb '#AD007E'; # ASYM ENPT3

plot NaN title '\footnotesize{\textbf{Symmetric}}' lt -3, \
     'out_default_E' u 1:($3/$1) w linespoints ls 1 title '\footnotesize{$E_\mathrm{GP}$}', \
     'out_default_E' u 1:($5/$1) w linespoints ls 2 title '\footnotesize{$E_\mathrm{RSPT2}$}', \
     'out_default_E' u 1:($6/$1) w linespoints ls 3 title '\footnotesize{$E_\mathrm{RSPT3}$}', \
     'out_default_E' u 1:($7/$1) w linespoints ls 4 title '\footnotesize{$E_\mathrm{ENPT2}$}', \
     'out_default_E' u 1:($8/$1) w linespoints ls 5 title '\footnotesize{$E_\mathrm{ENPT3}$}', \
     NaN title ' ' lt -3, \
     NaN title '\footnotesize{\textbf{Asymmetric}}' lt -3, \
     'out_random_E'  u 1:($3/$1) w linespoints ls 6 title '\footnotesize{$E_\mathrm{GP}$}', \
     'out_random_E'  u 1:($5/$1) w linespoints ls 7 title '\footnotesize{$E_\mathrm{RSPT2}$}', \
     'out_random_E'  u 1:($6/$1) w linespoints ls 8 title '\footnotesize{$E_\mathrm{RSPT3}$}', \
     'out_random_E'  u 1:($7/$1) w linespoints ls 9 title '\footnotesize{$E_\mathrm{ENPT2}$}', \
     'out_random_E'  u 1:($8/$1) w linespoints ls 10 title '\footnotesize{$E_\mathrm{ENPT3}$}';
