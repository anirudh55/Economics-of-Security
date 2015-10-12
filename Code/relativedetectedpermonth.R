ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")

dates_zeus <- strftime(ZeusTracker$Dateadded, "%Y/%m")

diff <- c(1,0,1,4,-2,-3,0,1,-1,0,2,-2,1,0,0,1,3,0,1,-2,9,0,-11,6,-4,3,5,12,-4,0,1,-4,9,-14,27,-22,17,-3,-2,-5,-3,3,38,11,0)
dates_zeus <- unique(dates_zeus)
print(dates_zeus)
print(diff)

plot(diff, ylab="y", xlab="x")
lines(dates_zeus, diff,type="o", col=rainbow(1))

axis.Date(1, dates_zeus, at=sequence, labels=TRUE, format="%d/%m", las=2)