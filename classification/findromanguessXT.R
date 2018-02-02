#!/bin/Rscript

  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachecardX)){
    romanoptionXT[i,1]=1
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cachelettersX)){
    romanoptionXT[i,2]=1 #2
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cacheordX)){
    romanoptionXT[i,3]=1 #3
  }
  if(tst$sentence_id[i-1]==tst$sentence_id[i]&(tst$before[i-1] %in% cacheplainX)){
    romanoptionXT[i,4]=1 #4
  }
  if(sum(romanoptionXT[i,])>0){
    pr<-romanoptionXT[i,]*romprobsX
    guess=0
    while(guess==0){
        #guess<-sample(romanoptionXT[i,],1,replace=FALSE,prob=romprobsX)
        #guess<-romanoptionXT[i,which(romprobsX=max(romprobsX))]
      guess<-which(pr==max(pr))
    }
  }
  if(sum(romanoptionXT[i,])==0){
    guess=0
       # guess<-sample(c(1,2,3,4),1,replace=FALSE,prob=romprobsX)
    guess<-c(1,2,3,4)[which(romprobsX==max(romprobsX))]
  }
  romanguessXT[i]<-roms[as.integer(guess)]

