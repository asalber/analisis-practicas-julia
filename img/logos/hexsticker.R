library(dplyr)
library(magick)
library(hexSticker)
library(colorspace)

# Colores
color1 <- "#00BFC4"
color2 <- "#F8766D"
color3 <- "#7CAE00"
color4 <- "#C77CFF"
color5 <- "#1187DE"
color6 <- "#FF2152"
color7 <- "#03BF3D"
color8 <- "#DB1286"

# Carga de la imagen
img <- image_read("img/logos/infinito-julia.png")
# Modificación de la imagen
# img <- img %>%
# image_convert("png") %>%
# image_resize("1080 x 200")%>%
# image_fill(color="#062047", point="+45") %>%
# image_annotate("d?ta", size=38, location = "+47+58", color="black")

# Creación del hex sticker
sticker <- sticker(img,
    package = "Análisis\nPrácticas", p_size = 17, p_y = 1,
    s_x = 1, s_y = 1,
    s_width = 1.5, s_height = 1.5,
    h_fill = color6, h_color = darken(color6, 0.2),
    url = "aprendeconalf.es",
    u_size = 9,
    u_color = "white",
    filename = "img/logos/sticker.png"
)

plot(sticker)
