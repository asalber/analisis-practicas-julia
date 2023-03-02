using Plots, SymPy
@vars x real=true
# f(x) = ℯ^(atan(x/2))
# plot(f)
# solve(diff(f,2))

f(x) = sin(2^x)
N(series(f(x), x, 0, 12).removeO()(1/2))


y(n) = n == 1 ? 2 : sqrt(y(n-1)/2)
sum([y(n) for n = 1:50])

f(x) = exp(-cos(x)/(x-Sym(pi)/2))
limit(f(x), x=>Sym(pi)/2)

# h(x) = (x+1)(ln(x+1)-ln(x+2))
# limit(h(x), x=>oo)
# plot(h, 1, 10)

g(x) = (2x)^(2/x)
plot(g)
N(solve(diff(g)))