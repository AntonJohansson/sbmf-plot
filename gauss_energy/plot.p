set term epslatex;
#set term cairolatex;
#set ylabel offset -1.6,0
#set xlabel offset 0,-1
set output 'imgs/gp_gauss_energy.eps';

set size 1,1;
#set key at graph 0.95, 0.95

set format y '%.2f'
set yrange [0.948:1.0025];
set xrange [2:34]
set ylabel '$E/N$ (a.\,u.)';
set xlabel '$N$ (unitless)';

set key outside right;
set key box;
set key spacing 1.25;
set key box width 3;

set macros;
dummy = "NaN title ' ' lt -3";

#set style line 3 lw 3           lc rgb '#162E53'
#set style line 5 lw 3           lc rgb '#DB9C00'

# SYM
set style line 1    lw 3           lc rgb '#654800'
set style line 3    lw 3           lc rgb '#D99E0D'
set style line 5    lw 3           lc rgb '#AE7E05'


# ASYM
set style line 6    lw 3       lc rgb '#051F4E'; # ASYM Energy
set style line 8    lw 3       lc rgb '#2D7598'; # ASYM RSPT3
set style line 10   lw 3       lc rgb '#164190'; # ASYM ENPT3


set label 1 front at screen 0.72, 0.92 '\footnotesize{\textbf{Symmetric state}}'
set label 2 front at screen 0.72, 0.65 '\footnotesize{\textbf{Asymmetric state}}'

plot  \
     NaN title ' ' lt -3, \
     'mflim/out_default_E' u 1:($3/$1) w linespoints ls 1 ps 1.5 title '\footnotesize{GP}', \
     'mflim/out_default_E' u 1:($5/$1):(($6-($5-$6))/$1) w filledcurve fc rgb '#fce19c' title '', \
     'mflim/out_default_E' u 1:($7/$1):(($8-($7-$8))/$1) w filledcurve fc rgb '#efca6c' title '', \
     'mflim/out_default_E' u 1:($6/$1) w linespoints ls 3 pt 7 ps 1.5 title '\footnotesize{RSPT3}', \
     'mflim/out_default_E' u 1:($8/$1) w linespoints ls 5 ps 1.5 title '\footnotesize{ENPT3}', \
     NaN title ' ' lt -3, \
     NaN title ' ' lt -3, \
     'mflim/out_random_E'  u 1:($5/$1):(($6-($5-$6))/$1) w filledcurve fc rgb '#B3C2DC' title '', \
     'mflim/out_random_E'  u 1:($7/$1):(($8-($7-$8))/$1) w filledcurve fc rgb '#6592e7' title '', \
     'mflim/out_random_E'  u 1:($3/$1) w linespoints ls 6  pt 2 ps 1.5 title '\footnotesize{GP}', \
     'mflim/out_random_E'  u 1:($6/$1) w linespoints ls 8  pt 9 ps 1.5 title '\footnotesize{RSPT3}', \
     'mflim/out_random_E'  u 1:($8/$1) w linespoints ls 10 pt 11 ps 1.5 title '\footnotesize{ENPT3}';
