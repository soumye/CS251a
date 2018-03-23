a=array(dim=c(10))
s=array(dim=c(10))
d=array(dim=c(10))
f=array(dim=c(10))
for (i in 1:10) {
	name = paste("../NewData/",i,"normal.txt", sep="")
	b= scan(name)
	a[i] = (sum(b<0.25))
	s[i] = sum(b>=0.25 & b<0.5)
	d[i] = sum(b>=0.5 & b<0.75)
	f[i] = sum(b>=0.75)
}

sink("normal.txt")
cat("0.25",mean(a), min(a), max(a),"\n")
cat("0.50",mean(s), min(s), max(s), "\n")
cat("0.75",mean(d), min(d), max(d), "\n")
cat("1.0",mean(f), min(f), max(f), "\n")
sink()

a=array(dim=c(10))
s=array(dim=c(10))
d=array(dim=c(10))
f=array(dim=c(10))

for (i in 1:10) {
	name = paste("../NewData/",i,"uniform.txt", sep="")
	b= scan(name)
	a[i] = (sum(b<0.25))
	s[i] = sum(b>=0.25 & b<0.5)
	d[i] = sum(b>=0.5 & b<0.75)
	f[i] = sum(b>=0.75)
}

sink("uniform.txt")
cat("0.25",mean(a), min(a), max(a),"\n")
cat("0.50",mean(s), min(s), max(s), "\n")
cat("0.75",mean(d), min(d), max(d), "\n")
cat("1.0",mean(f), min(f), max(f), "\n")
sink()