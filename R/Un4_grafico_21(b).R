#grafico de funcoes

x<-seq(-5,5,l=50)
y<-seq(-5,5,l=50)
f1<-function(x,y)cos(x)*cos(y)*exp((-sqrt(x^2+y^2))/4)
z<-outer(x,y,f1)

##superficie
persp(x,y,z,theta=30,phi=30,col="lightsalmon",ticktype="detailed",nticks=5)