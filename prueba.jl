using Plots, SymPy
@vars x real=true
# f(x) = ℯ^(atan(x/2))
# plot(f)
# solve(diff(f,2))


# x(n) = n == 1 ? 2 : sqrt(x(n-1)/2)
# sum([x(n) for n = 1:50])

#f(x) = tan(x)-1/(cos(x)-sin(x))
#limit(f(x), x=>Sym(pi)/4)

f(x) = x^3/(x-1)^2
limit(f(x)/x, x=>oo)
limit(f(x)-x, x=>oo)
