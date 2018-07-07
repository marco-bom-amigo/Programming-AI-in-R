library(dplyr)
library(readr)
library(caret)
library(kernlab)

pca1 <- prcomp(airquality[complete.cases(airquality),], scale = T)
dim(pca1$rotation)

pca1$rotation[, 1]
pca1$rotation[, 2]

plot(pca1$rotation[,1])
plot(pca1$rotation[,2])

data(spam)

set.seed(1)
train.ids <- createDataPartition(y = spam$type,p = 0.7, list = F)
data.train <- spam[ train.ids,]
data.test  <- spam[-train.ids,]

data.train.menor = data.train[, c("num415", "num857")]
comparador = prcomp(data.train.menor)

plot(comparador$x[,1])
plot(comparador$x[,2])

spam.cor   <- as.numeric(spam$type == "spam")
comparador <- prcomp(log10( spam[,-58] +1))
plot( comparador$x[,1]
    , comparador$x[,2]
    , col  = spam.cor +1
    , xlab = "var1"
    , ylab = "var2"
    )

pca.prepare <- preProcess(log10(data.train[,-58]+1), method = "pca", pcaComp = 2)
pca.train   <- predict(pca.prepare, log10(data.train[,-58]+1))

pca.modelo.treinado <- train( x      = pca.train
                            , y      = data.train$type
                            , method = "glm"
                            )

plot(x = 1:100, y = log10(1:100), type='l')

pca.train.predicted <- predict(pca.modelo.treinado, pca.train)
head(pca.train.predicted)

i <- sample(seq_len(nrow(data.train)), 10)
cbind(data.train$type[i], pca.train.predicted[i])
confusionMatrix(data.train$type, pca.train.predicted)

pca.test <- predict(pca.prepare, log10(data.test[,-58]+1))

pca.test.predicted <- predict(pca.modelo.treinado, pca.test)
head(pca.test.predicted)

i <- sample(seq_len(nrow(data.test)), 10 )
cbind( data.test$type[i], pca.test.predicted[i])
confusionMatrix(data.test$type, pca.test.predicted)

load("mnist.RData")
display_number <- function( x = NA, dataset = train){
  if (is.na(x)) {
    x <- sample(seq_len(dataset$n), size = 1)
  }
  image( matrix(dataset$x[x, ], ncol = 28)
       , axes = F
       , col  = gray(255:1/255)
       )
  
  box()
  title( paste0(x, ':', dataset$y[x]) )
}

display_number(51000)

data.train1 <-  data.frame(y = train$y, train$x)
fit <- train(y ~ .
            , data     = data.train1
            , method   = 'svmRadial'
            , tuneGrid = data.frame(sigma = 0.0107249, C = 1)
            )