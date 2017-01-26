#set terminal jpeg
#set output "my.png"
#set terminal postscript enhanced
#set terminal postscript eps enhanced color font 'Helvetica,10'
#set output 'introduction.eps'
set terminal pngcairo size 500,500 enhanced font 'Verdana,10'
set output 'crlow.png'


set   autoscale                        # scale axes automatically
set log                          # remove any log-scaling
unset label                            # remove any previous labels
set xtic auto                          # set xtics automatically
set ytic auto                          # set ytics automatically
set grid
set title "RL Low-Pass Filter Circuit"

set datafile separator ","
set xlabel "Frequency (Hz)"
set ylabel "V_{out}/v_{in}"
# set key 0.01 100
set label 1 "  \n  f_{3dB}" at 3800,0.7 point pointtype 3
set xtics rotate by -45
set xtic add(3800)
set ytic add(0.2,0.7)
#set label "Positions" at 0.003,260
#set arrow from 1.16 to 1.16,0.7
#set xr [0.18:]
set yr [0.2:1.2]
plot 'lrlowpass.csv' using 1:2 title "" smooth csplines,
#\
	#'lcrsinewave.csv' using (16600-$1):2 title "" smooth csplines
