#' Compute the column medians from a dataframe
#' 
#' Credit: Adapted from Stephen Cohen on twitter
#' 
#' @param df A data frame to process
#' 
#' @param na.rm A boolean. Default: False (remove NA values)
#' 
#' @return column medians
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' df <- data.frame(x=c(1.0, 1.5, 2.0, 2.5, 3.0),
#'                  y=c(2.0, 3.0, 4.0, 5.0, 6.0))
#' print(col_medians(df, na.rm=FALSE))
#' 

col_medians <- function(df, na.rm){
  ret <- apply(X = df, MARGIN = 2, FUN = median, na.rm=na.rm)
  return(ret)
}

