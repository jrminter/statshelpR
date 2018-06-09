#' @name meanTime25
#' @aliases meanTime25
#' @title A large population of mean running times prepared by resampling.
#' @description A list of 100000 mean values of 25 running times resampled
#' from the Cherry Blossom run created from data in the openintro package.
#' @docType data
#' @usage data(meanTime25)
#' @format A list with 100000 real values.
#' @source Created from the openintro data with the following code:
#' library(openintro)
#' data(run10Samp)
#' df  <- data.frame(time=run10Samp$time)
#' sampleSize <- 100000
#' meanTime25 <- c()
#' i <- 1
#' while(i<= sampleSize) {
#'    sel <- df[sample(nrow(df), 25), ]
#'    mu <- mean(sel)
#'    meanTime25 <-c(meanTime25,mu)
#' i=i+1
#' }
#' print(summary(meanTime25))
#' save(meanTime25, file="./meanTime25.rda")
#' @author John Minter
NULL

