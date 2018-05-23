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

## ----ggplot2DP, fig.width=6.5--------------------------------------------

df <- data.frame(grades=grades)
a <- ggplot(df, aes(x = grades)) +
     geom_dotplot(binwidth=1) +
     scale_x_continuous(breaks=seq(from=50, to=100, by=5),
                        limits = c(50, 100)) +
     scale_y_continuous(NULL, breaks = NULL) +
     xlab("grade") +
     theme(axis.text=element_text(size=12),
           axis.title=element_text(size=12),
           plot.title=element_text(hjust = 0.5))

print(a)


## ----makeHisto, fig.width=6.5--------------------------------------------
minG <- min(grades)-1
maxG <- max(grades)+1
breaks <- seq(minG, maxG, 1)
a <- hist(grades, breaks, xlim=c(minG, 100))

## ----makeGGHisto, fig.width=6.5------------------------------------------
a <- ggplot(df, aes(x = grades)) +
     geom_histogram(bins=50) +
     xlab("grade") + 
     ggtitle("Exam grade distribution") +
     theme(axis.text=element_text(size=12),
           axis.title=element_text(size=12),
           plot.title=element_text(hjust = 0.5)) # center the title
print(a)


