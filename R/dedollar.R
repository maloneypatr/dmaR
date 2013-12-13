dedollar <- function(x, convert = FALSE){
  require(stringr)
  x <- str_replace(x, '\\$', '')
  if(convert)
    return(as.numeric(x)) else 
      x
}
