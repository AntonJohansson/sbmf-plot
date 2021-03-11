set term epslatex size 5.5,3.5
set output 'imgs/gp_pt_sweep_G.eps';

set macros;
LMARGIN = "set lmargin at screen 0.15;  set rmargin at screen 0.45";
RMARGIN = "set lmargin at screen 0.65;  set rmargin at screen 0.95";
TMARGIN = "set tmargin at screen 0.70;  set bmargin at screen 0.2";

set size 1,0.8

set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 lw 3           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 3           lc rgb '#01400C'

set style line 1 lw 2           lc rgb '#00863E'
#set style line 2 lw 2   dt 2    lc rgb '#E87E00'
#set style line 3 lw 2           lc rgb '#E87E00'
#set style line 4 lw 2   dt 2    lc rgb '#037DBF'
#set style line 5 lw 2           lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'
set style line 7 lw 2           lc rgb '#444444'
set style line 8 lw 1           lc rgb '#BBBBBB'

set multiplot layout 1,2

set format y '%.1f';

set key spacing 1.5;

set xtics -2,1,2
set xrange [-2.4:2.4];
scale = 100
set yrange [-0.0425*scale:0.002*scale]
set ytics -4,1,0

set key at graph 0.9, 0.65

set ylabel '$(E_\mathrm{MBPT} - E_\mathrm{GP})/E_\mathrm{GP}$ (\%)';
set xlabel '$\lambda$ (unitless)';


@TMARGIN; @LMARGIN
plot 0 w lines ls 7 title '', \
     'out' u 1:(scale*$5/$2) w linespoints ls 2 title '\footnotesize{RSPT2}', \
     'out' u 1:(scale*$6/$2) w linespoints ls 3 title '\footnotesize{RSPT3}', \
     'out' u 1:(scale*$7/$2) w linespoints ls 4 title '\footnotesize{ENPT2}', \
     'out' u 1:(scale*$8/$2) w linespoints ls 5 title '\footnotesize{ENPT3}';

set key at graph 0.75, 0.40;

#set yrange [-0.2*10:0.01*10];
#set ylabel 'Energy diff. to $E_\mathrm{GP}$ (a.\,u.) $^{\times 10}$';
unset yrange
set ylabel '$(E_\mathrm{MBPT2} - E_\mathrm{MBPT3})/E_\mathrm{MBPT3}$ (\%)';
#set ylabel offset 1,0
set format y '%.1f';

set yrange [-0.59:0.25]
set ytics -0.6,0.2,0.2
set mytics 2

set style line 3 lw 3           lc rgb '#162E53'
set style line 5 lw 3           lc rgb '#DB9C00'

@TMARGIN; @RMARGIN
#plot 0 w lines ls 7 title '', \
#     'out' u 1:(10*$5) w linespoints ls 2 title '$E_\mathrm{RSPT2}$', \
#     'out' u 1:(10*$6) w linespoints ls 3 title '$E_\mathrm{RSPT3}$', \
#     'out' u 1:(10*$7) w linespoints ls 4 title '$E_\mathrm{ENPT2}$', \
#     'out' u 1:(10*$8) w linespoints ls 5 title '$E_\mathrm{ENPT3}$';
plot 0 w lines ls 7 title '', \
     'out' u 1:((($6-$5)/$6)) w linespoints ls 3 title '\footnotesize{RSPT}', \
     'out' u 1:((($8-$7)/$8)) w linespoints ls 5 title '\footnotesize{ENPT}'
