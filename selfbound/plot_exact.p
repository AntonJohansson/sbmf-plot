set term epslatex;
set output 'imgs/selfbound_exact.eps';

set style line 1 lw 3   dt 2                    lc rgb '#555555'
set style line 2 lw 3   dt 2                    lc rgb '#EE706A'
set style line 3 lw 4           pt 7 ps 1.5     lc rgb '#890F08'
set style line 4 lw 3   dt 2                    lc rgb '#4E9D5C'
set style line 5 lw 4           ps 1.5          lc rgb '#01400C'
set style line 7 lw 3                           lc rgb '#444444'

set size 0.75,0.75

scale = 1000
set xrange [-0.25:5.25]
set yrange [-0.00025*scale:0.001125*scale]
#set ytics 4.7,0.3,5.6
set format y '%.1f'

set ylabel '$\mathcal{E}/2n$ (a.\,u.)';
set xlabel '$n$ ($\mathrm{m}^{-1}$)';

set key spacing 1.5
set key at graph 0.35, 0.85

set label 1 front '\textcolor{dred}{\footnotesize{$\gamma = -0.90$}}' at graph 0.51, 0.75
set label 2 front '\textcolor{dgreen}{\footnotesize{$\gamma = -0.95$}}' at graph 0.57, 0.45
set label 3 front '\textcolor{dblue}{\footnotesize{$\gamma = -0.99$}}' at graph 0.63, 0.15
set label 4 front '$\times 10^{-3}$' at screen 0.10, 0.74

plot    \
    'out_exact' u 1:(scale*$2/2) w lines lw 4 lc rgb '#890F08' notitle, \
    'out_exact' u 1:(scale*$3/2) w lines lw 4 lc rgb '#01400C' notitle, \
    'out_exact' u 1:(scale*$4/2) w lines lw 4 lc rgb '#1e1b64' notitle
