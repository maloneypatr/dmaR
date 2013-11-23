spendSolve <- function(df, yvar = NULL, xvar = NULL, goal = NULL){
  df <- df
  yvar <- eval(substitute(df$yvar))
  xvar <- eval(substitute(df$xvar))
  model <- lm(log(yvar) ~ log(xvar), data = df)
  intercept <- data.frame(summary(model)$coef)$Estimate[1]
  slope <- data.frame(summary(model)$coef)$Estimate[2]
  goalStep1 <- log(goal) - intercept
  goalStep2 <- goalStep1/slope
  goalStep3 <- exp(goalStep2)
  return(goalStep3)
}