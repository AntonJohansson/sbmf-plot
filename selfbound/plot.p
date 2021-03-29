set term epslatex;
set output 'imgs/selfbound.eps';

set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

set style line 1 lw 3   dt 2    lc rgb '#555555'
set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 lw 4           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 4           lc rgb '#01400C'
set style line 7 lw 3           lc rgb '#444444'

set size 1,1

#set multiplot layout 2,2;

scale = 1000
set xrange [2:62]
set yrange [4.65:5.8]
#set xtics 0,100,300
#set mxtics 2
set ytics 4.7,0.3,5.6
#set mytics 2
set format y '%.1f'

set ylabel '$E/N$ (a.\,u.)';
set xlabel '$N$ (unitless)';

set key spacing 1.5
set key at graph 0.35, 0.85
#set key outside right
#set key box

set label 1 front '\footnotesize{$\delta = -0.90$}' at graph 0.51, 0.69
set label 2 front '\footnotesize{$\delta = -0.95$}' at graph 0.57, 0.47
set label 3 front '\footnotesize{$\delta = -0.99$}' at graph 0.63, 0.26
set label 4 front '$\times 10^{-3}$' at screen 0.10, 0.99

#@TMARGIN; @LMARGIN;
#plot    \
#        'out_0.005000_gab_-0.900000' u 1:(($3)/$1)  w points ls 2 title '\footnotesize{RSPT2}', \
#        'out_0.005000_gab_-0.900000' u 1:(($4)/$1)  w points ls 3 title '\footnotesize{RSPT3}', \
#        'out_0.005000_gab_-0.900000' u 1:(($5)/$1)  w points ls 4 title '\footnotesize{ENPT2}', \
#        'out_0.005000_gab_-0.900000' u 1:(($6)/$1)  w points ls 5 title '\footnotesize{ENPT3}', \
#        'out_0.005000_gab_-0.950000' u 1:(($3)/$1)  w points ls 2 title '\footnotesize{RSPT2}', \
#        'out_0.005000_gab_-0.950000' u 1:(($4)/$1)  w points ls 3 title '\footnotesize{RSPT3}', \
#        'out_0.005000_gab_-0.950000' u 1:(($5)/$1)  w points ls 4 title '\footnotesize{ENPT2}', \
#        'out_0.005000_gab_-0.950000' u 1:(($6)/$1)  w points ls 5 title '\footnotesize{ENPT3}', \
#        'out_0.005000_gab_-0.990000' u 1:(($3)/$1)  w points ls 2 title '\footnotesize{RSPT2}', \
#        'out_0.005000_gab_-0.990000' u 1:(($4)/$1)  w points ls 3 title '\footnotesize{RSPT3}', \
#        'out_0.005000_gab_-0.990000' u 1:(($5)/$1)  w points ls 4 title '\footnotesize{ENPT2}', \
#        'out_0.005000_gab_-0.990000' u 1:(($6)/$1)  w points ls 5 title '\footnotesize{ENPT3}', \

        #'out_0.005000_gab_-0.900000' u 1:(($2)/$1)  w lines ls 1 title '\footnotesize{GP}', \
        #'out_0.005000_gab_-0.950000' u 1:(($2)/$1)  w lines ls 1 title '', \
        #'out_0.005000_gab_-0.990000' u 1:(($2)/$1)  w lines ls 1 title '', \

plot    \
        'out_0.005000_gab_-0.900000'  u 1:(scale*$3/$1):(scale*($4-($3-$4))/$1) w filledcurve fc rgb '#f5a7a3' title '', \
        'out_0.005000_gab_-0.900000'  u 1:(scale*$5/$1):(scale*($6-($5-$6))/$1) w filledcurve fc rgb '#94d19e' title '', \
        'out_0.005000_gab_-0.900000'  u 1:(scale*$4/$1)  w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'out_0.005000_gab_-0.900000'  u 1:(scale*$6/$1)  w linespoints ls 5 title '\footnotesize{ENPT3}', \
        'out_0.005000_gab_-0.950000'  u 1:(scale*$3/$1):(scale*($4-($3-$4))/$1) w filledcurve fc rgb '#f5a7a3' title '', \
        'out_0.005000_gab_-0.950000'  u 1:(scale*$5/$1):(scale*($6-($5-$6))/$1) w filledcurve fc rgb '#94d19e' title '', \
        'out_0.005000_gab_-0.950000'  u 1:(scale*$4/$1)  w linespoints ls 3 title '', \
        'out_0.005000_gab_-0.950000'  u 1:(scale*$6/$1)  w linespoints ls 5 title '', \
        'out_0.005000_gab_-0.990000'  u 1:(scale*$3/$1):(scale*($4-($3-$4))/$1) w filledcurve fc rgb '#f5a7a3' title '', \
        'out_0.005000_gab_-0.990000'  u 1:(scale*$5/$1):(scale*($6-($5-$6))/$1) w filledcurve fc rgb '#94d19e' title '', \
        'out_0.005000_gab_-0.990000'  u 1:(scale*$4/$1)  w linespoints ls 3 title '', \
        'out_0.005000_gab_-0.990000'  u 1:(scale*$6/$1)  w linespoints ls 5 title '', \

#plot    \
#        'out_0.005000_gab_-0.950000_bf48' u 1:(($5))  w linespoints ls 2 title '\footnotesize{RSPT2}', \
#        'out_0.005000_gab_-0.950000_bf48' u 1:(($6))  w linespoints ls 3 title '\footnotesize{RSPT3}', \
