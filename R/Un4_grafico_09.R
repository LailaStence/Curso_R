par(mfrow=c(4,4))
for(i in c(1:16))
	plot(x,y, ylab="", xlab="",
		type="p", lwd=3,
		main=paste("col=", as.character(i)),
		col=i)