cpa <- function(df = NULL, append = F){
  dataframe <- df
  conversions <- get('conversions')
  spend <- get('spend')
  cpa <- spend/conversions
  if(append){
    dataframe <- data.frame(dataframe, cpa)
    return(dataframe)
    } else 
      return(cpa)
}