library(plotly)
library(scales)
library(caret)
library(ISLR)
library(splines)

data.all <- Wage
data.all

train.ids <- createDataPartition(y = data.all$wage, p = .7, list = F)

data.train <- data.all[ train.ids,]
data.test  <- data.all[-train.ids,]

plot(x = data.train$age, y = data.train$wage)
abline(lm(data.train$wage ~ data.train$age), col='red')

plot(x = as.numeric( data.train$education ), y = data.train$wage)
abline(lm(data.train$wage ~ as.numeric( data.train$education )), col='red')

plot(x = as.numeric(data.train$jobclass), y = data.train$wage)
abline(lm(data.train$wage ~ as.numeric( data.train$jobclass )), col='red')

plot(x = data.train$education, y = data.train$wage)
plot(x = data.train$jobclass, y = data.train$wage)

featurePlot( x    = data.train[, c('age', "education", "jobclass")]
           , y    = data.train$wage
           , plot = "pairs"
           )

nearZeroVar(data.train, saveMetrics = T)

head(data.train$age)
age_BS = bs(data.train[,"age"], df = 3)
head(age_BS)

lm1 <- lm(data.train$wage ~ age_BS)
plot(data.train$age, data.train$wage)

predito = predict(lm1, newdata = data.train)
points(data.train$age, predito, col='red', pch=20)
