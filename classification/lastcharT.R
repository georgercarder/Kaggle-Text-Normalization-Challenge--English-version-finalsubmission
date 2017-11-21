#!/bin/Rscript

i=1
islast<-rep(0,nrow(tst))
while(i<nrow(tst)){
if(tst$token_id[i+1]<tst$token_id[i]){

    islast[i]=1

}
print(i)
i=i+1
}

save(islast,file="islast")
