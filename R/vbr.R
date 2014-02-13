vbr <- function(df = NULL, spend = NULL, 
                metric = NULL, type = 'average'){
    if(is.null(df)){
      spend = spend 
      metric = metric
    } else {
      df <- df
      spend <- eval(substitute(df$spend))
      metric <- eval(substitute(df$metric))
    }
    spend_wo_dim <- sum(spend) - spend
    metric_wo_dim <- sum(metric) - metric
    ratio_wo_dim <- spend_wo_dim/metric_wo_dim
    vbr <- ratio_wo_dim - (sum(spend)/sum(metric))
    average <- sum(spend)/sum(metric)
    index <- (vbr + average)/average
    if(type == 'index')
      answer <- round(index*100, 0)
    else if(type == 'absolute')
      answer <- vbr
    else
      answer <- average + vbr
    return(answer)
}