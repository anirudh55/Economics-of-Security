ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")

countries <- ZeusTracker$Country
freqs <- table(countries)
freqs["-"] <- 0
sorted <- sort(freqs)
barplot(sorted)

ZeusNormalized <- read.csv("~/Economics-of-Security/Data/ZeuS_normalized.csv")
bp <- barplot(ZeusNormalized$Normalized, col=rainbow(1), xlab="Country", ylab="amount of C&C's / number of internet users")
axis(1,at=bp,labels=ZeusNormalized$Country, las=2)
print(ZeusNormalized)

intusers <- ZeusNormalized$Internet.Users
iu <- sort(intusers)
print(iu)