#grafico de funcao

x<-seq(-1,1,l=50)
y<-seq(-1,1,l=50)

f1<-function(x,y)sqrt(x^2+y^2)
z<- outer(x,y,f1)

##superficie

persp(x,y,z, theta=30, phi=30, col="lightgreen",ticktype="detailed",nticks=5)