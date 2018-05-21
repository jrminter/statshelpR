## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE)
suppressWarnings(suppressMessages(suppressPackageStartupMessages(library(ggplot2))))

## ----inputData-----------------------------------------------------------
dat <- c(59.2, 61.5, 62.3, 61.4, 60.9, 59.8,
         60.5, 59.0, 61.1, 60.7, 61.6, 56.3,
         61.9, 65.7, 60.4, 58.9, 59.0, 61.2,
         62.1, 61.4, 58.4, 60.8, 60.2, 62.7,
         60.0, 59.3, 61.9, 61.7, 58.4, 62.2)

## ----makePlot, fig.width=6.5---------------------------------------------
library(statshelpR)
print(stem.leaf.plot(dat))

