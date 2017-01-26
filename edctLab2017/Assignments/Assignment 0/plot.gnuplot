set output 'Graph Quiz 1.png'
set title "Transient analysis of Input, Vout 1 and Vout 2"
set xlabel "Time (S)"
set ylabel "Voltage (V)"


# set terminal pngcairo size 500,500 enhanced font 'Verdana,10'


set terminal jpeg 
set   autoscale                        # scale axes automatically
unset log                              # remove any log-scaling
unset label                            # remove any previous labels

set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically

set grid                               # display grid


# set key 0.01 100
#set label "Positions" at 0.003,260
#set arrow from 0.0028,250 to 0.003,280
#set xr [0.0:0.022]
#set xr [-5:5]
set ytic add(5.3, 11, 9, 0.63)
set datafile separator ","

plot 'plot.csv' using 1:2 title "Vout 1" with lines,  "" using 1:3 title "Vout 2" with lines, "" using 1:4 title "Input" with lines
