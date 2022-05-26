#graficos de funcao - formas alternativas visualização tridimensional

##contornos 24
x<-seq(-1,1,l=100)
y<-seq(-1,1,l=100)
fl<-function(x,y)sqrt(x^2+y^2)
z<-outer(x,y,fl)library(plotly)
plot_ly(x=x,y=y,z=z, type="surface")

##contornos 25
x<-seq(-5,5,l=100)
y<-seq(-5,5,l=100)
fl<-function(x,y)cos(x)*cos(y)*exp((-sqrt(x^2+y^2))/4)
z<-outer(x,y,fl)library(plotly)
plot_ly(x=x,y=y,z=z, type="surface")