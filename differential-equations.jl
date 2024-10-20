using SymPy
# Definimos la variables y las funciones simbólicas.
@syms x y f()
# Definimos el operador diferencial D para no escribir tanto.
D = Differential(x)
# Definimos la ecuación diferencial.
eq = 2x*f(x)*D(f)(x) + x^2 - f(x)^2
# Resolvemos la ecuación diferencial.
dsolve(eq, f(x))

# Dibujamos el campo de direcciones
using Plots, VectorFieldPlots
xs=-5.0:0.5:5.0
ys=-5.0:0.5:5.0
f1(x, y) = [1, (y^2 - x^2) / (2x * y)]
plot_vector_field(xs, ys, f1, scale = 0.2)

# Resolvemos la ecuación diferencial con la condición inicial f(1) = 1.
dsolve(eq, f(x), ics = Dict(f(1) => 1))



 