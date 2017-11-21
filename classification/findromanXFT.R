#!/bin/Rscript

#build cache for cardinal letters ordinal plain

n<-nrow(tst)

rommaybeXF<-rep("",nrow(trn))
trn$rommaybeXF<-rommaybeXF
trn$rommaybeXF[trn$token_id==0&grepl("^[VXLCDM]$",trn$before)]=1
load("cachecardXF")
load("cachelettersXF")
load("cacheordXF")
load("cacheplainXF")

rommaybeXFT<-rep("",n)
tst$rommaybeXFT<-rommaybeXFT

i=1
while(i<=n){

    if(tst$token_id[i]==0){
    if(grepl("^[VXLCDM]$",tst$before[i])){
        source("findromanXFT.cond.R")
    }
    }
#print(i)
i=i+1
}

source("findroman2XFT.R")
