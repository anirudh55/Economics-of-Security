slices <- c(33, 61,5)
lbls <- c("Measured effectiveness 33%", " Effectiveness not measured 61%", "Unknown 5%")


pie(slices, labels=lbls, col=rainbow(3))

