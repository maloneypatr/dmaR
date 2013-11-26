#' Calculate a cumulative sum ratio
#' 
#' Calculate a cumulative sum ratio
#' 
#' @param x a vector
#' @param y a vector
#' 
#' @return A vector of length(x), and length(y), that calculates the ratio between cumsum(x)/cumsum(y) at every corresponding observation
#' 
#' @details The cuRatio can be interpreted as a weighted average ratio for ordered data
#' 
#' @examples
#' data(dd)
#' cuRatio(dd$clicks, dd$impressions) # returns daily cumulative CTR
#' 
#' @export
cuRatio <- function(x, y){
  cuRatio <- cumsum(x)/cumsum(y)
  return(cuRatio)
}