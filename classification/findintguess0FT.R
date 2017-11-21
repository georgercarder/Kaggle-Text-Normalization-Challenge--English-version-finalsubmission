#!/bin/Rscript


#ints<-c("CARDINAL","DATE","DIGIT","DECIMAL","TELEPHONE")
             
         if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachecardint0F)){
        intoption0FT[i,1]=1
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachedateint0F)){
        intoption0FT[i,2]=1
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachedigitint0F)){
        intoption0FT[i,3]=1 #3
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachedecimalint0F)){
        intoption0FT[i,4]=1 #4
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachetelephoneint0F)){
        intoption0FT[i,5]=1 #5
        }   
       
    
    if(sum(intoption0FT[i,])>0){
    
    guess=0
    while(guess==0){

        pr<-intoption0FT[i,]*intprobs0F
       # guess<-sample(intoption0FT[i,],1,replace=FALSE,prob=intprobs0F)
       # guess<-intoption0FT[i,which(intprobs0F=max(intprobs0F))]

        guess<-which(pr==max(pr))
    }
    }
    if(sum(intoption0FT[i,])==0){
    
    
    
        guess<-1
    }
    
    


    intguess0FT[i]<-ints0[as.integer(guess)]



