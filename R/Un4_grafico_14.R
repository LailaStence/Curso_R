#alterando limites dos eixos
par(mfrow=c(2,1))
plot(x,y) #original
plot(x,y, xlim=c(10,35), ylim=c(0,40))
par(mfrow=c(1,1))