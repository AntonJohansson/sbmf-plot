set term epslatex size 5.5,3.5
set output 'imgs/gp_pt_sweep_G_enpt3.eps';

set macros;
LMARGIN = "set lmargin at screen 0.15;  set rmargin at screen 0.50";
RMARGIN = "set lmargin at screen 0.64;  set rmargin at screen 0.95";
TMARGIN = "set tmargin at screen 0.79;  set bmargin at screen 0.2";

set size 1,0.8

set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 lw 3           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 3           lc rgb '#01400C'

set style line 1 lw 2           lc rgb '#00863E'
#set style line 2 lw 2   dt 2   lc rgb '#E87E00'
#set style line 3 lw 2          lc rgb '#E87E00'
#set style line 4 lw 2   dt 2   lc rgb '#037DBF'
#set style line 5 lw 2          lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'
set style line 7 lw 2           lc rgb '#444444'
set style line 8 lw 1           lc rgb '#BBBBBB'

set format y '%.1f';

set key spacing 1.5;

set xtics -2,1,2
scale = 100
#set yrange [-1:19]
#set ytics -4,1,0
set mytics 2

set key at graph 0.75, 0.95

set multiplot layout 1,2

set ylabel '$|(E_\mathrm{ENPT3} - E_\mathrm{GP})/E_\mathrm{GP}|$ (\%)'
set ylabel offset 0,5
set xlabel '$\lambda$ (unitless)';

set xrange [-1.4:2.3];
set yrange [-0.025:0.2]
set tmargin at screen 0.35;  set bmargin at screen 0.20;
set lmargin at screen 0.15;  set rmargin at screen 0.475;
set object 1 rect from screen 0.235,0.47 to screen 0.445,0.51 lw 1 lc rgb '#222222'
set arrow 1 from screen 0.19675,0.416 to screen 0.235,0.47 lc rgb  '#888888' nohead back
set arrow 2 from screen 0.15,0.35 to screen 0.17125,0.38 lc rgb  '#888888' nohead back
set arrow 3 from screen 0.475,0.35 to screen 0.445,0.47 lc rgb '#888888' nohead back
set ytics 0,0.2,0.2
set format y '%.1f'
plot 0 w lines ls 7 title '', \
     'out' u 1:(abs(scale*$10/$2)) w linespoints lw 3 lc rgb '#01400C' ps 1.25 pt 7   notitle


unset ylabel
unset xlabel
set xrange [-2.4:2.4];
set yrange [-0.5:4.5]
set tmargin at screen 0.79;  set bmargin at screen 0.45;
set lmargin at screen 0.15;  set rmargin at screen 0.46;
set key at graph 0.85, 0.70
set ytics 0,2,4
set format y '%.0f'
plot 0 w lines ls 7 title '', \
    'out' u 1:(abs(scale*$10/$2)) w linespoints lw 3 lc rgb '#01400C' ps 1.25 pt 7        title '\footnotesize{ENPT3}';

unset object 1

set yrange [-1:18]

set ylabel '$|(E_\mathrm{MBPT} - E_\mathrm{MBPT*})|$ (a.\,u. ${\times 10^{-2}}$)'
set xlabel '$\lambda$ (unitless)';
set ytics 0,4,18

set format y '%.0f'
set key at graph 0.80, 0.95
set key samplen 2
@RMARGIN; @TMARGIN
plot 0 w lines ls 7 title '', \
     'out' u 1:(scale*abs(($6-$5) ))  w linespoints lw 3 lc rgb '#d6625c' ps 1.25 pt 4 dt 2     title '\scriptsize{RSPT2,1}', \
     'out' u 1:(scale*abs(($7-$6) ))  w linespoints lw 3 lc rgb '#890F08' ps 1.25 pt 5          title '\scriptsize{RSPT3,2}', \
     'out' u 1:(scale*abs(($9-$8) ))  w linespoints lw 3 lc rgb '#70c27e' ps 1.25 pt 6 dt 2     title '\scriptsize{ENPT2,1}', \
     'out' u 1:(scale*abs(($10-$9)))  w linespoints lw 3 lc rgb '#01400C' ps 1.25 pt 7          title '\scriptsize{ENPT3,2}'
