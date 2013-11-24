spendSolve <- 
function(df, yvar = NULL, xvar = NULL, ylog = T, xlog = T, goal = NULL){
  df <- df
  yvar <- eval(substitute(df$yvar))
  yvar <- ifelse(ylog, log(yvar), yvar)
  xvar <- eval(substitute(df$xvar))
  xvar <- ifelse(xlog, log(xvar), xvar)
  model <- lm(yvar ~ xvar, data = df)
  intercept <- data.frame(summary(model)$coef)$Estimate[1]
  slope <- data.frame(summary(model)$coef)$Estimate[2]
  goalStep1 <- log(goal) - intercept
  goalStep2 <- goalStep1/slope
  goalStep3 <- exp(goalStep2)
  return(goalStep3)
}