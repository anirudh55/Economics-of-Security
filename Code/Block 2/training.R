slices <- c(66,31,3)
lbls <- c("Conduct training 66%", "No training 31%", "Unknown 3%")

pie(slices, labels=lbls, col=rainbow(3))
