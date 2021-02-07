library(ggplot2)

p1<- c(0.6,103,'bad','low','low')
p2<- c(0.3,87,'bad','low','high')
p3<- c(0.4,32,'bad','high','low')
p4<- c(0.4,42,'bad','high','high')
p5<- c(0.2,59,'good','low','low')
p6<- c(0.6,109,'good','low','high')
p7<- c(0.3,78,'good','high','low')
p8<- c(0.4,205,'good','high','high')
p9<- c(0.9,135,NA,'high','high')
p10<- c(0.2, 176,'bad','high','high')

cnam <- c('Freq','bloodp','first', 'second', 'finaldecision')

#Create data frame from patient information
pat <- data.frame(p1,p2,p3, p4, p5, p6, p7, p8, p9, p10)

#Transpose data frame
pat2 <- as.data.frame(t(pat))

#Checks for NA
is.na.data.frame(pat2)

#Assign column names and convert numbers to numeric
colnames(pat2) <- cnam
pat2$Freq <- as.numeric(pat2$Freq)
pat2$bloodp <- as.numeric(pat2$bloodp)

#Preview
str(pat2)

bpl <- ggplot(pat2, aes(bloodp, Freq, group=finaldecision, fill=finaldecision)) +
        geom_boxplot()
bpl

hpl <- ggplot(pat2, aes(first, fill=first))+
        geom_histogram(stat = "count")
hpl

hpl2 <- ggplot(pat2, aes(second, fill=second))+
        geom_histogram(stat = "count")
hpl2



