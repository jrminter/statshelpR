% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/chi2_star_upper.R
\name{chi2_star_upper}
\alias{chi2_star_upper}
\title{Analyze the variance from a dataset using the chi**2 distribution}
\usage{
chi2_star_upper(
  n,
  sigma2_samp,
  sigma2_pop,
  upper_bound = 70,
  conf_level = 0.95
)
}
\arguments{
\item{n}{The number of observations (real number)}

\item{sigma2_samp}{The variance for the sample}

\item{sigma2_pop}{The desired variance for the population. H0 is less than or equal to this.}

\item{upper_bound}{The upper bounnd for the plot (default 70)}

\item{conf_level}{The desired confidence level (default 0.95)}
}
\value{
A dataframe
}
\description{
Analyze the variance from a dataset using the chi**2 distribution
}
\examples{
# From Johnson-Kuby-4th-ed, Sect 9.3-Part-2-Hypothesis-Testing, Ex-9.14-p454
library(statshelpR)
chi2_star_upper (28, 0.007, 0.004, upper_bound=70, conf_level=0.95)


}
