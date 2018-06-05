#' Plot a Stem and Leaf plot
#' 
#' Plot a stem and leaf plot from a vector or list of observations
#' 
#' Credit: Adapted from https://stackoverflow.com/questions/26532564/how-to-output-a-stem-and-leaf-plot-as-a-plot
#' 
#' @param dat The vector of observations to plot
#' 
#' @return A ggplot
#' 
#' @import ggplot2
#' 
#' @export
#' 
#' @examples
#' library(statshelpR)
#' print(stem_leaf_plot(iris$Petal.Length))
#' 

stem_leaf_plot <- function(dat){
  tmp <- capture.output(stem(dat))
  stemdf = data.frame(tmp, rr=1:length(tmp))
  plt <- ggplot(stemdf) +
         geom_text(aes(x=rr, y=0, label=tmp), hjust=0) + 
         coord_flip() + theme_classic() + 
         scale_x_discrete(breaks=NULL) + 
         scale_y_discrete(breaks=NULL, limits=c(0,1))+ 
         theme(axis.text = element_blank(),
               axis.title = element_blank(), 
               axis.ticks=element_blank(), 
               panel.grid=element_blank(), 
               axis.line=element_blank())
         return(plt)
}

print(stem_leaf_plot(iris$Petal.Length))
