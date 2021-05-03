library("lmtest")

marcas<- c(rep('1',6), rep('2',6), rep('3',6))
data <-c(72, 65, 67, 75, 62, 73, 55, 59, 68, 70, 53, 50, 64, 74, 61, 58, 51, 69 )


df <- data.frame(data , marcas)
det.anova<- aov(data~marcas, data = df)
summary(det.anova)
res<-det.anova$residuals




boxplot(data~marcas)


stripchart(data~marcas,pch=19, xlab="Spray", ylab="Efectividad", vertical = TRUE,method = "overplot",main="")



layout(matrix(c(1,2,3,4),2,2,byrow = T))
hist(res, main = "Histograma de Residuos")
qqnorm(res)
qqline(res)


shapiro.test(res)
bartlett.test(res, df$marcas)
dwtest(det.anova)

