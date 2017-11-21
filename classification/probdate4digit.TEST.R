#!/bin/Rscript



P=111726/116788

print("may need to run dateindicator.R")
P2=length(intersect(hasdateind,reallyhasdate))/length(reallyhasdate)
PROB=0
n<-nrow(tst)
probdatevectT<-rep(0,n)


i=1

while(i<=n){
    PROB=P+P2*dateindT[i]
    if(PROB>1){
        PROB=1
    }
    probdatevectT[i]=sample(c(0,1),1,replace=FALSE,prob=c(1-PROB,PROB))

#print(i)
i=i+1
PROB=0
}

save(probdatevectT,file="probdatevectT")

###

#guessdate<-unique(tst$sentence_id[probdatevectT==1&grepl("^[ 012][0-9]{3}$",trn$before)])
#isdate<-unique(trn$sentence_id[grepl("^[ 012][0-9]{3}$",trn$before)&trn$class=="DATE"])
#coincide<-intersect(guessdate,isdate)


#length(guessdate)
#length(isdate)
#length(coincide)

