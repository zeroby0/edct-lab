#set terminal jpeg
#set output "my.jpeg"
set terminal pngcairo size 500,500 enhanced font 'Verdana,10'
set output 'iv.png'

set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "I-V characteristics of a resistor"
set datafile separator ","
set xlabel "Voltage (V)"
set ylabel "current (A)"
# set key 0.01 100
set grid
#set label "Positions" at 0.003,260
#set arrow from 0.0028,250 to 0.003,280
#set xr [0.0:0.022]
#set xr [-5:5]
plot 'iv.csv' using 1:2 title "R_1= 1-ohm" with lines,"" with points title "",using 1:3 title "R_2= 5-ohm" with lines,"" with points title "",using 1:4 title "R_3= 10-ohm" with lines,"" with points title ""
