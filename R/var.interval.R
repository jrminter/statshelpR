#' Analyze the variance from a dataset using the chi**2 distribution
#' 
#' This was developed from [eda358.r](https://www.itl.nist.gov/div898/handbook/eda/section3/eda358.r)
#' I modified the function to return a dataframe. The user can print
#' the dataframe or use functions like kable to output a table in
#' a Rmarkdown document. The original function supplied a default
#' 95% confidence interval and let the user change it. However the 
#' 95% CI was hardcoded in the body of the original function.
#'
#' @param data A vector of data values (real number)
#' @param sigma0 The target standard deviation
#' @param conf.level The desired confidence level (0.95)
#' 
#' @return A dataframe with results
#' 
#' @examples
#' library(statshelpR)
#' # Data from Example 16 page 334 Larsen: Thicknesses of washers
#' # (in cm) of 15 randomly selected washers are listed below. The
#' # 95% confidence interval. The variation is supposed to be within 
#' # 0.002 cm. Are the washers acceptable?
#' 
#' dat <- c(0.422, 0.424, 0.424, 0.430, 0.419,
#'          0.424, 0.420, 0.424, 0.425, 0.425,
#'          0.423, 0.431, 0.437, 0.422, 0.434)
#'
#' df <- var.interval(dat, 0.002, 0.95)
#' print(df)
#' 
#' @export
#'
var.interval = function(data,sigma0,conf.level = 0.95) {
  df = length(data) - 1
  chilower = qchisq((1 - conf.level)/2, df)
  chiupper = qchisq((1 - conf.level)/2, df, lower.tail = FALSE)
  v = var(data)
  testchi = df*v/(sigma0^2)
  alpha = 1-conf.level
  
  sAlpha <- round(alpha, 3)
  sCI <- round(100*conf.level, 3)
  
  vNames <- c("Standard deviation",
              "Test statistic",
              "Degrees of freedom",
              #              "",
              paste("Two-tailed test critical values, alpha=", sAlpha),
              "Lower T",
              "Upper T",
              #              "",
              paste0(sCI, "% Confidence Interval for Standard Deviation"),
              "Lower",
              "Upper")
  vResult <- c(paste(round(sqrt(v),4)),
               paste(round(testchi,4)),
               paste(round(df,0)),
               #               "",
               " ",
               paste(round(qchisq(alpha/2,df),4)),
               paste(round(qchisq(1-alpha/2,df),4)),
               #               "",
               " ",
               round(sqrt(df * v/chiupper),4),
               round(sqrt(df * v/chilower),4))
  
  df.out <- data.frame(Name=vNames,
                       Value=vResult)
  
  return(df.out)
  
  #  cat(paste("Standard deviation = ", round(sqrt(v),4)), "\n")
  #  cat(paste("Test statistic = ", round(testchi,4)), "\n")
  #  cat(paste("Degrees of freedom = ", round(df,0)),"\n")
  #  cat("\n")
  #  cat("Two-tailed test critical values, alpha=0.05","\n")
  #  cat(paste("Lower = ", round(qchisq(alpha/2,df),4)),"\n")
  #  cat(paste("Upper = ", round(qchisq(1-alpha/2,df),4)),"\n")
  #  cat("\n")
  #  cat("95% Confidence Interval for Standard Deviation","\n")
  #  cat(c(round(sqrt(df * v/chiupper),4), 
  #        round(sqrt(df * v/chilower),4)),"\n")
}

