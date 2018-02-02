#!/bin/Rscript
             
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachecardbef)){
    romanoptionT[i,1]=1
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachelettersbef)){
    romanoptionT[i,2]=1 #2
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cacheordbef)){
    romanoptionT[i,3]=1 #3
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cacheplainbef)){
    romanoptionT[i,4]=1 #4
  }  
  if(sum(romanoptionT[i,])>0){
    guess=0
    while(guess==0){
      pr<-romanoptionT[i,]*romprobs
        #guess<-sample(romanoptionT[i,],1,replace=FALSE,prob=romprobs)
        #guess<-romanoptionT[i,which(romprobs=max(romprobs))]
      guess<-which(pr==max(pr))
    }
  }
  if(sum(romanoptionT[i,])==0){
    guess=0
       # guess<-sample(c(1,2,3,4),1,replace=FALSE,prob=romprobs)
    guess<-c(1,2,3,4)[which(romprobs==max(romprobs))]
  }
  romanguessT[i]<-roms[as.integer(guess)]
