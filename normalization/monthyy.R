#!/bin/Rscript

#given mon

mon<-substr(mon,1,3)

if(mon %in% mons){
  mon<-MONTHYY[MONTHYY[,1]==mon,2]
}

if(mon %in% dys){
  mon<-DAYSY[DAYSY[,1]==mon,2]
}


