ZeusTracker <- read.csv("~/Economics-of-Security/Data/ZeusTracker_20150915.csv")

isOnline <- function(x)
{
  if(x == "online") return(TRUE) else return(FALSE);
}

months <- ZeusTracker$Dateadded
online <- Filter(isOnline,ZeusTracker$Status)

table <- table(ZeusTracker$Dateadded,ZeusTracker$Status)

plot(table)
