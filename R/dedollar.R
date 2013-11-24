dedollar <- function(x, fillblanks = NULL, convert = FALSE){
  require(stringr)
  xchar <- str_replace(x, '\\$', '')
  xfill <- ifelse(xchar == '', fillblanks, xchar)
  if(convert)
    return(as.numeric(xfill)) else 
      xfill
}