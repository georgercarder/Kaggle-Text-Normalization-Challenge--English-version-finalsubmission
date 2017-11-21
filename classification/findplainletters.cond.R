#!/bin/Rscript        
        

    
        if(trn$class[i]=="PLAIN"){
            if(trn$sentence_id[i-1]==trn$sentence_id[i]){
            cachePLAIN<-union(cachePLAIN,trn$before[i-1])
            }
            

        }
        if(trn$class[i]=="LETTERS"){
            if(trn$sentence_id[i-1]==trn$sentence_id[i]){
            cacheLETTERS<-union(cacheLETTERS,trn$before[i-1])
            }
            
        }
            
    
