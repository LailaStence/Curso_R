# Lembrete: para chamar arquivo externo siga os passos a seguir
#1o) mudar diretorio: Session
#2o) set working directory
#3o) choose directory
#4o) escolher pasta com arquivo "Tab1.txt"
#apos mudar diretorio, chamar o arquivo
dados=read.table("Tab1.txt", h=TRUE)
var=dados[,6]; var
## calcular o n
n=length(var); n
## tabular os valores da variavel
tvar=table(var); tvar # freq. absoluta
# freq. relativa
fr=tvar/n; fr
# freq percentual
fp=fr*100; fp



## criando grafico de pizza
pie(tvar) #versao padrao do R
pie(tvar, col=rainbow(6),
labels=c("BAIXA", "M´EDIA", "ALTA"),
main="Dados de renda")
## para colocar as porcentagens no grafico
varv <- paste(c("BAIXA", "M´EDIA", "ALTA"), "\n", (tvar/n)*100,"%", sep=" ")
pie(tvar, col=c(2,3,4), labels=varv, main="Dados de renda")
# gr´afico de pizza 3D
library(plotrix)
?pie3D # pedindo ajuda
pie3D(tvar,labels=rendav,explode=0.1,theta=pi/4,start=10,
main="Gr´afico de setores da renda ")
## grafico de barras
barplot(tvar, col=rainbow(4), ylab="Frequˆencias absolutas",
names=c("BAIXA", "M´EDIA", "ALTA"))


Exemplo 2 (a) no R
## com os dados carregados do exemplo 1
falta=dados[,7]; falta
n=length(falta); n
## frequencias
faltat=table(falta); faltat # freq. absoluta
fr=faltat/n; fr # freq. relativa
fp=fr*100; fp # freq. percentual


Exemplo 2 (b) no R
#graficos
pie(faltat, col=rainbow(6), main="Faltas")
barplot(faltat, col="grey", ylab="Frequˆencias absolutas",
horiz=TRUE, xlab="N´umero de Faltas")
#grafico de linhas
plot(faltat, type = "h")


Exemplo 3 (a) no R
## com os dados do exemplo 1 carregado
# numero de classes
head(dados)
var=dados[,5]
n=length(var) #numero de observacoes
k=round(sqrt(n)); k #numero de classes
# amplitude da classe
varmin=min(var); varmin
varmax=max(var); varmax
c=(varmax-varmin)/(k-1); c
# limites das classes
LI1=varmin - c/2; LI1
LSk=varmax + c/2; LSk
LimClass=seq(LI1, LSk, c); LimClass


Exemplo 3 (b) no R
### histograma
hist(var) #versao padrao do R
# histograma com frequencias de acordo com as classes constru´idas
hist(var, breaks=LimClass, col=rainbow(8))
# histograma com frequencias de acordo com as classes constru´idas,
# no de classes e eixos ajustados
h=hist(alt, breaks=LimClass, main="Histograma das alturas",
xlab="Altura (metros)", ylim=c(0,15),
ylab="Frequˆencias absolutas",
col="lightgreen",axes=FALSE)
# ajustando eixo horizontal
axis(1,at=LimClass,pos=-0.5)
# ajustando eixo vertical
axis(2,at=seq(0,30,by=1))
#poligono de frequencia
points(h$mids,h$counts,type="l",lwd=2)


Exemplo 3 (a) continuac¸˜ao no R
# ponto medio da classes
h$mids
## frequˆencias simples
fa=h$counts; fa # frequencia absoluta
fr=fa/n; fr # frequencia relativa
fp=fr*100; fp # frequencia percentual
## frequencias acumuladas
Fa=c(0, cumsum(fa)); Fa # freq. acumulada absoluta
Fr=Fa/n; Fr # freq. acumulada relativa
Fp=Fr*100; Fp # freq. acumulada pecentual
## media da altura (dados agrupados)
xbar=sum(fr*h$mids)
xbar


Exemplo 3 (b) continuac¸˜ao no R
## grafico de ogiva (frequencia absoluta acumulada)
Fa # objeto Fa criado anteriormente
plot(LimClass,Fa,
ylab="Frequˆencia absoluta", xlab="Altura (metros)",
axes=F, panel.first=grid(), lwd=2, col="red", cex.lab=1.2)
points(LimClass,Fa,type="b",
pch=16,col="red", panel.first=grid())
axis(1,at=round(LimClass,3),pos=-0.05, cex.axis=1)
axis(2,at=seq(0,40,by=5), cex.axis=1.2, las=2)
## grafico de ogiva (frequencia relativa acumulada)
Fr # objeto Fr criado anteriormente
plot(LimClass,Fr,type="b",
ylab="Frequˆencia relativa", xlab="Altura (metros)",
axes=F, panel.first=grid(), lwd=2, col="red", cex.lab=1.2)
points(LimClass,Fr,type="b",
pch=16,col="red", panel.first=grid())
axis(1,at=round(LimClass,3),pos=-0.05, cex.axis=1)
axis(2,at=seq(0,1,by=0.1), cex.axis=1.2, las=2)


Exemplo 3 (c) no R
## medidas descritivas para os dados de altura
median(var) # mediana
mean(var) # m´edia
A=max(var)-min(var); A # amplitude
# variancia
Varh=sum((var-hbarra)ˆ2)/(n-1); Varh
# ou simplesmente
var(var)
# desvio padrao
DPh=sqrt(Varh); DPh
# ou simplesmente
sd(var)



