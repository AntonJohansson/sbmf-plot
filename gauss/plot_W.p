set term epslatex;
set output 'imgs/gp_gauss_W_smaller_gaussian.eps';

set size 0.65,0.65;
set key at graph 0.99, 0.97;
set key spacing 1.5;

set format y '%.1f'

set style line 1 lw 3 lt 1       lc rgb '#000000'; # Potential
set style line 2 lw 3 lt 1       lc rgb '#AE7E05'; # SYM Energy
set style line 3 lw 3 lt 1       lc rgb '#164190'; # ASYM Energy

#set format y '%.3f'
set ylabel '$|\phi_0|^2/N$ (unitless)';
set xlabel '$x$ (a.\,u.)';
set xrange [-3:3];
set ytics 0,0.2,1
set yrange [0:1.1]

#set multiplot layout 1, 2

plot 'out_W_N4' u 1:3 w lines ls 2      title '\footnotesize{Symmetric state}', \
     'out_W_N4' u 1:4 w lines ls 3 dt 4 title '\footnotesize{Asymmetric state}', \

#plot 'out_W_N115' u 1:4 w lines ls 2 dt 4 title '\footnotesize{Symmetric state}', \
#     'out_W_N125' u 1:4 w lines ls 2 dt 4 title '\footnotesize{Symmetric state}', \
