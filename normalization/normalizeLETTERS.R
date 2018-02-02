#!/bin/Rscript

tst$after[tst$Classs=="LETTERS"&nchar(tst$before)>1]=gsub(" ' ","'",gsub("é","e acute",gsub(" ' s","'s",gsub("&","and",substr(gsub(""," ",tolower(gsub(" |\\.|-","",tst$before[tst$Classs=="LETTERS"&nchar(tst$before)>1]))),2,nchar(gsub(""," ",tolower(gsub(" |\\.|-","",tst$before[tst$Classs=="LETTERS"&nchar(tst$before)>1]))))-1)))))

tst$after[tst$Classs=="LETTERS"&nchar(tst$before)==1]=tst$before[tst$Classs=="LETTERS"&nchar(tst$before)==1]

##exception for URLs > u r l's

tst$after[tst$Classs=="LETTERS"&grepl("[A-Z]+s$",tst$before)]=gsub(" ' ","'",gsub("é","e acute",gsub(" s$","'s",gsub(" $|^ ","",gsub(""," ",tolower(tst$before[tst$Classs=="LETTERS"&grepl("[A-Z]+s$",tst$before)]))))))

