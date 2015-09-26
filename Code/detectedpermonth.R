ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")
FeodoTracker <- read.csv("~/Economics-of-Security/Data/FeodoTracker_20150915.csv")

dates_zeus <- strftime(ZeusTracker$Dateadded, "%Y/%m")
dates_zeus <- table(dates_zeus)

barplot(dates_zeus, col=rainbow(1))

dates <- strptime(FeodoTracker$First.seen..UTC.,"%m/%d/%Y %H:%M")
dates_feodo <- strftime(dates, "%Y/%m")
dates_feodo <- table(dates_feodo)

barplot(dates_feodo, col=rainbow(1))