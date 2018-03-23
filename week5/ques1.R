#!/usr/bin/R

args=commandArgs(trailingOnly=TRUE)
if (length(args)!=1) {
		cat("Incorrect argument Number.\n")
	quit()
}

if(!file.exists(args[1]))
{
		cat("File does not exist.\n")
	quit()
}

if(!file.info(args[1])$size)
{
		cat("File is empty\n")
	quit()
}
load(args[1])

mean1=mean(data1)
mean2=mean(data2)
mean3=mean(data3)

med1=median(data1)
med2=median(data2)
med3=median(data3)

q1=quantile(data1)
q2=quantile(data2)
q3=quantile(data3)

d1=sd(data1)
d2=sd(data2)
d3=sd(data3)

print("Means")
A=c(mean1,mean2,mean3)
print(A)
print("Medians")
B=c(med1,med2,med3)
print(B)
print("Quantiles")
C=c(q1,q2,q3)
print(C)
print("Standard Deviations")
D=c(d1,d2,d3)
print(D)
#Data 1 is Exponential Distribution
hist(data1)
#Data 2 is Gaussian Distribution
hist(data2)
#Data 3 is constant Distribution
hist(data3)
