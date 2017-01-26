set output 'Graph Input and Output.png'
set title "Fullwave rectifier Input and Output"
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

set ytic add(22.5)
set datafile separator ","

plot 'Input vs output.csv' using 1:2 title "Input" with lines,  "" using 1:3 title "Output" with lines
