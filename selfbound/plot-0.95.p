set term epslatex;
set output 'imgs/selfbound-0.95.eps';

set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

#lc rgb '#890F08'
#lc rgb '#01400C'

set style line 3 lw 4           pt 7 ps 1.5    lc rgb '#666666'
set style line 5 lw 4           ps 1.5         lc rgb '#101010'

set size 0.75,0.75

#set multiplot layout 2,2;

scale = 1000
set xrange [0:3]
#set yrange [0.5*4.65:0.5*6.0]
#set xtics 0,100,300
set mytics 2
set ytics 2.4, 0.1, 3
set yrange [2.39:2.7]
set format y '%.2f'

set ylabel '$E/2N$ (a.\,u. $\times 10^{-3}$)';
set xlabel '$n$ (m$^{-1}$)';

set key spacing 1.5
set key at graph 0.55, 0.95
#set key outside right
#set key box

set label 1 front '\textcolor{dgreen}{\footnotesize{$\gamma = -0.95$}}'   at graph 0.41, 0.19
#set label 2 front '\textcolor{dgreen}{\footnotesize{$\gamma = -0.95$}}' at graph 0.48, 0.41
#set label 3 front '\textcolor{dblue}{\footnotesize{$\gamma = -0.99$}}'  at graph 0.55, 0.23
#set label 4 front '$\times 10^{-3}$' at screen 0.10, 0.99

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
        'out_exact' u 1:(2.48 + scale*$3/2) w lines lw 4 lc rgb '#01400C' title 'analytical', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$3/$1):(0.5*scale*$4/$1) w filledcurve fc rgb '#b8e0be' title '', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$5/$1):(0.5*scale*$6/$1) w filledcurve fc rgb '#5fb96d' title '', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$4/$1)  w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'out_0.005000_gab_-0.950000'  u ($1*$7*$7):(0.5*scale*$6/$1)  w linespoints ls 5 title '\footnotesize{ENPT3}', \
        #'out_0.005000_gab_-0.950000'  u 1:(0.5*scale*$3/$1):(0.5*scale*($4-($3-$4))/$1) w filledcurve fc rgb '#b8e0be' title '', \
        #'out_0.005000_gab_-0.950000'  u 1:(0.5*scale*$5/$1):(0.5*scale*($6-($5-$6))/$1) w filledcurve fc rgb '#5fb96d' title '', \
        #'out_0.005000_gab_-0.990000'  u 1:(0.5*scale*$3/$1):(0.5*scale*($4-($3-$4))/$1) w filledcurve fc rgb '#cbcae8' title '', \
        #'out_0.005000_gab_-0.990000'  u 1:(0.5*scale*$5/$1):(0.5*scale*($6-($5-$6))/$1) w filledcurve fc rgb '#8583c9' title '', \
        #'out_0.005000_gab_-0.990000'  u 1:(0.5*scale*$4/$1)  w linespoints ls 3 title '', \
        #'out_0.005000_gab_-0.990000'  u 1:(0.5*scale*$6/$1)  w linespoints ls 5 title '', \

#plot    \
#        'out_0.005000_gab_-0.950000_bf48' u 1:(($5))  w linespoints ls 2 title '\footnotesize{RSPT2}', \
#        'out_0.005000_gab_-0.950000_bf48' u 1:(($6))  w linespoints ls 3 title '\footnotesize{RSPT3}', \
