set term epslatex size 5, 7
set output 'imgs/selfbound-all.eps';

set macros;
TMARGIN = "set tmargin at screen 1.00; set bmargin at screen 0.70";
MMARGIN = "set tmargin at screen 0.70; set bmargin at screen 0.40";
BMARGIN = "set tmargin at screen 0.40; set bmargin at screen 0.10";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.70";

set style line 3 lw 4           pt 7 ps 1.5    lc rgb '#666666'
set style line 5 lw 4           ps 1.5         lc rgb '#101010'

set size 0.75,1

set multiplot layout 3,1;

scale = 1000
set xrange [0:3]
set mxtics 2
set xtics 0,1,3

set ylabel '$E/2N$ (a.\,u. $\times 10^{-3}$)';
unset xlabel
set format x ''

set key spacing 1.5
set key at graph 0.55, 0.95

set yrange

set mytics 2
set ytics 2.4, 0.2, 3
set yrange [2.35:3.1]
set format y '%.2f'


set label 1 front '\textcolor{dred}{\footnotesize{$\gamma = -0.90$}}'   at graph 0.41, 0.19
@TMARGIN; @LMARGIN;
plot    \
        'out_exact' u 1:(2.45 + scale*$2/2) w lines lw 4 lc rgb '#890F08' title 'Analytical', \
        'out_0.005000_gab_-0.900000'  u ($1*$7*$7):(0.5*scale*$3/$1):(0.5*scale*$4/$1) w filledcurve fc rgb '#f5a7a3' title '', \
        'out_0.005000_gab_-0.900000'  u ($1*$7*$7):(0.5*scale*$5/$1):(0.5*scale*$6/$1) w filledcurve fc rgb '#ed655e' title '', \
        'out_0.005000_gab_-0.900000'  u ($1*$7*$7):(0.5*scale*$4/$1)  w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'out_0.005000_gab_-0.900000'  u ($1*$7*$7):(0.5*scale*$6/$1)  w linespoints ls 5 title '\footnotesize{ENPT3}';

set mytics 2
set ytics 2.4, 0.1, 3
set yrange [2.38:2.72]
set format y '%.2f'

set label 1 front '\textcolor{dgreen}{\footnotesize{$\gamma = -0.95$}}'   at graph 0.41, 0.19
@MMARGIN; @LMARGIN;
plot    \
        'out_exact' u 1:(2.48 + scale*$3/2) w lines lw 4 lc rgb '#01400C' title 'Analytical', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$3/$1):(0.5*scale*$4/$1) w filledcurve fc rgb '#b8e0be' title '', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$5/$1):(0.5*scale*$6/$1) w filledcurve fc rgb '#5fb96d' title '', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$4/$1)  w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$6/$1)  w linespoints ls 5 title '\footnotesize{ENPT3}';


set mytics 2
set ytics 2.34, 0.04, 2.48
set yrange [2.33:2.48]
set format y '%.2f'

set format x '%.0f'
set xlabel '$\eta$ (m$^{-1}$)';
set label 1 front '\textcolor{dblue}{\footnotesize{$\gamma = -0.99$}}'   at graph 0.11, 0.19
@BMARGIN; @LMARGIN;
plot    \
        'out_exact' u 1:(2.45 + scale*$4/2) w lines lw 4 lc rgb '#1e1b64' title 'Analytical', \
        'out_0.005000_gab_-0.990000'  u ($1*$7*$7):(0.5*scale*$3/$1):(0.5*scale*$4/$1) w filledcurve fc rgb '#cbcae8' title '', \
        'out_0.005000_gab_-0.990000'  u ($1*$7*$7):(0.5*scale*$5/$1):(0.5*scale*$6/$1) w filledcurve fc rgb '#8583c9' title '', \
        'out_0.005000_gab_-0.990000'  u ($1*$7*$7):(0.5*scale*$4/$1)  w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'out_0.005000_gab_-0.990000'  u ($1*$7*$7):(0.5*scale*$6/$1)  w linespoints ls 5 title '\footnotesize{ENPT3}';
