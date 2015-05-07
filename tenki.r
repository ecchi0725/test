dat <- read.csv("data.csv",header=T)
p <- ncol(data)
n <- nrow(data)
library(MASS)

print("�C���A�����A�C���A���x")
res.lda <- lda(dat[,-p],dat[,p]) ## �Ƃ肠����LDA ���g���Ă݂�
yhat <- predict(res.lda,dat[,-p])$class
print(mean(yhat!=dat[,p]))

print("�����A�C���A���x")
res.lda <- lda(dat[,-c(1,5)],dat[,p]) ## �Ƃ肠����LDA ���g���Ă݂�
yhat <- predict(res.lda,dat[,-c(1,5)])$class
print(mean(yhat!=dat[,p]))

print("�C���A�C���A���x")
res.lda <- lda(dat[,-c(2,5)],dat[,p]) ## �Ƃ肠����LDA ���g���Ă݂�
yhat <- predict(res.lda,dat[,-c(2,5)])$class
print(mean(yhat!=dat[,p]))

print("�C���A�����A���x")
res.lda <- lda(dat[,-c(3,5)],dat[,p]) ## �Ƃ肠����LDA ���g���Ă݂�
yhat <- predict(res.lda,dat[,-c(3,5)])$class
print(mean(yhat!=dat[,p]))

print("�C���A�����A�C��")
res.lda <- lda(dat[,-c(4,5)],dat[,p]) ## �Ƃ肠����LDA ���g���Ă݂�
yhat <- predict(res.lda,dat[,-c(4,5)])$class
print(mean(yhat!=dat[,p]))


