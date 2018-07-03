#' Install a new package
#' 
#' @param pkg String. The package to install
#' @param repo Sring, Repository. Default: 'http://cran.revolutionanalytics.com/'
#' @param lib Library. Default: .Library
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' install_new("scales")

install_new <- function(pkg,
                        repo = "http://cran.revolutionanalytics.com/",
                        lib = .Library){
  if (pkg %in% installed.packages()){
  }else{
    utils::install.packages(pkg,
                            repos = repo,
                            dep = TRUE, lib = lib)
  }
}
