#' Remove the dollar sign from a vector
#' 
#' Remove the dollar sign from a vector
#' 
#' @param x a vector
#' @param convert logical.  Defaults to false.  If true, vector is converted to numeric.
#' 
#' @return A vector of length(x) with the dollar sign removed
#' 
#' @examples 
#' x <- c('$3.44', '$28,339')
#' dedollar(x)
#' [1] '3.44' '29,339'
#' 
#' y <- C('$3.44', '$42.33')
#' dedollar(y, convert = T)
#' [1] 3.44   42.33
#' 
#' @export

dedollar <- function(x, convert = FALSE){
  x <- sub('\\$', '', x)
  if(convert)
    return(as.numeric(x)) else 
      x
}
