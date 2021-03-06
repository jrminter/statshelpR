% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/install_new_bioconductor.R
\name{install_new_bioconductor}
\alias{install_new_bioconductor}
\title{Install new packages from bioconductor}
\usage{
install_new_bioconductor(pkg, loadBC = TRUE)
}
\arguments{
\item{pkg}{String. The package to install}

\item{loadBC}{Boolean. Default TRUE. Do this for the first time.}
}
\description{
Install new packages from bioconductor
}
\examples{
library(statshelpR)
install_new_bioconductor("EBImage", TRUE)

}
