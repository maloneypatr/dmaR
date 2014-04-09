#' Remove the percent sign from a vector
#' 
#' Remove the percent sign from a vector
#' 
#' @param x a vector
#' @param convert logical.  Defaults to false.  If true, vector is converted to numeric.
#' 
#' @return A vector of length(x) with the percent sign removed
#' 
#' @examples 
#' x <- c('$3.44', '$28,339')
#' depercent(x)
#' [1] '3.44' '29,339'
#' 
#' y <- C('$3.44', '$42.33')
#' depercent(y, convert = T)
#' [1] 3.44   42.33
#' 
#' @export
depercent <- function(x, convert = FALSE){
  x <- sub('\\%', '', x)
  if(convert)
    return(as.numeric(x)) else 
      x
}
