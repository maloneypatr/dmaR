vbr <- function(df = NULL, spend = NULL, metric = NULL, avg = T){
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
    avg_vbr <- average + vbr
    if(!avg) 
      answer <- vbr
    else 
      answer <- avg_vbr
    return(answer)
}