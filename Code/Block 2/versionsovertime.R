ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")

dates <- strftime(ZeusTracker$Dateadded, "%Y/%m")
versions <- ZeusTracker$Malware
data <- table(versions,dates,exclude="")
title <- "Versions of ZeuS C&C's over time"

print(data)

barplot(data, xlab="", col=rainbow(5), legend.text = TRUE,
        args.legend = list(x = ncol(data) + 3, y=max(colSums(data)), bty = "y"))

FeodoTracker <- read.csv("~/Economics-of-Security/Data/FeodoTracker_20150915.csv")

dates <- strptime(FeodoTracker$First.seen..UTC.,"%m/%d/%Y %H:%M")
dates <- strftime(dates, "%Y/%m")
versions <- FeodoTracker$Version
data <- table(versions,dates,exclude="")

title <- "Versions of Feodo C&C's over time"

barplot(data, xlab="", col=rainbow(5), legend=c("Version C","Version D"))