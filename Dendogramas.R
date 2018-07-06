library(cluster)

x <- rbind( matrix(rnorm(100, mean = 0.5, sd = 4.5), ncol = 2)
          , matrix(rnorm(100, mean = 0.5, sd = 0.1), ncol = 2)
          )

colnames(x) <- c("x", "y")
modelo1 <- pam(x, 2)
modelo2 <- kmeans(x, 2)

par(mfrow = c(1,2))
plot(x, col = modelo1$clustering, main="Clusters k-Medoids")
points(modelo1$medoids, col = 1:3, pch = 10, cex = 4)

plot(x, col = modelo2$cluster, main="Clusters k-Means")
points(modelo2$centers, col = 1:3, pch = 10, cex = 4)

set.seed(1909)
x <- rnorm(15, mean = rep(1:3, each = 5), sd = 0.2)
y <- rnorm(15, mean = rep(c(1, 2), each = 5), sd = 0.2)
mydata <- data.frame(x, y)
dist(mydata[1:7,])
dist(mydata[1:7,], method = "manhattan")

modelo.hc <- hclust(dist(mydata))

plot( modelo.hc
    , main = "Dendrograma simples"
    , xlab = "Observações"
    , sub  = ""
    , ylab = "Distância"
    , las = 1
    )

set.seed(12345)
dados <- matrix(rnorm(400), nrow = 40)
heatmap(dados)

library(dendextend)
modelo.dendro <- as.dendrogram(modelo.hc)
plot_dendro(modelo.dendro, xmin = -0.05 ) %>% 
  hide_legend() 

plot(dendextend::as.phylo.dendrogram(modelo.hc), type = "fan", 
     label.offset = 0.05, cex = 1.2)

set.seed(12345)
dados <- matrix(rnorm(400), nrow = 40)
heatmap(dados)

