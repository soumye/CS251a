
s=array(dim=c(5))
a=array(dim=c(5))
f=array(dim=c(5))

for (i in 1:5) {
	name = paste("../NewData/",i,"normal.txt", sep="")
	b= scan(name)
	a[i] = (sum(b<=0.34))
	s[i] = sum(b>0.34 & b<0.67)
	f[i] = sum(b>=0.67)
}

sink("normal1.txt")
cat("A",mean(a), min(a), max(a),"\n")
cat("B",mean(s), min(s), max(s), "\n")
cat("C",mean(f), min(f), max(f), "\n")
sink()


s=array(dim=c(5))
a=array(dim=c(5))
f=array(dim=c(5))

for (i in 1:5) {
	name = paste("../NewData/",i,"uniform.txt", sep="")
	b= scan(name)
	a[i] = (sum(b<=0.34))
	s[i] = sum(b>0.34 & b<0.67)
	f[i] = sum(b>=0.67)
}

sink("uniform1.txt")
cat("A",mean(a), min(a), max(a),"\n")
cat("B",mean(s), min(s), max(s), "\n")
cat("C",mean(f), min(f), max(f), "\n")
sink()

s=array(dim=c(5))
a=array(dim=c(5))
f=array(dim=c(5))

for (i in 1:5) {
	name = paste("../NewData/",i+5,"normal.txt", sep="")
	b= scan(name)
	a[i] = (sum(b<=0.34))
	s[i] = sum(b>0.34 & b<0.67)
	f[i] = sum(b>=0.67)
}

sink("normal2.txt")
cat("A",mean(a), min(a), max(a),"\n")
cat("B",mean(s), min(s), max(s), "\n")
cat("C",mean(f), min(f), max(f), "\n")
sink()

s=array(dim=c(5))
a=array(dim=c(5))
f=array(dim=c(5))

for (i in 1:5) {
	name = paste("../NewData/",i+5,"uniform.txt", sep="")
	b= scan(name)
	a[i] = (sum(b<=0.34))
	s[i] = sum(b>0.34 & b<0.67)
	f[i] = sum(b>=0.67)
}

sink("uniform2.txt")
cat("A",mean(a), min(a), max(a),"\n")
cat("B",mean(s), min(s), max(s), "\n")
cat("C",mean(f), min(f), max(f), "\n")
sink()

