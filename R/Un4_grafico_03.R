#plotando 4 graficos

par(mfrow=c(2,2))
plot (x,y, type="p", pch=1)
plot (x,y, type="p", pch=3)
plot (x,y, type="p", pch=5)
plot (x,y, type="p", pch=25)

#plotando apenas um gráfico

par(mfrow=c(1,1)