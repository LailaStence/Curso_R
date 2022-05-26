#outer
x<-seq(1,5,by=1); x

y<-seq(1,5,by=1); y

f1<-function(x,y)x^2+y^2

z<- outer(x,y, f1)
z

persp(x,y,z, theta=30, phi=30,col="lighyblue")
persp(x,y,z, theta=20, phi=30,col="lightblue", ticktype="detailed",nticks=5)