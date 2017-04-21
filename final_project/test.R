library(dplyr)
library(tidyr)
full.data <- read.csv('MERGED2014_15_PP.csv', stringsAsFactors=FALSE)

filtered.data <- select(full.data, UNITID, OPEID, OPEID6, INSTNM, CITY, 
                        STABBR, ZIP, ADM_RATE_ALL)
