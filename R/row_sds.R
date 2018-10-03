#' Compute the row standard deviations from a dataframe
#' 
#' Credit: Adapted from Stephen Cohen on twitter
#' 
#' @param df A data frame to process
#' 
#' @param na.rm A boolean. Default: False (remove NA values)
#' 
#' @return row standard deviations
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' df <- data.frame(x=c(1.0, 1.5, 2.0, 2.5, 3.0),
#'                  y=c(2.0, 3.0, 4.0, 5.0, 6.0))
#' print(row_sds(df, na.rm=FALSE))
#' 

row_sds <- function(df, na.rm){
  ret <- apply(X = df, MARGIN = 1, FUN = sd, na.rm=na.rm)
  return(ret)
}

