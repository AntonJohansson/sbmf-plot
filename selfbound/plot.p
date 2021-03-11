#set term epslatex;
#set output 'imgs/selfbound.eps';

set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

set style line 1 lw 2           lc rgb '#00863E'
set style line 2 lw 2   dt 2    lc rgb '#E87E00'
set style line 3 lw 2           lc rgb '#E87E00'
set style line 4 lw 2   dt 2    lc rgb '#037DBF'
set style line 5 lw 2           lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'

set size 1,1.15;

set multiplot layout 2,2;
scale = 100

set xrange [0:500]
set format y '%.3f'

set ylabel 'Energy (a.\,u.)';
unset xlabel;
set format y '%.3f'
set label 1 '$\omega = 0.025$' at graph 0.4, 0.5;
set format x ''
unset key;
@TMARGIN; @LMARGIN;
plot \
         'out_0.025000' u 1:(scale*($3-$2)/$2)  w linespoints ls 2  title '$E_\mathrm{RSPT2}$', \
         'out_0.025000' u 1:(scale*($4-$2)/$2)  w linespoints ls 3  title '$E_\mathrm{RSPT3}$', \
         'out_0.025000' u 1:(scale*($5-$2)/$2)  w linespoints ls 4  title '$E_\mathrm{ENPT2}$', \
         'out_0.025000' u 1:(scale*($6-$2)/$2)  w linespoints ls 5  title '$E_\mathrm{ENPT3}$';

unset xlabel;
unset ylabel;
unset key;
set label 1 '$\omega = 0.05$' at graph 0.4, 0.5;
@TMARGIN; @RMARGIN;
plot \
         'out_0.050000' u 1:(scale*($3-$2)/$2)  w linespoints ls 2  title '$E_\mathrm{RSPT2}$', \
         'out_0.050000' u 1:(scale*($4-$2)/$2)  w linespoints ls 3  title '$E_\mathrm{RSPT3}$', \
         'out_0.050000' u 1:(scale*($5-$2)/$2)  w linespoints ls 4  title '$E_\mathrm{ENPT2}$', \
         'out_0.050000' u 1:(scale*($6-$2)/$2)  w linespoints ls 5  title '$E_\mathrm{ENPT3}$';

set xlabel 'Basis size (a.\,u.)';
set ylabel 'Energy (a.\,u.)';
set format y '%.3f'
set label 1 '$\omega = 0.1$' at graph 0.4, 0.5;
set format x '%.0f'
unset key;
@BMARGIN; @LMARGIN;
plot \
         'out_0.100000' u 1:(scale*($3-$2)/$2)  w linespoints ls 2  title '$E_\mathrm{RSPT2}$', \
         'out_0.100000' u 1:(scale*($4-$2)/$2)  w linespoints ls 3  title '$E_\mathrm{RSPT3}$', \
         'out_0.100000' u 1:(scale*($5-$2)/$2)  w linespoints ls 4  title '$E_\mathrm{ENPT2}$', \
         'out_0.100000' u 1:(scale*($6-$2)/$2)  w linespoints ls 5  title '$E_\mathrm{ENPT3}$';

set xlabel 'Basis size (a.\,u.)';
set format y '%.3f'
set key at screen 0.925, 1.075;
set key box;
set key maxrows 2;
#set key outside right;
set key spacing 1.5;
#set key at graph 1.0,0.975;
set label 1 '$\omega = 0.15$' at graph 0.4, 0.5;
unset ylabel;
@BMARGIN; @RMARGIN;
plot \
         'out_0.150000' u 1:(scale*($3-$2)/$2)  w linespoints ls 2  title '$E_\mathrm{RSPT2}$', \
         'out_0.150000' u 1:(scale*($4-$2)/$2)  w linespoints ls 3  title '$E_\mathrm{RSPT3}$', \
         'out_0.150000' u 1:(scale*($5-$2)/$2)  w linespoints ls 4  title '$E_\mathrm{ENPT2}$', \
         'out_0.150000' u 1:(scale*($6-$2)/$2)  w linespoints ls 5  title '$E_\mathrm{ENPT3}$';
