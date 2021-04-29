x <- c(-3,-1,1,3,5,7)
y <- c(14,4,2,8,22,44)

xy <- x * y 
xx <- x * x 
yy <- y * y 

tabla <- data.frame(x,y, xy, xx,yy)
tabla

regresion <- lm(y ~ x, data= tabla)
summary(regresion)

plot(tabla$x,tabla$y,xlab = 'X' , ylab = 'Y')
abline(regresion)


x1 <- c(x,sum(x))
y1 <- c(y,sum(y))
xy1 <- c(xy,sum(xy))
xx1 <- c(xx,sum(xx))
yy1 <- c(yy,sum(yy))

tablaexport <- data.frame(x1,y1,xy1,xx1,yy1)

library(xtable)

print(xtable(tabla), include.rownames = c('x','y','xy' ,'x^2','y^2'))
