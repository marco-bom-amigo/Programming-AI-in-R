getwd()
caminho <- getwd()
setwd(dir = caminho)
save.image("arquivo")
save.image(file = "variaveis", version = 1)

rm(list = ls())
load("arquivo")
rm(list = ls())
load("variaveis")
rm(list = ls())

var1  <- 1
var2  <- 2
var3  <- 3
var4  <- 4
var5  <- 5
var6  <- 6
var7  <- 7
var8  <- 8
var9  <- 9
var10 <- 10

a <- choose.files()
save(var1, var2, var3, var4, var5, var6, var7, var8, var9, var10, file = a)
rm(list = ls())
load("variables.RData")
rm(list = ls())

install.packages("abc.data")
library("abc.data")
require("abc.data")
detach("package:abc.data", unload = T)
remove.packages("abc.data")

install.packages("stringr")
install.packages("data.table")
install.packages("dplyr")
install.packages("ggplot2")
install.packages("h2o")
install.packages("knitr")
install.packages("plotly")
install.packages("plyr")
install.packages("tidyr")
install.packages("readxl")
install.packages("openxlsx")
install.packages("sqldf")
install.packages("dt")
install.packages("zoo")
install.packages("lubridate")
install.packages("rmarkdown")
install.packages("shiny")
install.packages("swirl")
install.packages("xlsx")
install.packages("rjson")
install.packages("devtools")
install.packages("curl")
install.packages("visNetwork")

ggplot2::qplot(1)

var_logical <- TRUE # TRUE, FALSE, T, F
var_integer <- 45L
var_numeric <- 45.6
var_character <- "Aula inicial"

class(var_logical)

a <- 1.3 + 2.45i
b <- sqrt( as.complex(-1) )
b ** 2
b ** 3
b ** 4

is.integer(b)
is.numeric(b)
is.character(b)

as.integer(var_integer)
as.numeric(var_integer)
as.character(var_integer)

rm(list = ls())

vet_int <- c(1, 2, 3, 10)
vet_bool <- c(T, T, T, F)
vet_str <- c("F", "I", "A", "P")
vet_num <- c( 12.1, 14, 78.5, F)

vet_int <- c(vet_int, -1, vet_int)
vet_bool <- c(F, vet_bool)
vet_str <- c(10, vet_str, vet_int)

sort(vet_int)
sum(vet_int)
min(vet_int)
max(vet_int)
mean(vet_int)
median(vet_int)
quantile(vet_int)

matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3)
array(1:18, dim = c(3, 3, 2))

sexo <- c("Masc","Fem","Fem","Masc","Masc")
fac_sexo <- factor(sexo)
fac_sexo

temperatura <- c("alta", "baixa", "alta", "baixa", "media")
temperaturaf <- factor(temperatura, order = T, levels = c("baixa", "media", "alta"))
temperaturaf

rm(list = ls())

vetA <- 1:10
matA <- matrix(1:9, ncol = 3)
dfA  <- mtcars[1:10,]
minha_lista <- list(vetA, matA, dfA)

rm(list = ls())

semana.int = c(1,2,3,4,5,6,7)
semana.str = c("Domingo", "Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado")

names(semana.int) <- semana.str
semana.int

vetor_a <- c(1, 2, 3)
vetor_b <- c(4, 5, 6)
vetor_total = vetor_a + vetor_b
vetor_total

bovespa <- c(0, 504, -50, 259, -120, 240, 0)
nasdaq <- c(0, -24, -250, 100, -350, 10, 0)
total.semana <- bovespa + nasdaq
names(total.semana) <- semana.str
total.semana
sort(total.semana)

plot( total.semana
    , type = 'l'
    , xaxt ="n"
    , xlab = "Dias da semana"
    , ylab = "Lucro/Prejuízo"
    , main = "Lucro por dia"
    )
axis( side   = 1
    , at     = semana.int
    , labels = semana.str
    )
points( total.semana
      , col = "red"
      , pch = 20
      )

plot( sort(total.semana)
    , type = 'l'
    , xaxt = "n"
    , xlab = "Dias da semana"
    , ylab = "Lucro/Prejuízo"
    , main = "Lucro por dia ordenado"
    )
axis( side   = 1
    , at     = semana.int
    , labels = semana.str[c(5, 3, 1, 7, 6, 4, 2)]
    )
points( sort(total.semana)
      , col = "red"
      , pch = 20
      )

rm(list=ls())
vet01 = c(1,2,3,4,5,6,7,8,9)
matrix( vet01 , nrow = 3)
matrix( vet01 , nrow = 3, byrow = T)
matrix( vet01 , nrow = 6, byrow = T, ncol = 3)

nova_esperanca       <- c(460.998, 314.4)
imperio_contra_ataca <- c(290.475, 247.900)
retorno_de_jedi      <- c(309.306, 165.8)
trilogia             <- c(nova_esperanca, imperio_contra_ataca, retorno_de_jedi)
star_wars            <- matrix(trilogia, ncol = 2, byrow = T)
star_wars
colnames(star_wars) <- c("EUA", "Mundo-EUA")
rownames(star_wars) <- c("Uma nova esperança", "O império contra ataca", "O retorno de jedi")
star_wars

rm(list=ls())

x <- c("a", "b", "c", "c", "d", "a")
length(x)
x[1]
x[1:8]
x[1:4]
x[c(1, 3, 4)]
x[-2]
x[c(-2, -5)]
x[c(F, T, F, T, T, F)]


