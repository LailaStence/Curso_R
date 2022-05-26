#estilo da caixa do grafico

par(mfrow=c(4,2))
plot(x,y, pch=15, cex=2.1,)
plot(x,y, pch=15, cex- 2.1,bty="o")
plot(x,y, pch=15, cex =2.1,bty="l")
plot(x,y, pch=15, cex=2.1,bty="7")
plot(x,y, pch=15, cex=2.1,bty="c")
plot(x,y, pch=15, cex=2.1,bty="u")
plot(x,y, pch=15, cex=2.1,bty="]")
plot(x,y, pch=15, cex=2.1,bty="n")
par(mfrow=c(1,1))