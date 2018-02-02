#!/bin/Rscript
             
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachecardPER)){
    romanoptionPERT[i,1]=1
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachelettersPER)){
    romanoptionPERT[i,2]=1 #2
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cacheordPER)){
    romanoptionPERT[i,3]=1 #3
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cacheplainPER)){
    romanoptionPERT[i,4]=1 #4
  }  
  if(sum(romanoptionPERT[i,])>0){
    guess=0
    while(guess==0){
      pr<-romanoptionPERT[i,]*romprobsPER
        #guess<-sample(romanoptionPERT[i,],1,replace=FALSE,prob=romprobsPER)
        #guess<-romanoptionPERT[i,which(romprobsPER=max(romprobsPER))]
      guess<-which(pr==max(pr))
    }
  }
  if(sum(romanoptionPERT[i,])==0){
    guess=0
        #guess<-sample(c(1,2,3,4),1,replace=FALSE,prob=romprobsPER)
    guess<-c(1,2,3,4)[which(romprobsPER==max(romprobsPER))]
  }
  romanguessPERT[i]<-roms[as.integer(guess)]
