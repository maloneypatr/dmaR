ctr <- function(df = NULL, append = F){
  dataframe <- df
  clicks <- get('clicks')
  impressions <- get('impressions')
  ctr <- clicks/impressions
  if(append){
    dataframe <- data.frame(dataframe, ctr)
    return(dataframe)
    } else 
      return(cpa)
}