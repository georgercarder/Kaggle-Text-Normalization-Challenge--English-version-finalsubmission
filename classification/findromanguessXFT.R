#!/bin/Rscript

  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachecardXF)){
    romanoptionXFT[i,1]=1
  }
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachelettersXF)){
    romanoptionXFT[i,2]=1 #2
  }
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cacheordXF)){
    romanoptionXFT[i,3]=1 #3
  }
  if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cacheplainXF)){
    romanoptionXFT[i,4]=1 #4
  }
  if(sum(romanoptionXFT[i,])>0){
    guess=0
    while(guess==0){
      pr<-romanoptionXFT[i,]*romprobsXF
       # guess<-sample(romanoptionXFT[i,],1,replace=FALSE,prob=romprobsXF)
       # guess<-romanoptionXFT[i,which(romprobsXF=max(romprobsXF))]
      guess<-which(pr==max(pr))
    }
  }
  if(sum(romanoptionXFT[i,])==0){
    guess=0
        #guess<-sample(c(1,2,3,4),1,replace=FALSE,prob=romprobsXF)
    guess<-c(1,2,3,4)[which(romprobsXF==max(romprobsXF))]
  }
  romanguessXFT[i]<-roms[as.integer(guess)]

