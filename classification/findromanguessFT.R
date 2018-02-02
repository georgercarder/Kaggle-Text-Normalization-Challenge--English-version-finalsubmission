#!/bin/Rscript
             
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachecardF)){
    romanoptionFT[i,1]=1
  }
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachelettersF)){
    romanoptionFT[i,2]=1 #2
  }
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cacheordF)){
    romanoptionFT[i,3]=1 #3
  }
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cacheplainF)){
    romanoptionFT[i,4]=1 #4
  }  
  if(sum(romanoptionFT[i,])>0){
    guess=0
    while(guess==0){
      pr<-romanoptionFT[i,]*romprobsFT
        #guess<-sample(romanoptionFT[i,],1,replace=FALSE,prob=romprobsFT)
        #guess<-romanoptionFT[i,which(romprobsFT=max(romprobsFT))]
      guess<-which(pr==max(pr))
    }
  }
  if(sum(romanoptionFT[i,])==0){
    guess=0
    
        #guess<-sample(c(1,2,3,4),1,replace=FALSE,prob=romprobsFT)
    guess<-c(1,2,3,4)[which(romprobsFT==max(romprobsFT))]
  }
  romanguessFT[i]<-roms[as.integer(guess)]

