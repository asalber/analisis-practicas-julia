using CairoMakie
using GLMakie
graphictype = "pdf"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)
size_inches = (8, 6)
size_pt = 100 .* size_inches
fig = Figure(resolution = size_pt, fontsize = 16)
ax = Axis3(fig[1,1])
xs = ys = range(-1,1,30)
f(x,y) = sqrt(1-x^2)
surface!(ax, xs, ys, f)
save("img/derivadas-funciones-varias-variables/curvas-nivel." * graphictype, fig, pt_per_unit = 1)
fig