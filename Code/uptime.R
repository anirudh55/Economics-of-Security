ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")

uptimeTable <- table(ZeusTracker$Uptime, exclude="-")
print(uptimeTable)
barplot(uptimeTable, log="y")
