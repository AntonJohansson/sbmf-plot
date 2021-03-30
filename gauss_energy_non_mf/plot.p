
# SYM
set style line 1    lw 3           lc rgb '#654800'
set style line 3    lw 3           lc rgb '#AE7E05'
set style line 5    lw 3           lc rgb '#D99E0D'

# ASYM
set style line 6    lw 3       lc rgb '#051F4E'; # ASYM Energy
set style line 8    lw 3       lc rgb '#164190'; # ASYM RSPT3
set style line 10   lw 3       lc rgb '#2D7598'; # ASYM ENPT3

# 2 gp default
# 4 gp random
# 6,7 rspt default
# 8,9 enpt default
# 10,11 rspt random
# 12,13 enpt random
set xrange [40:75]
plot \
    'out' u 1:(($7 )/$1) w linespoints,\
    'out' u 1:(($4 )/$1) w linespoints lc black, \
    'out' u 1:(($11)/$1) w linespoints, \
    'out' u 1:(($13)/$1) w linespoints
