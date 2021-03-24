set macros;
TMARGIN = "set tmargin at screen 1.00; set bmargin at screen 0.60";
BMARGIN = "set tmargin at screen 0.60; set bmargin at screen 0.20";
LMARGIN = "set lmargin at screen 0.15; set rmargin at screen 0.49";
RMARGIN = "set lmargin at screen 0.61; set rmargin at screen 0.95";

set style line 2 lw 3   dt 2    lc rgb '#EE706A'
set style line 3 lw 3           lc rgb '#890F08'
set style line 4 lw 3   dt 2    lc rgb '#4E9D5C'
set style line 5 lw 3           lc rgb '#01400C'
set style line 7 lw 3           lc rgb '#444444'

scale = 1000

set term epslatex;
set output 'imgs/gp_pt_ci_rel.eps';

set size 1,1.2;

set multiplot layout 2,2;

set ylabel '$(E_\mathrm{MBPT} - E_\mathrm{FCI})/E_\mathrm{FCI}$ (\textperthousand)';
set ylabel offset 0,-4
set xtics ('' 4, '' 16, '' 32, '' 48, '' 64, '' 80)
set xrange [-1:85]
set yrange [-0.09:0.75]
set ytics 0,0.3,0.6
set mytics 2
unset xlabel;
set format y '%.1f'
set label 1 '$\lambda = -0.5$' at graph 0.4, 0.70;
unset key;
@TMARGIN; @LMARGIN;
plot    0 w lines ls 7 title '', \
        'reldata/out_g-0.17' u 1:(scale*($3-$7)/$7) w linespoints ls 2 title '\footnotesize{RSPT2}', \
        'reldata/out_g-0.17' u 1:(scale*($4-$7)/$7) w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'reldata/out_g-0.17' u 1:(scale*($5-$7)/$7) w linespoints ls 4 title '\footnotesize{ENPT2}', \
        'reldata/out_g-0.17' u 1:(scale*($6-$7)/$7) w linespoints ls 5 title '\footnotesize{ENPT3}';

set xtics ('' 4, '' 16, '' 32, '' 48, '' 64, '' 80)
set yrange [-0.47:0.1]
set ytics -0.4,0.2,0
set mytics 2
unset xlabel;
unset ylabel;
unset key;
set label 1 '$\lambda = 0.5$' at graph 0.4, 0.35;
@TMARGIN; @RMARGIN;
plot    0 w lines ls 7 title '', \
        'reldata/out_g0.17' u 1:(scale*($3-$7)/$7) w linespoints ls 2 title '\footnotesize{RSPT2}', \
        'reldata/out_g0.17' u 1:(scale*($4-$7)/$7) w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'reldata/out_g0.17' u 1:(scale*($5-$7)/$7) w linespoints ls 4 title '\footnotesize{ENPT2}', \
        'reldata/out_g0.17' u 1:(scale*($6-$7)/$7) w linespoints ls 5 title '\footnotesize{ENPT3}';

set xlabel 'Basis size (unitless)';
set xtics ('4' 4, '16' 16, '32' 32, '48' 48, '64' 64, '80' 80)
set yrange [-1:8.5]
set ytics 0,3,9
set mytics 2
set label 1 '$\lambda = -1$' at graph 0.4, 0.70;
unset key;
@BMARGIN; @LMARGIN;
plot    0 w lines ls 7 title '', \
        'reldata/out_g-0.33' u 1:(scale*($3-$7)/$7) w linespoints ls 2 title '\footnotesize{RSPT2}', \
        'reldata/out_g-0.33' u 1:(scale*($4-$7)/$7) w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'reldata/out_g-0.33' u 1:(scale*($5-$7)/$7) w linespoints ls 4 title '\footnotesize{ENPT2}', \
        'reldata/out_g-0.33' u 1:(scale*($6-$7)/$7) w linespoints ls 5 title '\footnotesize{ENPT3}';

#set xtics ('4' 4, '' 8, '' 12, '16' 16, '' 20, '' 24, '' 28, '32' 32, '' 36, '' 40, '' 44, '48' 48, '' 52, '' 56, '' 60, '64' 64, '' 68, '' 72, '' 76, '80' 80);
set xtics ('4' 4, '16' 16, '32' 32, '48' 48, '64' 64, '80' 80)
set yrange [-3.2:1.18]
set ytics -2.4,1.2,1.2
set mytics 2

set key at screen 0.8, 1.19;
set key box;
set key maxrows 2;
set key spacing 1.5;

set label 1 '$\lambda = 1$' at graph 0.4, 0.30;
unset ylabel;
@BMARGIN; @RMARGIN;
plot    0 w lines ls 7 title '', \
        'reldata/out_g0.33' u 1:(scale*($3-$7)/$7) w linespoints ls 2 title '\footnotesize{RSPT2}', \
        'reldata/out_g0.33' u 1:(scale*($4-$7)/$7) w linespoints ls 3 title '\footnotesize{RSPT3}', \
        'reldata/out_g0.33' u 1:(scale*($5-$7)/$7) w linespoints ls 4 title '\footnotesize{ENPT2}', \
        'reldata/out_g0.33' u 1:(scale*($6-$7)/$7) w linespoints ls 5 title '\footnotesize{ENPT3}';
