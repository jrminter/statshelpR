## ---- echo=FALSE---------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE, warning=FALSE)
suppressWarnings(suppressMessages(suppressPackageStartupMessages(library(ggplot2))))

## ----inputData-----------------------------------------------------------
df <- data.frame(mass=c(59.2, 61.5, 62.3, 61.4, 60.9, 59.8,
                          60.5, 59.0, 61.1, 60.7, 61.6, 56.3,
                          61.9, 65.7, 60.4, 58.9, 59.0, 61.2,
                          62.1, 61.4, 58.4, 60.8, 60.2, 62.7,
                          60.0, 59.3, 61.9, 61.7, 58.4, 62.2))

## ----makePlot, fig.width=6.5---------------------------------------------
library(ggplot2)


p <- ggplot(df) + aes(x="", y=mass) +
     geom_boxplot() +
     ggtitle("Body mass of 30 students") +
     labs(x="", y="Body mass [kg]") +
     theme(plot.title = element_text(size = 14,
                                     family = "Tahoma",
                                     face = "bold",
                                     hjust = 0.5),
          panel.border = element_rect(colour = "black",
                                      fill=NA, size=.5),
          text = element_text(size = 12, family = "Tahoma"),
          axis.title = element_text(face="bold"),
          axis.text.x=element_text(size = 11))

print(p)

## ----summarizeData-------------------------------------------------------
summary(mpg)


## ----ggplotMPG, fig.width=6.5--------------------------------------------
plt <- ggplot(mpg, aes(class, hwy)) +
       geom_boxplot() +
       ggtitle("Highway mpg of cars") +
       labs(x="car class", y="Highway mpg") +
       theme(plot.title = element_text(size = 14,
                                      family = "Tahoma",
                                      face = "bold",
                                      hjust = 0.5), # center title
             panel.border = element_rect(colour = "black",
                                      fill=NA, size=.5),
             text = element_text(size = 12, family = "Tahoma"),
             axis.title = element_text(face="bold"),
             axis.text.x=element_text(size = 11))

print(plt)


## ----withJitter, fig.width=6.5-------------------------------------------
plt <- plt +
       geom_boxplot() +
       geom_jitter(width = 0.2)
print(plt)

