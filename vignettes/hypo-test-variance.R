## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE)
suppressWarnings(suppressMessages(suppressPackageStartupMessages(library(ggplot2))))

## ----inputData-----------------------------------------------------------
dat <- c(0.422, 0.424, 0.424, 0.430, 0.419,
         0.424, 0.420, 0.424, 0.425, 0.425,
         0.423, 0.431, 0.437, 0.422, 0.434)

## ----computeVar"---------------------------------------------------------
library(statshelpR)
library(knitr)

df <- var.interval(dat, 0.002, 0.95)
kable(df)

