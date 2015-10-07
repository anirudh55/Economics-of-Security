# Define 2 vectors
p <- c(0.1, 0.2, 0.3, 0.4, 0.5,0.6,0.7,0.8,0.9,1)
costs <- 2204
loss <- 31222
rosi <- ((((loss*p)*0.19)-costs)/costs)*100

plot(p,rosi, type="l", col="black",xlab="probability",ylab="ROSI (%)")

a <- c(0,0.74)
b <- c(100,100)

lines(a,b, type = "l", pch=22, lty=2, col="red")

c <- c(0.74,0.74)
d <- c(-80,100)

lines(c,d, type = "l",pch=22, lty=2, col="red")