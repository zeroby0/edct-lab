# Gnuplot script file for plotting data in file "move.dat". If it does not
# exists then it won't work
# This file is called   move.gnuplot

set terminal jpeg 
set output "my.jpeg"

set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set title "I-V characteristics of a resistor"
set xlabel "Voltage (V)"
set ylabel "Current (A)"
# set key 0.01 100
#set label "Positions" at 0.003,260
#set arrow from 0.0028,250 to 0.003,280
#set xr [0.0:0.022]
set xr [0:10.0]
set yr [0:10.0]
plot 'resistor.dat' using 1:2 title 'Resistor'

#pause 50
