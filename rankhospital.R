rankhospital <- function(state, outcome, num = "best") {
  ## Read outcome data
  ## Check that state and outcome are valid
  ## Return hospital name in that state with the given rank
    ## 30-day death rate
  c1<-matrix (ncol = 3,nrow = 1)
  c1[1,1:3]<-c(11,17,23)
  colnames(c1)<-c("heart attack","heart failure", "pneumonia") 
  
  ## Check that state and outcome are valid
  if ((state%in%outcome1$State)&
      (outcome%in%c("heart attack",
                    "heart failure", 
                    "pneumonia"))) {
    ## Read outcome data
    vyb<-filter(outcome1,State==state)
    vyb[,c1[1,outcome]]<-as.numeric( vyb[,c1[1,outcome]])
    vyb<-filter(vyb,!is.na(vyb[,c1[1,outcome]]))
    if (num=="best") {rank1<-1} else
      if (num=="worst") {rank1<-nrow (vyb)} else
        if ((num<=0)|(is.na(as.numeric(num)))) 
        {print ("Wrong NUM")
          stop(call. = FALSE)} else
          {rank1<-as.numeric (num)}
    
    
    vyb<-arrange(vyb,vyb$Hospital.Name)
    vyb<-arrange(vyb,vyb[,c1[1,outcome]])
    
    print (vyb$Hospital.Name[rank1])
  } else {
    if (state%in%outcome1$State) {print ("Invalid State")}
    if (outcome%in%c("heart attack",
                     "heart failure", 
                     "pneumonia")) {print ("Invalid Outcome")}
    
  }
}
 
  
  
