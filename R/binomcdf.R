#' Compute the binomcdf function from TI calculators
#' 
#' Function from https://github.com/cran/distributions/blob/master/R/binomcdf.R
#' 
#' @param numtrials The number of trials (draws). Example: 5
#' @param p The probability of a single success Example: 13/52
#' @param x The number of successes. Example: (0,1,2,..)
#' 
#' @return the probability
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' binomcdf(5, 13.0/52.0, 0)

binomcdf <- function(numtrials, p, x){
  return(pbinom(x, size=numtrials, prob=p))
}
