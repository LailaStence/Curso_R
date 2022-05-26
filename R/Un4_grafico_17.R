###Salvando graficos
#1° certifique-se do diretorio
setwd("Particao/Pasta/Nome do arquivo")

pdf(file="grafico.pdf")
plot(x,y)
dev.off()

jpeg(file="grafico.jpeg", width=5, height=5, units="in", res=300)
plot(x,y)
dev.off()

png(file="grafico.png", width=6, height=6, units"in", res=300)
plot(x,y)
dev.off()#colocando grid

plot(x,y,panel.first=grid())
plot(x,y,panel.first=grid(lwd=2,lty=3))
plot(x,y,panel.first=grid(ny=5,col="red"))
plot(x,y,panel.first=grid(nx=5,col="red"))