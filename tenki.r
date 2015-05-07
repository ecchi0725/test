dat <- read.csv("data.csv",header=T)
p <- ncol(data)
n <- nrow(data)
library(MASS)

print("気温、風速、気圧、湿度")
res.lda <- lda(dat[,-p],dat[,p]) ## とりあえずLDA を使ってみる
yhat <- predict(res.lda,dat[,-p])$class
print(mean(yhat!=dat[,p]))

print("風速、気圧、湿度")
res.lda <- lda(dat[,-c(1,5)],dat[,p]) ## とりあえずLDA を使ってみる
yhat <- predict(res.lda,dat[,-c(1,5)])$class
print(mean(yhat!=dat[,p]))

print("気温、気圧、湿度")
res.lda <- lda(dat[,-c(2,5)],dat[,p]) ## とりあえずLDA を使ってみる
yhat <- predict(res.lda,dat[,-c(2,5)])$class
print(mean(yhat!=dat[,p]))

print("気温、風速、湿度")
res.lda <- lda(dat[,-c(3,5)],dat[,p]) ## とりあえずLDA を使ってみる
yhat <- predict(res.lda,dat[,-c(3,5)])$class
print(mean(yhat!=dat[,p]))

print("気温、風速、気圧")
res.lda <- lda(dat[,-c(4,5)],dat[,p]) ## とりあえずLDA を使ってみる
yhat <- predict(res.lda,dat[,-c(4,5)])$class
print(mean(yhat!=dat[,p]))


