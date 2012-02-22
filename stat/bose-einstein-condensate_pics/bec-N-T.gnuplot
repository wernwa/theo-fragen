set terminal fig
set output "bec-N-T.fig"
#set format y "$%g$"
#set format x "$%.2f$"
set title '$\frac{N_0}{N}$ über $\frac{T}{T_C}$'
set samples 100000
unset key

set style line 1 lc rgb "blue" lw 3

f(x) = x < 1 ? 1-sqrt(x)**3 : 0.001

plot [0:2] f(x) ls 1
