#' Install new packages from github
#' 
#' @param pkg String. Package name
#' @param repo String. Repository path
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' install_new_github('rPeaks','jrminter')

install_new_github <- function(pkg, repo){
  library(devtools)
  theCmd <- paste0(repo,'/',pkg)
  if (pkg %in% installed.packages()){
    str.line <- paste0("Package ", pkg, " already installed \n")
    cat(str.line)
    } else {
      str.line <- paste0("Package ", pkg, " not found, so installing with dependencies... \n")
      cat(str.line)
      cat("Press CTRL C to abort.\n")
      cat()
      Sys.sleep(5)
      devtools::install_github(theCmd)
    }
}
