defineVars <- function(df = NULL){

  df <- dat
  if(exists('clicks'))
    message('clicks is already defined')
    else {
      clicks <- readline('What is your clicks variable? ')
      clicks <<- eval(substitute(df$clicks))  
  }
  
  if(exists('impressions'))
    message('impressions is already defined')
    else {
      impressions <- readline('What is your impressions variable? ')
      impressions <<- eval(substitute(df$impressions))
  }
  
  if(exists('spend'))
    message('spend is already defined')
  else {
    spend <- readline('What is your spend variable? ')
    spend <<- eval(substitute(df$spend))
  }
  
  if(exists('conversions'))
    message('conversions is already defined')
  else {
    conversions <- readline('What is your conversions variable? ')
    conversions <<- eval(substitute(df$conversions))
  }

}