x <- c(10,6,5,4,3,2,5)
y <- c(12,10,15,10,13,9,15)

xy <- x*y
xx <- x*x
yy <- y*y


x1 <- c(x,sum(x))
y1 <- c(y,sum(y))

xy1 <- c(xy,sum(xy))
xx1 <- c(xx,sum(xx))
yy1 <- c(yy,sum(yy))

tabla <- data.frame(x1,y1,xy1,xx1,yy1)
