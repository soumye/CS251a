for (val in 1:5) { 
	n = rnorm(100,0.5,0.15)
	name=paste(val,"normal.txt",sep="")
	write(n, name ,ncolumns=1)
}
for (val in 5:10) { 
	n = rnorm(100,0.5,0.15)
	name=paste(val,"normal.txt",sep="")
	write(n, name ,ncolumns=1)
}
for (val in 1:5) { 
	n = runif(100,0.0,1.0)
	name=paste(val,"uniform.txt",sep="")
	write(n, name ,ncolumns=1)
}
for (val in 5:10) { 
	n = runif(100,0.0,1.0)
	name=paste(val,"uniform.txt",sep="")
	write(n, name ,ncolumns=1)
}