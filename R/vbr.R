vbr <- function(df, dim = NULL, spend = NULL, metric = NULL, avg = T){
    df <- df
    dim <- eval(substitute(df$dim))
    spend <- eval(substitute(df$spend))
    metric <- eval(substitute(df$metric))
    spend_wo_dim <- sum(spend) - spend
    metric_wo_dim <- sum(metric) - metric
    ratio_wo_dim <- spend_wo_dim/metric_wo_dim
    vbr <- ratio_wo_dim - (sum(spend)/sum(metric))
    average <- sum(spend)/sum(metric)
    avg_vbr <- average + vbr
    answer <- ifelse(!avg, vbr, avg_vbr)
    return(answer)
}