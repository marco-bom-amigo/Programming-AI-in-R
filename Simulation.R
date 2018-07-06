library(plotly)

x <- rnorm(1000)
plot_ly( x    = x
       , type = "histogram"
       )

x <- rnorm(n = 10, mean = 20, sd = 2)
x
summary(x)

x <- seq(from = -5, to = 5, length.out = 1000)
y <- pnorm(x)
plot_ly( x = x, y = y )

x <- seq(from = -1, to = 3, length.out = 6)
y <- 0.5 + 2 * x
plot_ly( x = x, y = y, type = "area")

set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2 * x + e
plot_ly( x = x, y = y, type = "scatter")

rbinom(10, 10, prob = rep(.3, 10))
x = rbinom(50000, 10, prob = rep(.2,10))
plot_ly(x = x, type = "histogram") %>% layout(title ="Binomial com centro em 0.2")

set.seed(10)
x <- runif(n = 1000, min = 10, max = 20)
plot_ly(x = x, type = "histogram") %>% layout(title ="Distribuição uniforme entre 10 e 20")

dim(airquality)
summary(airquality)
head(airquality, n = 10)

set.seed(20)
linhas.idx    <- seq_len(nrow(airquality))
linhas.sample <- sample(linhas.idx, 10)
airquality[linhas.sample, ]