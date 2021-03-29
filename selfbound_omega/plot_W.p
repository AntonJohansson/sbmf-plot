set yrange [0:0.2]
unset key
plot    'frange/out_f-0.850000_W_w0.005000' u 1:2 w lines, \
        'frange1.5-3/out_f-3.000000_W_w0.005000' u 1:(10*$3) w lines ls 2, \
