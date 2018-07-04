#' Ensure devtools are installed
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' ensure_devtools()
ensure_devtools <- function(){
  str.cran.repo <- 'http://cran.revolutionanalytics.com/'
  str.lib <- .Library
  if ("devtools" %in% installed.packages()){
    print('devtools already installed')
  }else{
    install.packages("devtools",repos=str.cran.repo,
                     dep=TRUE,lib=str.lib)
    print('devtools installed')
    
  }
}
