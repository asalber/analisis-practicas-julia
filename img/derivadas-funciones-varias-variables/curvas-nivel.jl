using CairoMakie
graphictype = "pdf"
CairoMakie.activate!(type = graphictype)
myblue = RGBf(0.067,0.529,0.871)
myred = RGBf(1.0, 0.13, 0.32)
size_inches = (8, 6)
size_pt = 100 .* size_inches
fig = Figure(resolution = size_pt, fontsize = 16, backgroundcolor = RGBAf(0,0,0,0))
ax1 = Axis(fig[1,1], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
f(x,y) = sin(2x^2+y^2)/sqrt(x^2+y^2)
xs = ys = range(-2, 2; length=100)
Makie.contour!(ax1, xs, ys, f.(xs, ys'), labels = true, levels = -2:0.2:2)
g(x,y) = cos(x*y)/sqrt(x^2+1)
ax2 = Axis(fig[1,2], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
Makie.contour!(ax2, xs, ys, g.(xs, ys'), labels = true, levels = -2:0.2:4)
h(x,y) = cos(x)-sin(2y)
ax3 = Axis(fig[2,1], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
Makie.contour!(ax3, xs, ys, h.(xs, ys'), labels = true, levels = -2:0.2:2)
i(x,y) = sin(x^2)-cos(y^2)/2
xs = ys = range(-2, 2; length=100)
ax4 = Axis(fig[2,2], aspect = 1, xlabel = L"$x$", ylabel = L"$y$")
Makie.contour!(ax4, xs, ys, i.(xs, ys'), labels = true, levels = -2:0.2:2)
Label(fig[1, 1, Top()], "A", padding = (0, 0, 5, 0))
Label(fig[1, 2, Top()], "B", padding = (0, 0, 5, 0))
Label(fig[2, 1, Top()], "C", padding = (0, 0, 5, 0))
Label(fig[2, 2, Top()], "D", padding = (0, 0, 5, 0))
save("img/derivadas-funciones-varias-variables/curvas-nivel." * graphictype, fig, pt_per_unit = 1)
fig