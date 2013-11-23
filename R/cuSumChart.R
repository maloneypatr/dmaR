cuSumChart <- function(x, bound = NULL){
  require(ggplot2)
  require(reshape2)
  avg <- mean(x)
  xOne <- x[1] - avg
  xAfterOne <- x[2:length(x)]
  xMinusAvg <- xAfterOne - avg
  cuSum <- cumsum(c(xOne, xMinusAvg))
  df <- data.frame(index = 1:length(x), 
                   x = x, 
                   cuSum = cuSum)
  df <- melt(df, id.vars = 'index')
  chart <- ggplot(df, aes(x = index, group = variable, y = value)) +
    geom_line() +
    facet_grid(variable ~ .)
  return(chart)
}