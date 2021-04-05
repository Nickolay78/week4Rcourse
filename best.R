best <- function(state, outcome) {
  ## Return hospital name in that state with lowest 30-day death
## Matrix with numbers of columns depends of "outcome"
  c1<-matrix (ncol = 3,nrow = 1)
  c1[1,1:3]<-c(11,17,23)
  colnames(c1)<-c("heart attack","heart failure", "pneumonia") 
  
  ## Check that state and outcome are valid
  if ((state%in%outcome1$State)&
      (outcome%in%c("heart attack",
                    "heart failure", 
                    "pneumonia"))) {
    ## Read outcome data
    vybst<-filter(outcome1,State==state)
    vybst[,c1[1,outcome]]<-as.numeric( vybst[,c1[1,outcome]])
  ## Find minimum acording to outcome
    minim<-min(vybst[,c1[1,outcome]],na.rm = TRUE)
  ## Find all rows with minimum
  vyb2<-filter(vybst,vybst[,c1[1,outcome]]==minim)  
 ## Arrange rows by Hospital.Name
  arrange(vyb2,Hospital.Name)
  
  print (vyb2$Hospital.Name[1])
  } 
  else {print ("Wrong format")}
}

