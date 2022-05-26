##graficos de funcoes
#definindo os valores de x
x2<-seq(80,120,l=101)
y2<-(1/sqrt(50*pi))*exp(-0.02*(x2-100)^2)
plot(x2, y2, type="l")

##alternativamnte
y=function(x) (1/sqrt(50*pi))*exp(-0.02*(x-100)^2
y2=y(x2)
plot(x2,y2, type"l", col=2, lwd=2, panel.first = grid())