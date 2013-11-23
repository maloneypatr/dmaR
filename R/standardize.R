standardize <- function(x, conf.level = .95){
  xMean <- mean(x, na.rm = T)
  xSd <- sd(x, na.rm = T)
  confLevel <- 1 - ((1 - conf.level)/2)
  confLevel <- qnorm(confLevel)
  y <- (x - xMean)/(confLevel*xSd)
  return(y)
}