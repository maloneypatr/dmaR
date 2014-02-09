listUniques <- function(x){
  x <- unique(x)
  df <- data.frame(uniqueVariable = x)
  df
}