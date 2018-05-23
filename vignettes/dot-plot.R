## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE)
suppressWarnings(suppressMessages(suppressPackageStartupMessages(library(ggplot2))))

## ----inputData-----------------------------------------------------------
grades <- c(76, 74, 82, 96, 66, 76, 78, 72, 52, 68,
            86, 84, 62, 76, 78, 92, 82, 74, 88)

## ----stripChart,fig.width=6.5--------------------------------------------
stripchart(grades, method="stack",
           at=c(0.05),
           pch=20, cex=3,
           las-1,
           frame.plot=FALSE,
           xlim=c(50,100),
           main="Exam grades")

## ----makeHisto, fig.width=6.5--------------------------------------------
minG <- min(grades)-1
maxG <- max(grades)+1
breaks <- seq(minG, maxG, 1)
a <- hist(grades, breaks, xlim=c(minG, 100))

