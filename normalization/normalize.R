#!/bin/Rscript

source("buildroman.R")

library(stringr)

n<-nrow(tst)
tag=0

after<-rep("",n)
tst$after<-after

source("normalizePLAINCHEMS.R")

##strangeness with capitalization
source("normalizeBRIT.DIFF.R")

##strangeness with capitalization
#source("normalizePLAINBRITISH.R")
#tst$after[tst$Classs=="PLAINBRITISH"&tst$after==""]=tst$before[tst$Classs=="PLAINBRITISH"&tst$after==""]

source("normalizePLAIN.R")

source("normalizePUNCT.R")

source("normalizeVERBATIM.R")

source("normalizeLETTERS.R")

source("normalizeDIGITS.R")

source("normalizeCARDINAL.R")

source("normalizeORDINAL.R")### 10.27 doing good!

source("normalizeDECIMAL.R")### 10.27 doing good!

source("normalizeFRACTION.R")  ## 10.27 doing good!########

source("normalizeTELEPHONE.R") ## 10.27 doing good!

source("normalizeTIME.R") ## 10.29 doing good!

source("normalizeDATE.R") ##non alpha dates 10.29 doing good!xxxx

source("normalizeDATEss.R") ## 10.29 doing good!xxxx

source("normalizeDATE.ALPHA.R") ##10.31 doing good!XXXX

source("normalizeDATE.BC.R") ##10.31 doing good!XXXX

source("normalizeDATE.md.dm.R") ##looks good so farxxx

source("normalizeMONEY.R") ##looks good so farxxx

source("normalizeMEASURE.R")  ##XXX

source("normalizeADDRESS.R") ##looks good so farXXX

source("normalizeELECTRONIC.R")  #looks good so farXX

##clean up last of PLAINBRITISH

tst$after[tst$after==""&tst$Classs=="PLAINBRITISH"]=tst$before[tst$after==""&tst$Classs=="PLAINBRITISH"]

tst$after[tst$after==""&tst$Classs=="PLAIN"]=tst$before[tst$after==""&tst$Classs=="PLAIN"]

##may need to fix this
source("normalizeDATE.remnants.R")

source("normalizeDATE.mdy.R")

A<-tst$before[tst$after==""&grepl("^[a-zA-Z]+$",tst$before)]
A<-gsub(""," ",A)
A<-tolower(A)
A<-gsub(" +"," ",gsub("^ +| +$","",A))

tst$after<-gsub("^ +| +$","",gsub(" +"," ",tst$after))
after<-tst$after
save(after,file="after")

tst$after[tst$after==""&grepl("^[a-zA-Z]+$",tst$before)]=A

tst$after[tst$after==""]=tst$before[tst$after==""]


tst$after<-gsub("^ +| +$","",gsub(" +"," ",tst$after))
after<-tst$after
save(after,file="after")


