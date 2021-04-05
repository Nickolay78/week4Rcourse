library (dplyr)
outcome1 <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
#head(outcome)
outcome1[, 11] <- as.numeric(outcome1[, 11])
## You may get a warning about NAs being introduced; that is okay
hist(outcome1[, 11])

## Важно, если естественный процесс, значит такое должно 
## быть и в милицейской статистике
## Может это и ответ. Где в в статистике РНОРМ
