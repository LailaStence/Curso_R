par(mfrow=c(2,2))
plot(x,y, type="p", col="black")
plot(x,y, type="p", col="blue")
plot(x,y, type="p", col="yellow")
plot(x,y, type="p", col="red")
par(mfrow=c(1,1))

#para ves as primeiras 20 cores

r_color<- colors()
head(r_color,20)