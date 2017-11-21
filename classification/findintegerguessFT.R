#!/bin/Rscript


#ints<-c("CARDINAL","DATE","DIGIT","DECIMAL","TELEPHONE")
         if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachecardintF)){
        intoptionFT[i,1]=1
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachedateintF)){
        intoptionFT[i,2]=1
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachedigitintF)){
        intoptionFT[i,3]=1 #3
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachedecimalintF)){
        intoptionFT[i,4]=1 #4
        }
        if(tst$sentence_id[i+1]==tst$sentence_id[i]&(tst$before[i+1] %in% cachetelephoneintF)){
        intoptionFT[i,5]=1 #5
        }   
       
    
    if(sum(intoptionFT[i,])>0){
    
    guess=0
    while(guess==0){

        pr<-intoptionFT[i,]*intprobsF
        #guess<-sample(intoptionFT[i,],1,replace=FALSE,prob=intprobsF)
        #guess<-intoptionFT[i,which(intprobsF=max(intprobsF))]
        guess<-which(pr==max(pr))


    }
    }
    if(sum(intoptionFT[i,])==0){
    

    
        guess<-1
    }
    
    


    intguessFT[i]<-ints[as.integer(guess)]




