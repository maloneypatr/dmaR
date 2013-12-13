listNames <- function(df){
  require(plyr)
  require(gdata)
  listNames <- setNames(as.list(seq_along(df)), names(df))
  dataFrame <- ldply(listNames)
  dataFrame <- dataFrame[, c(2, 1)]
  dataFrame <- rename.vars(dataFrame, 
                           names(dataFrame),
                           c('ColNumber', 'ColName'),
                           info = F)
  return(dataFrame)
}