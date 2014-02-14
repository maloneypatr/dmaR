#' Remove the comma from each observation within a vector
#' 
#' Remove the comma from each observation within a vector
#' 
#' @param x a vector
#' @param convert logical.  Defaults to false.  If true, vector is converted to numeric.
#' 
#' @return A vector of length(x) with the comma removed
#' 
#' @examples 
#' x <- c('3,344', '28,339')
#' decomma(x)
#' [1] '3344' '29,339'
#' 
#' y <- c('3,344', '28,339')
#' dedollar(y, convert = T)
#' [1] 3444 28339
#' 
#' @export
decomma <- function(x, convert = F){
  require(stringr)
  x <- str_replace_all(x, ',', '')
  if(convert)
    return(as.numeric(x)) else 
      x
}