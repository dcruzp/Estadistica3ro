x <- c(3,2,1,4,5)
y <- c(5,1,4,2,3)


x1 <- sort(x)
y1 <- sort(y)

xmenosy <- x1 - y1
xmenosy2 <- xmenosy * xmenosy

tabla <- data.frame(x1,y1, xmenosy , xmenosy2)

library(xtable)
print(xtable(tabla), include.rownames = FALSE ,type = "latex")
