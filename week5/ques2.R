#!/bin/usr/R
args=commandArgs(trailingOnly=TRUE)
if (length(args)!=1) {
	cat("Incorrect Arguments\n")
	quit()
}

if(!file.exists(args[1]))
{
	cat("File does not exist.\n")
	quit()
}

if(!file.info(args[1])$size)
{
	cat("Empty File.\n")
	quit()
}
data=read.csv(args[1])
table1=aggregate(data[1:4],list(data$Species),mean)
table2=table(data$Species,data$Good)
print("Means of Attributes for each Species")
print(table1)
print("Contigency Table for good bad medium")
print(table2)
table3=aggregate(data[1:4],list(data$Good),mean)
table4=aggregate(data[1:4],list(data$Species,data$Good),mean)
print("Mean of Attributes")
print(table3)
print("Detailed Contingency Table for Species and Goodness")
print(table4)
png("barplot.png")
barplot(table2,main="PLOT",col=c('blue','pink','purple'),beside=TRUE)
legend("topleft", legend = levels(data$Species), fill = c("blue", "pink", "purple"))	
a<-dev.off()
