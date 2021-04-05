rankall <- function(outcome, num = "best") {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## For each state, find the hospital of the given rank
  ## Return a data frame with the hospital names and the
  ## (abbreviated) state name

  statelist<-unique(outcome1$State)

  datres<-data.frame (state=statelist,
                      hospital=statelist)
  
  for (i in 1:length(statelist))
  {datres$hospital[i]<-rankhospital(state = statelist[i],outcome,num)}
  
  return (datres)
}
