# x do conjunto de dados anterior
y1=log(x)
y2=sqrt(x)
plot(x,y1, ylim=c(0,8), ylab="y")
points(x, y2, col="red")
legend("top", legend = c("logaritmo", "raiz quadrada"),
pch = c(1,1), col = c (1,2), lty=0, bty="n")