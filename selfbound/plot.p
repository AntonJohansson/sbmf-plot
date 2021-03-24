set term epslatex;
set output 'imgs/selfbound.eps';

set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

set style line 1 lw 4   dt 2    lc rgb '#000000'
set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 lw 4           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 4           lc rgb '#01400C'
set style line 7 lw 3           lc rgb '#444444'

set size 1,1

#set multiplot layout 2,2;
scale = 100

set xrange [-10:310]
set yrange [-0.0125:0.02]
set xtics 0,100,300
set mxtics 2
set ytics -0.01,0.010,0.02
set mytics 2
set format y '%.2f'

set ylabel '$E/N$ (a.\,u.)';
set xlabel '$N$ (unitless)';

set key spacing 1.5
set key outside right
set key box

#@TMARGIN; @LMARGIN;
plot    \
        'out_0.005000_gab_-0.950000' u 1:(($2)/$1)  w lines       ls 1 title '\footnotesize{GP}', \
        'out_0.005000_gab_-0.950000' u 1:(($3)/$1)  w linespoints ls 2 title '\footnotesize{RSPT2}', \
        'out_0.005000_gab_-0.950000' u 1:(($4)/$1)  w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'out_0.005000_gab_-0.950000' u 1:(($5)/$1)  w linespoints ls 4 title '\footnotesize{ENPT2}', \
        'out_0.005000_gab_-0.950000' u 1:(($6)/$1)  w linespoints ls 5 title '\footnotesize{ENPT3}', \
