##graficos de funcoes
#definindo os valores de x
x1<-seq(0,100, by=0.1)
y1<-5*log(x1)
plot(x1,y1, type="l", col=2)

##alternativamente
y=function(x)5*log(x)
y1=y(x1)
plot(x1, y1, type="l", col=2, lwd=2, panel.first=grid())

##alternativamente
plot(function(x)5*log(x), 0,10)
