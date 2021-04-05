library (dplyr)
outcome1 <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome1<-arrange(outcome1,State)