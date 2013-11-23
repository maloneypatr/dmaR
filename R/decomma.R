decomma <- function(x, numeric = F){
  require(stringr)
  x <- str_replace(x, ',', '')
  x <- ifelse(numeric, as.numeric(x), x)
  return(x)
}