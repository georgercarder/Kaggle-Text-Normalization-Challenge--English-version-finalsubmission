#!/bin/Rscript

#ints<-c("CARDINAL","DATE","DIGIT","DECIMAL","TELEPHONE")
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&((tst$before[i-1] %in% cachecardint)|(tst$before[i-1] %in% cachedecimalint))){
    intoptionT[i,1]=1
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&((tst$before[i-1] %in% cachedateint)|(tst$before[i-1] %in% cachetelephoneint))){
    intoptionT[i,2]=1
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachedigitint)){
    intoptionT[i,3]=1 #3
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachedecimalint)){
    intoptionT[i,4]=1
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachetelephoneint)){
    intoption[i,5]=1 #3
  }   
  if(sum(intoptionT[i,])>0){
    guess=0
    while(guess==0){
      pr<-intoptionT[i,]*intprobs
       # guess<-sample(intoptionT[i,],1,replace=FALSE,prob=intprobs)
        #guess<-intoptionT[i,which(intprobs=max(intprobs))]
      guess<-which(pr==max(pr))
    }
  }
  if(sum(intoptionT[i,])==0){
    guess<-1
  }
  intguessT[i]<-ints[as.integer(guess)]

