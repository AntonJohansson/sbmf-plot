
set macros;
TMARGIN = "set tmargin at screen 0.90; set bmargin at screen 0.55";
BMARGIN = "set tmargin at screen 0.55; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

set style line 1 lw 2           lc rgb '#00863E'
set style line 2 lw 2 ps 1.5 pt 6 dt 2    lc rgb '#E87E00'
set style line 3 lw 2 ps 1.5 pt 7         lc rgb '#E87E00'
set style line 4 lw 2 ps 1.5  dt 2    lc rgb '#037DBF'
set style line 5 lw 2 ps 1.5          lc rgb '#037DBF'
set style line 6 lw 2           lc rgb '#E83400'

set term epslatex;
set output 'imgs/gp_pt_ci.eps';

set size 1,1.15;

set multiplot layout 2,2;

set ylabel 'Energy (a.\,u.)';
set xtics ('' 4, '' 8, '' 12, '' 16, '' 20, '' 24, '' 28, '' 32, '' 36, '' 40, '' 44, '' 48, '' 52, '' 56, '' 60, '' 64, '' 68, '' 72, '' 76, '' 80);
unset xlabel;
set format y '%.3f'
set ytics border 1.575,0.0050,1.60;
set yrange [1.574:1.593];
set label 1 '$g = -1/6$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @LMARGIN;
plot \
    'out_g-0.17' u 1:2              w linespoints   ls 1    title '$E_\mathrm{GP}$', \
    'jakob/outgm1over6.dat' u 1:2   w lines         ls 6    title '$E_\mathrm{FCI}$', \
    'out_g-0.17' u 1:3              w linespoints   ls 2    title '$E_\mathrm{RSPT2}$', \
    'out_g-0.17' u 1:4              w linespoints   ls 3    title '$E_\mathrm{RSPT3}$', \
    'out_g-0.17' u 1:5              w linespoints   ls 4    title '$E_\mathrm{ENPT2}$', \
    'out_g-0.17' u 1:6              w linespoints   ls 5    title '$E_\mathrm{ENPT3}$';

set xtics ('' 4, '' 8, '' 12, '' 16, '' 20, '' 24, '' 28, '' 32, '' 36, '' 40, '' 44, '' 48, '' 52, '' 56, '' 60, '' 64, '' 68, '' 72, '' 76, '' 80);
unset xlabel;
set format y '%.3f'
set ytics border 2.375,0.005,2.39;
set yrange [2.374:2.391];
unset ylabel;
set label 1 '$g = 1/6$' at graph 0.4, 0.5;
unset key;
@TMARGIN; @RMARGIN;
plot \
    'out_g0.17' u 1:2               w linespoints   ls 1    title '$E_\mathrm{GP}$', \
    'jakob/outg1over6.dat' u 1:2    w lines         ls 6    title '$E_\mathrm{FCI}$', \
    'out_g0.17' u 1:3               w linespoints   ls 2    title '$E_\mathrm{RSPT2}$', \
    'out_g0.17' u 1:4               w linespoints   ls 3    title '$E_\mathrm{RSPT3}$', \
    'out_g0.17' u 1:5               w linespoints   ls 4    title '$E_\mathrm{ENPT2}$', \
    'out_g0.17' u 1:6               w linespoints   ls 5    title '$E_\mathrm{ENPT3}$';

set xlabel 'Basis size (a.\,u.)';
set ylabel 'Energy (a.\,u.)';
set format y '%.3f';
set xtics ('4' 4, '' 8, '' 12, '16' 16, '' 20, '' 24, '' 28, '32' 32, '' 36, '' 40, '' 44, '48' 48, '' 52, '' 56, '' 60, '64' 64, '' 68, '' 72, '' 76, '80' 80);
set format y '%.3f'
set ytics border 1.10,0.0250,1.17;
set yrange [1.09:1.17];
set label 1 '$g = -1/3$' at graph 0.4, 0.5;
unset key;
@BMARGIN; @LMARGIN;
plot \
    'out_g-0.33' u 1:2              w linespoints   ls 1    title '$E_\mathrm{GP}$', \
    'jakob/outgm1over3.dat' u 1:2   w lines         ls 6    title '$E_\mathrm{FCI}$', \
    'out_g-0.33' u 1:3              w linespoints   ls 2    title '$E_\mathrm{RSPT2}$', \
    'out_g-0.33' u 1:4              w linespoints   ls 3    title '$E_\mathrm{RSPT3}$', \
    'out_g-0.33' u 1:5              w linespoints   ls 4    title '$E_\mathrm{ENPT2}$', \
    'out_g-0.33' u 1:6              w linespoints   ls 5    title '$E_\mathrm{ENPT3}$';

set xlabel 'Basis size (a.\,u.)';
set xtics ('4' 4, '' 8, '' 12, '16' 16, '' 20, '' 24, '' 28, '32' 32, '' 36, '' 40, '' 44, '48' 48, '' 52, '' 56, '' 60, '64' 64, '' 68, '' 72, '' 76, '80' 80);
set format y '%.3f'
set ytics border 2.705,0.0250,2.760;
set yrange [2.70:2.765];
set key at screen 0.925, 1.075;
set key box;
set key maxrows 2;
#set key outside right;
set key spacing 1.5;
#set key at graph 1.0,0.975;
set label 1 '$g = 1/3$' at graph 0.4, 0.5;
unset ylabel;
@BMARGIN; @RMARGIN;
plot \
    'out_g0.33' u 1:2               w linespoints   ls 1    title '$E_\mathrm{GP}$', \
    'jakob/outg1over3.dat' u 1:2    w lines         ls 6    title '$E_\mathrm{FCI}$', \
    'out_g0.33' u 1:3               w linespoints   ls 2    title '$E_\mathrm{RSPT2}$', \
    'out_g0.33' u 1:4               w linespoints   ls 3    title '$E_\mathrm{RSPT3}$', \
    'out_g0.33' u 1:5               w linespoints   ls 4    title '$E_\mathrm{ENPT2}$', \
    'out_g0.33' u 1:6               w linespoints   ls 5    title '$E_\mathrm{ENPT3}$';
