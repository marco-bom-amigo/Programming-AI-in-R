library(scales)

set.seed(1909)
x <- rnorm(15, mean = rep(1:3, each = 5), sd = 0.2)
y <- rnorm(15, mean = rep(c(1, 2), each = 5), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 1)
text(x + 0.05, y + 0.05, labels = as.character(1:15))

set.seed(1909)
obs_centro = 5
nclusters = 3
populacao = nclusters * obs_centro
x <- rnorm(populacao, mean = rep(1:nclusters, each = obs_centro), sd = 0.2)
y <- rnorm(populacao, mean = rep(c(1, 2), each = obs_centro), sd = 0.2)
plot(x, y, col = "blue", pch = 19, cex = 1)
text(x + 0.05, y + 0.05, labels = as.character(1:populacao))

plot(x=1:25, y = rep(1,25), pch=1:25)
text(x=1:25, y = rep(0.9,25), labels = as.character(1:25))

mydata <- data.frame(x, y)
modelo.kmean <- kmeans(x = mydata, centers = nclusters)
plot(x, y, col=modelo.kmean$cluster, pch=19, cex=2)
points(modelo.kmean$centers, col = 1:nclusters, pch = 3, cex =3, lwd = 2)

plot_ly(data = mydata,
        x = ~ x
        , y = ~ y,
        text = ~ y,
        type = 'scatter', mode ='markers')

mydata %>%
  mutate(cluster = modelo.kmean$cluster) %>% 
  plot_ly( data  = .
         , x     = ~ x
         , y     = ~ y
         , text  = ~ y
         , type  = 'scatter'
         , mode  ='markers'
         , color = ~ cluster
         )

mydata %>%
  mutate(cluster = modelo.kmean$cluster) %>% 
  plot_ly( data = .
         , x = ~ x
         , y = ~ y
         , z = ~ x * y
         , text = ~ y
         , type = 'scatter3d'
         , mode ='markers'
         , color = ~ cluster
         , size = rep(1, dim(mydata)[1])
         , sizes = c(3.0)
         )

rm(list = ls())

set.seed(12345)
dados <- matrix(rnorm(400), nrow = 40)
image(x = 1:10, y = 1:40, z = t(dados)[,40:1])
image(x = 1:10, y = 1:40, z = t(dados)[,1:40])

dados.ord =  matrix(sort(dados), nrow = 1)
image(x = 1:400, y = 1:1, z = t(dados.ord))

dados.ord =  matrix(sort(dados), nrow = 40)
image(x = 1:10, y = 1:40, z = t(dados.ord)[,40:1])

cores <- c("red", "orange", "yellow", "green", "blue")
image(x = 1:10, y = 1:40, z = t(dados)[,40:1], col = cores)

cores <- c("red", "orange", "yellow", "green", "blue")
image(x = 1:10, y = 1:40, z = t(dados.ord)[,40:1], col = cores)

cores = colorRampPalette(c("red", "yellow", "lightgreen"))(400)
image(x = 1:10, y = 1:40, z = t(dados)[,40:1], col = cores)

colorPallete1  = c("red", "yellow", "green")
plot(x=seq_along(colorPallete1), col=colorPallete1, pch=19, cex=10)

gradiente1 = colorRampPalette(colorPallete1)(n = 30)
plot(x=seq_along(gradiente1), col=gradiente1, pch=19, cex=10)

colorPallete2  = c("#f8696b", "#ffeb84", "#63be7b")
plot(x=seq_along(colorPallete2), col=colorPallete2, pch=19, cex=10)

gradiente2 = colorRampPalette(colorPallete2)(n = 30)
plot(x=seq_along(gradiente2), col=gradiente2, pch=19, cex=10)

cores <- c("red", "orange", "yellow", "green", "blue")
plot(x=seq_along(cores), col=cores, pch=19, cex=10)

gradiente3 = colorRampPalette(cores)(n = 30)
plot(x=seq_along(gradiente3), col=gradiente3, pch=19, cex=10)

show_col(gradiente2, labels = F)
