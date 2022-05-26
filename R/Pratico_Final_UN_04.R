##Pratica final

x1<-seq(0,50,l=100)
y1<-1-(1/x1)*sin(x1)
plot(x1,y1,type="l",col=2,lwd=2)

x<-seq(-3,3,length=100)
y<-x
f<-function(x,y){1/(2*pi*sqrt(s1*s2*(1-rho^2)))
*exp(-1/(2*(1-rho^2))*((x-m1)^2/s1+(y-m2)^2/s2-2*
rho*((x-m1)*(y-m2))/(sqrt(s1)*sqrt(s2))))}

#definindo os parametros
m1<-0
m2<-0
s1<-1
s2<-1
rho<-0
z<-outer(x,y,f)

#calcula(f(x,y)
##superficie e contornos por conta do aluno