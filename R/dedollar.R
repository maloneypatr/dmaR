dedollar <- function(x, fillblanks = NULL, convertNumber = FALSE){
  require(stringr)
  xchar <- str_replace(x, '\\$', '')
  xfill <- ifelse(xchar == '', fillblanks, xchar)
  xfinal <- ifelse(convertNumber == T, as.numeric(xfill), xfill)
  return(xfinal)
}