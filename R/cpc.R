cpc <- function(df = NULL, append = F){
  dataframe <- df
  clicks <- get('clicks')
  spend <- get('spend')
  cpc <- spend/clicks
  if(append){
    dataframe <- data.frame(dataframe, cpc)
    return(dataframe)
    } else 
      return(cpc)
}