optimizer <- function(data, dimension, metric) {
  
  require(dplyr)
  require(gdata)
  
  # initialize empty data frame to store results
  df <- data.frame()
  
  data <- data
  data$dimension <- eval(substitute(data$dimension))
  data$metric <- eval(substitute(data$metric))
  
  dimension <- unique(data$dimension)
  
  for(dim in dimension){
    
    a <- filter(data, dimension == dim)
    b <- filter(data, dimension != dim)
    
    tTest <- t.test(a$metric, b$metric)
    
    ab <- data.frame(t(tTest$estimate))
    ab$dimension <- dim
    ab$p.value <- tTest$p.value
    ab$significant <- ifelse(tTest$p.value < .05, TRUE, FALSE)
    
    ab <- ab %.%
      transform(diff = mean.of.x - mean.of.y) %.%
      rename.vars(c('mean.of.x', 'mean.of.y'),
                  c('dim_average', 'other_average'),
                  info = F)
    
    ab <- select(ab, dimension, dim_average, other_average,
                 diff, p.value, significant)  
    
    df <- rbind(df, ab)
    
  }
  
  df %.%
    arrange(diff)
   
}