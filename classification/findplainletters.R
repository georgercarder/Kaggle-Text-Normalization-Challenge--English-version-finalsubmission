#!/bin/Rscript

n<-nrow(tst)
plainlettersguessT<-rep("",n)



i=2
while(i<=n){

    if(tst$Classs[i]==""){
        if(tst$before[i-1] %in% cachePLAIN.diff){
            plainlettersguessT[i]="PLAIN"
        }
        if(tst$before[i-1] %in% cacheLETTERS.diff){
            plainlettersguessT[i]="LETTERS"
        }
        if(tst$before[i-1] %in% intcache){
            plainlettersguessT[i]="PLAIN" #gamble on this one
        }
    }


print(i)
i=i+1
}

save(plainlettersguessT,file="plainlettersguessT")
