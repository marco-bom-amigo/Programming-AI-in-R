1 + 3
1:5 + 3
matrix(1:9, 3) + 3
1 * 2
1:5 * 2
matrix(1:9, 3) * 2

a  <- c(3434, 19820928, 808, 341175, 408)
b  <- a * 2
c  <- b /3
d  <- c + a ** 2
e  <- sqrt(d)
ai <- a[5:1]

M1 <- matrix(data = c(a, b, c, d, e, ai), nrow = 6, byrow = T)
M2 <- matrix(data = c(a, b, c, d, e, ai), nrow = 5, byrow = F)
M3 <- M1 * 0.1
M4 <- as.matrix(attitude[10:14, 1:6])

A <- matrix(1:2, nrow = 19, ncol = 19)
B <- A + 1:19

M5 <- M1 * M3
M6 <- M3 * M1
M7 <- M1 %*% M4
M8 <- M4 %*% M1
M5 == M6

rm(list = ls())

v1 = NA
v2 = NaN
v3 = NULL
v4 = Inf
v5 = -Inf

vall = c(v1, v2, v3, v4, v5)
is.na(vall)
is.nan(vall)
is.null(vall)
is.infinite(vall)
is.finite(vall)

is.na(v3)
is.nan(v3)
is.null(v3)
is.infinite(v3)
is.finite(v3)

rm(list = ls())

my_seq <- seq(5, 10, length = 30)
pi:10
10:pi

length(my_seq)
seq(along.with = my_seq)
seq_along(my_seq)
