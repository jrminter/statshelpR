#' Calculate the z-star value for a confidence interval
#' 
#' We assume that the samples of interest are drawn from a Gaussian
#' distribution. We want to compute the z-star value to compute the
#' confidence interval for the desired mean'
#' 
#' @param p The probability of interest, e.g. 0.95
#' 
#' @return The z-score
#' 
#' @examples
#' z_star <- calc_z_star(0.95)
#' print(z_star)
#' 
#' @export
#' 
calc_z_star <- function(p){
  x <- 0.5*(1.0-p)
  z <- qnorm(x, lower.tail = FALSE)
  return(z)
}
