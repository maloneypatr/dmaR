index <- function(x, base = 'mean', inv = F){
  
  xMean <- mean(x)
  xMedian <- median(x)
  
  if(inv){
    
    if(base == 'median')
      return(xMedian/x*100) else
        (return(xMean/x*100))
    
  } else {
    
    if(base == 'median')
      return(x/xMedian*100) else
        (return(x/xMean*100))
  
  }
}