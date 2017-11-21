#!/bin/Rscript

library(stringr)
dys<-c("mon","tue","wed","thu","fri","sat","sun")
days<-c("monday","tuesday","wednesday","thursday","friday","saturday","sunday")
DAYSY<-cbind(dys,days)
mons<-c("jan","feb","mar","apr","may","jun","jul","aug","sep","oct","nov","dec")
months<-c("january","february","march","april","may","june","july","august","september","october","november","december")
MONTHYY<-cbind(mons,months)

#dmy
A<-gsub(" +"," ",gsub("[-,\\.]"," ",tst$before[tst$Classs=="DATE"&grepl("^[0-9]",tst$before)&grepl("[0-9]{4}$",gsub(",$","",tst$before))&grepl("[a-zA-Z]",tst$before)&!grepl("s$",tst$before)]))


B<-gsub(" +"," ",gsub("[-,\\.]"," ",tst$before[tst$Classs=="DATE"&!grepl("^[0-9]",tst$before)&grepl("[0-9]{4}$",gsub(",$","",tst$before))&grepl("[a-zA-Z]",tst$before)&!grepl("s$",tst$before)]))

#my
B1<-B[str_count(B," ")==1]
#mdy
B2<-B[str_count(B," ")==2]
##########################################################
N<-length(A)
AAFT<-rep("",N)
i=1
while(i<=N){
    year<-gsub(".* ","",A[i])
    source("year.R")
    d<-as.double(gsub("[a-zA-Z]","",gsub(" .*","",A[i])))
    n<-d
    source("ordnumberwords.R")
    day<-word
    mon<-tolower(gsub(".*[ ]([^.]+)[ ].*","\\1",A[i]))
    if(nchar(mon)<=4){
        source("monthyy.R")
    }
    AAFT[i]<-gsub(" +"," ",stringi::stri_join("the ",day," of ",mon," ",yr))
    AAFT[i]<-gsub("^ +| +$","",AAFT[i])    
print(i)
i=i+1
}
#############################
N<-length(B)
BAFT<-rep("",N)
i=1
while(i<=N){
    if(str_count(B[i]," ")==1){
    year<-gsub(".* ","",B[i])
    source("year.R")
    mon<-tolower(gsub(" .*","",B[i]))
    if(nchar(mon)<=4){
        source("monthyy.R")
    }
    BAFT[i]<-gsub(" +"," ",stringi::stri_join(mon," ",yr))
    BAFT[i]<-gsub("^ +| +$","",BAFT[i])   
    } 
    if(str_count(B[i]," ")==2){
    year<-gsub(".* ","",B[i])  
    source("year.R")

    mon<-tolower(gsub(" .*","",B[i]))
    if(nchar(mon)<=4){
        source("monthyy.R")
    }

    d<-as.double(gsub("[a-zA-Z]","",gsub(".*[ ]([^.]+)[ ].*","\\1",B[i])))
    n<-d
    source("ordnumberwords.R")
    day<-word
    BAFT[i]<-gsub(" +"," ",stringi::stri_join(mon," ",day," ",yr))
    BAFT[i]<-gsub("^ +| +$","",BAFT[i])
    }
    if(str_count(B[i]," ")==3){
        dayw<-tolower(gsub(" .*","",B[i]))


        date<-gsub("^ +","",gsub("^[a-zA-Z]+","",B[i]))
        if(grepl("^[0-9]",date)){
            d<-as.double(gsub("[a-zA-Z]","",gsub(" .*","",date)))
            n<-d
            source("ordnumberwords.R")
            day<-word
            mon<-tolower(gsub(".*[ ]([^.]+)[ ].*","\\1",date))
            if(nchar(mon)<=4){
                source("monthyy.R")
            }
            year<-gsub(".* ","",date)
            source("year.R")
            BAFT[i]<-gsub(" +"," ",stringi::stri_join(dayw," the ",day," of ",mon," ",yr))
            BAFT[i]<-gsub("^ +| +$","",BAFT[i])

        }
        if(!grepl("^[0-9]",date)){
            year<-gsub(".* ","",date)  
            source("year.R")

            mon<-tolower(gsub(" .*","",date))
            if(nchar(mon)<=4){
                source("monthyy.R")
            }

            d<-as.double(gsub("[a-zA-Z]","",gsub(".*[ ]([^.]+)[ ].*","\\1",date)))
            n<-d
            source("ordnumberwords.R")
            day<-word
            BAFT[i]<-gsub(" +"," ",stringi::stri_join(dayw," ",mon," ",day," ",yr))
            BAFT[i]<-gsub("^ +| +$","",BAFT[i])

        }

    }
##
print(i)    
i=i+1
}

tst$after[tst$Classs=="DATE"&grepl("^[0-9]",tst$before)&grepl("[0-9]{4}$",gsub(",$","",tst$before))&grepl("[a-zA-Z]",tst$before)&!grepl("s$",tst$before)]=AAFT

tst$after[tst$Classs=="DATE"&!grepl("^[0-9]",tst$before)&grepl("[0-9]{4}$",gsub(",$","",tst$before))&grepl("[a-zA-Z]",tst$before)&!grepl("s$",tst$before)]=BAFT


