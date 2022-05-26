#graficos de funcao - formas alternativas contorno e imagens

##contornos 22

image(x,y,z, xlab="x", ylab="y", col=terrain.colors(10))
contour(x,y,z,col="black",add=TRUE,nlev=10)

##contornos 23

image(x,y,z,xlab="x",ylab="y")
contour(x,x,z,col="black",add=TRUE,nlev=10)