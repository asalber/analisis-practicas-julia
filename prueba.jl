using Plots
using LaTeXStrings

secante(f, a, b) = x -> f(a) + (f(b) - f(a)) / (b - a) * (x - a)
# Definimos la función
f(x) = 3x
# Construimos las secantes
s1 = secante(f, 1, 2)
s2 = secante(f, 1, 1.5)
s3 = secante(f, 1, 1.1)
s4 = secante(f, 1, 1.001)
# Dibujamos las gráficas de la función y las secantes
plot(f, 0.5, 2.5, label = L"f(x)", linewidth = 2)
plot([s1, s2, s3, s4], 0.5, 2.5, label = ["Secante [1, 2]" "Secante [1, 1.5]" "Secante [1, 1.1]" "Secante [1, 1.001]"])