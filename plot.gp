reset

set datafile separator ","
set title "compute-pi(25rounds)"
set xlabel 'N'
set ylabel 'time(sec)'
set terminal png size 1000,800 enhanced font 'Verdana,14'
set output 'plot.png'

plot "result_clock_gettime.csv" u 1:2  w l title "Baseline",\
"result_clock_gettime.csv" u 1:3 w l title "OpenMP with 2 threads",\
"result_clock_gettime.csv" u 1:4 w l title "OpenMP with 4 threads",\
 "result_clock_gettime.csv" u 1:5 w l title "AVX SIMD" ,\
 "result_clock_gettime.csv" u 1:6 w l  title "AVX SIMD + Loop unrolling" ,\



