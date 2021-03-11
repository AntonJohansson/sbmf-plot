#set term epslatex;
set term cairolatex;
set output 'imgs/gp_gauss_energy.eps';

set size 1,1;
#set key at graph 0.95, 0.95

set format y '%.2f'
set yrange [0.948:1.0025];
set ylabel '$E/N$ (a.\,u.)';
set xlabel '$N$ (unitless)';

set key outside right;
set key box;
set key spacing 1.25;
set key box width 1;

set macros;
dummy = "NaN title ' ' lt -3";

#set style line 3 lw 3           lc rgb '#162E53'
#set style line 5 lw 3           lc rgb '#DB9C00'

# SYM
set style line 1    lw 1           lc rgb '#654800'
set style line 3    lw 1           lc rgb '#AE7E05'
set style line 5    lw 1           lc rgb '#E2AB25'

# ASYM
set style line 6    lw 3       lc rgb '#450180'; # ASYM Energy
set style line 7    lw 3 dt 2  lc rgb '#86B400'; # ASYM RSPT2
set style line 8    lw 3       lc rgb '#86B400'; # ASYM RSPT3
set style line 9    lw 3 dt 2  lc rgb '#AD007E'; # ASYM ENPT2
set style line 10   lw 3       lc rgb '#AD007E'; # ASYM ENPT3

set ylabel offset -1.6,0
set xlabel offset 0,-1

set label 1 front at screen 0.72, 0.92 '\footnotesize{\textbf{Symmetric state}}'
set label 2 front at screen 0.72, 0.65 '\footnotesize{\textbf{Asymmetric state}}'

plot  \
     NaN title ' ' lt -3, \
     'out_default_E' u 1:($3/$1) w linespoints ls 1 title '\footnotesize{$E_\mathrm{GP}$}', \
     'out_default_E' u 1:($5/$1):(($6-($5-$6))/$1) w filledcurve fc rgb '#AAE2AB24' title '', \
     'out_default_E' u 1:($7/$1):(($8-($7-$8))/$1) w filledcurve fc rgb '#AAE2AB24' title '', \
     'out_random_E'  u 1:($5/$1):(($6-($5-$6))/$1) w filledcurve fc rgb '#55DDDDDD' title '', \
     'out_random_E'  u 1:($7/$1):(($8-($7-$8))/$1) w filledcurve fc rgb '#55DDDDDD' title '', \
     'out_default_E' u 1:($6/$1) w linespoints ls 3 title '\footnotesize{$E_\mathrm{RSPT3}$}', \
     'out_default_E' u 1:($8/$1) w linespoints ls 5 title '\footnotesize{$E_\mathrm{ENPT3}$}', \
     NaN title ' ' lt -3, \
     NaN title ' ' lt -3, \
     'out_random_E'  u 1:($3/$1) w linespoints ls 6 title '\footnotesize{$E_\mathrm{GP}$}', \
     'out_random_E'  u 1:($6/$1) w linespoints ls 8 title '\footnotesize{$E_\mathrm{RSPT3}$}', \
     'out_random_E'  u 1:($8/$1) w linespoints ls 10 title '\footnotesize{$E_\mathrm{ENPT3}$}';
