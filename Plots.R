library(magrittr)
library(dplyr)
library(lattice)

x = -10:10
plot(x = x, y = x**2, main = 'Parábola')

plot(x = x, y = x**2, main = 'Parábola', type = 'l')
plot(x = x, y = x**2, main = 'Parábola', type = 'p')
plot(x = x, y = x**2, main = 'Parábola', type = 'b')
plot(x = x, y = x**2, main = 'Parábola', type = 'o')
plot(x = x, y = x**2, main = 'Parábola', type = 'h')
plot(x = x, y = x**2, main = 'Parábola', type = 's')

plot(x**2)
lines(x**2)

x = cars$speed
y.tend = lm(data = cars, formula = dist ~speed)$coefficients
plot(cars)
print(y.tend)
lines(x = x, y = cbind(1, x) %*%  y.tend, type = 'l', col='blue')

head(cars)
summary(cars)
plot(x = cars$speed, y = cars$dist, xlab= 'Speed', ylab= 'Dist', las = 1)

hist(cars$speed, las = 1)
hist(cars$speed, las = 1, freq = T)
boxplot(cars$speed)

boxplot(airquality$Ozone)
boxplot(airquality$Ozone, outline = F)


summary(airquality)
boxplot(airquality, las = 1, main = 'Air quality')

par(mfrow = c(1, 2))
plot(airquality$Wind   , airquality$Ozone, xlab = 'Wind'   , ylab = 'Ozone', main = 'Graph #1')
plot(airquality$Solar.R, airquality$Ozone, xlab = 'Solar.R', ylab = 'Ozone', main = 'Graph #2')

par(mfrow = c(1,2))
with(airquality, {
  plot(Wind, Ozone, main = 'Ozonio pelo vento')
  plot(Solar.R, Ozone, main = 'Ozonio pela radiação solar')
  })

state <- data.frame(state.x77, region = state.region)
object.size(state)

xyplot( Life.Exp ~ Income | region
      , data = state
      , layout = c(4, 1)
      )

plot( sin(seq(from = 0, to = 2*pi, length.out = 7))
    , type = 'o'
    )
plot( sin(seq(from = 0, to = 2*pi, length.out = 70))
    , type = 'o'
    )
plot( sin(seq(from = 0, to = pi, length.out = 7))
    , type = 'o'
    )
plot( sin(seq(from = 0, to = pi, length.out = 12))
    , type = 'o'
    )
plot( cos(seq(from = 0, to = 2*pi, length.out = 12))
    , type = 'o'
    )

airquality %>%
  filter(Month == 5) %>%
  select(Ozone) %>%
  arrange(Ozone) %>%
  unlist() %>%
  plot()
lines(x = 0:27, y = rep( 1.00 , 28), type = 'l', col='blue')
lines(x = 0:27, y = rep(11.00 , 28), type = 'l', col='blue')
lines(x = 0:27, y = rep(18.00 , 28), type = 'l', col='red')
lines(x = 0:27, y = rep(31.50 , 28), type = 'l', col='blue')
lines(x = 0:27, y = rep(115.00, 28), type = 'l', col='blue')

airquality %>%
  filter(Month == 5) %>%
  select(Ozone) %>%
  summary() 

boxplot(Ozone ~ Month, data = airquality)
boxplot(Temp  ~ Month, data = airquality)

with(airquality, plot(x = Wind, y = Ozone))
abline(lm(data = airquality, formula = Ozone ~ Wind) , col = 'red')

