#!/bin/Rscript


##TESTING: A script converting numeric representation of DIGITS to a text representation. 

#given n as a character

# parse n=a.b to get a and b separately
#find out if we reduce fractions. assuming not we continue
#n<-gsub("^\\.","0\\.",n)
if(grepl("^[0-9]",n)){
a<-as.double(gsub("\\..*","",n))
b<-gsub(".*\\.","",n)

n<-a
source("numberwords.R")

n<-b
if(b!="0"){
source("digitwords.R")
}
if(b=="0"){
wordb<-"zero"
}
}
if(grepl("^\\.",n)){
worda<-""
b<-gsub(".*\\.","",n)
n<-b
if(b!="0"){
source("digitwords.R")
}
if(b=="0"){
wordb<-"zero"
}
}

wordec<-stringi::stri_join(worda," point ",wordb)
wordec<-gsub("^ +| +$","",gsub("  +"," ",wordec))




print(wordec)
