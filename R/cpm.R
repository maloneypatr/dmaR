cpm <- function(df = NULL, append = F){
  dataframe <- df
  impressions <- get('impressions')/1000
  spend <- get('spend')
  cpm <- spend/impressions
  if(append){
    dataframe <- data.frame(dataframe, cpm)
    return(dataframe)
    } else 
      return(cpm)
}