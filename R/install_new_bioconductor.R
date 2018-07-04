#' Install new packages from bioconductor
#' 
#' @param pkg String. The package to install
#' @param loadBC Boolean. Default TRUE. Do this for the first time.
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' install_new_bioconductor("EBImage", TRUE)
#' 
install_new_bioconductor<-function(pkg, loadBC=TRUE){
  if(loadBC == TRUE){
    source("http://bioconductor.org/biocLite.R")
  }
  if (pkg %in% installed.packages()){
    str.line <- paste0("Package ", pkg, " already installed \n")
    cat(str.line)
  }else{
    str.line <- paste0("Package ", pkg, " not found, so installing with dependencies... \n")
    cat(str.line)
    cat("Press CTRL C to abort.\n")
    cat()
    Sys.sleep(5)
    biocLite(pkg, dep=TRUE, .Library)
  }
}
