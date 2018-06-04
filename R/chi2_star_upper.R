#' Analyze the variance from a dataset using the chi**2 distribution
#'
#' @param n The number of observations (real number)
#' @param sigma2_samp The variance for the sample
#' @param sigma2_pop The desired variance for the population. H0 is less than or equal to this.
#' @param upper_bound The upper bounnd for the plot (default 70) 
#' @param conf_level The desired confidence level (default 0.95)
#' 
#' @return A dataframe
#' 
#' @import pander
#' 
#' @export
#' 
#' @examples
#' # From Johnson-Kuby-4th-ed, Sect 9.3-Part-2-Hypothesis-Testing, Ex-9.14-p454
#' library(statshelpR)
#' chi2_star_upper (28, 0.007, 0.004, upper_bound=70, conf_level=0.95)
#' 
#'
chi2_star_upper <- function(n, sigma2_samp, sigma2_pop, upper_bound=70, conf_level=0.95){
  df <- n - 1
  varTest <- sigma2_pop
  varExp <- sigma2_samp
  
  chi2Test <- qchisq(conf_level, df)
  chi2Star <- df*varExp/varTest
  
  res <- c(chi2Test, chi2Star)
  names(res) <- c("chi2Test", "chi2Star")
  
  oMar <- par('mar')
  par(mar=c(5.1,4.1,1.1,1.1))
  x <- pchisq(chi2Test, df, lower.tail=FALSE)
  curve(dchisq(x, df), col='red', main = "",
        from=0,to=upper_bound, xlab=expression(chi**2),
        ylab="density")
  xvec <- seq(chi2Test, upper_bound,length=101)
  pvec <- dchisq(xvec,df)
  polygon(c(xvec,rev(xvec)),c(pvec,rep(0,length(pvec))),
          col=adjustcolor("black",alpha=0.3))
  abline(v=chi2Star)
  
  return(res)
}
