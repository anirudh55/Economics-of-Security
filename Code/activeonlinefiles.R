ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_60days_20150924.csv")

dates <- as.Date(strptime(ZeusTracker$Date,"%d/%m/%Y"))
sequence <- seq(min(dates),max(dates),by="week")

dropzones <- ZeusTracker$Dropzones
configs <- ZeusTracker$Configs
bins <- ZeusTracker$Binaries
ads <- ZeusTracker$Activedomains

colors = rainbow(4)
par(mfrow = c(2, 2)) 

plot(dates,ads, ylab="Active Domains", xlab="", ylim=c(0,40), axes=FALSE)
lines(dates, ads,type="o", col=colors[1])
grid()
axis(2)
axis.Date(1, dates, at=sequence, labels=TRUE, format="%d/%m", las=2)

plot(dates,dropzones, ylab="Dropzones", xlab="", ylim=c(0,40), axes=FALSE)
lines(dates, dropzones,type="o", col=colors[2])
grid()
axis(2)
axis.Date(1, dates, at=sequence, labels=TRUE, format="%d/%m", las=2)

plot(dates,configs, ylab="Config files", xlab="", ylim=c(0,40), axes=FALSE)
lines(dates, configs,type="o", col=colors[3])
grid()
axis(2)
axis.Date(1, dates, at=sequence, labels=TRUE, format="%d/%m", las=2)

plot(dates,bins, ylab="Binaries", xlab="", ylim=c(0,3), axes=FALSE)
lines(dates, bins,type="o", col=colors[4])
grid()
axis(2)
axis.Date(1, dates, at=sequence, labels=TRUE, format="%d/%m", las=2)
