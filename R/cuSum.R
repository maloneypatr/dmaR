cuSum <- function(x){
  avg <- mean(x)
  xOne <- x[1] - avg
  xAfterOne <- x[2:length(x)]
  xMinusAvg <- xAfterOne - avg
  cuSum <- cumsum(c(xOne, xMinusAvg))
  return(cuSum)
}