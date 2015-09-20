ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")

hostsTable <- table(ZeusTracker$Level)
chartData <- c(hostsTable[3],sum(hostsTable))

percFree <- round(hostsTable[3]/sum(hostsTable)*100)
percRest <- round((sum(hostsTable)-hostsTable[3])/sum(hostsTable)*100)

title <- "Percentage of infected hosts that are free web hosts"
labels <- c("Free webhosting providers","Other providers")
labels <- paste(labels, c(percFree,percRest))
labels <- paste(labels, "%", sep="")

pie(chartData, main=title, labels=labels, col=rainbow(2))