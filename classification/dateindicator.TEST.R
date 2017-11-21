#!/bin/Rscript

dateindT<-rep(0,nrow(tst))



hasdateind<-unique(trn$sentence_id[grepl("^in$|^year$|^since$|^before$|^after$|^until$|^date$|^illustrated|^century$|^from$|^film$|book|^album$|^music$",trn$before)])

dateindT[tst$sentence_id %in% hasdateind]=1

###check accuracy of dateind

reallyhasdate<-unique(trn$sentence_id[trn$class=="DATE"])

#length(reallyhasdate)

#length(hasdateind)

#length(intersect(hasdateind,reallyhasdate))

#length(intersect(hasdateind,reallyhasdate))/length(reallyhasdate)
#[1] 0.3324588






