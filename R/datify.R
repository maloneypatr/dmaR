datify <- 
  function(var, format) {
    require(lubridate)
    date <- do.call('as.Date', list(var, format))
    dayOfWeek <- wday(date, label = T)
    weekSunday <- floor_date(date, 'week')
    weekMonday <- floor_date(date, 'week') + 1
    month <- month(date, label = T)
    quarter <- paste('Q', quarter(date), sep = '')
    df <- data.frame(date, dayOfWeek, weekSunday, weekMonday, month, quarter)
    return(df)
}