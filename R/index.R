index <- function(x, base = 'mean'){
  xMean <- mean(x)
  xMedian <- median(x)
  if(base == 'median')
    return(x/xMedian*100) else
      (return(x/xMean*100))
}