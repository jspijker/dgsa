#' Distribution Plot.
#'
#' Create a distribution plot (histogram with density)
#'
#' A distribution plot with density gives a  visual overview of the
#' statistical distribution of the data.
#'
#" @returns This function returns an ggplot map opbject
#'
#' @param x name of the element
#' @param xbin bin size, see ?geom_histogram 
#' @examples
#' p <- distribution("xrfal2o3")
#' print(p)
#'
#' @export



distribution <- function(x,xbin=10,xadj=1) {

    data(atlas)
    data(atlasmeta)

    elem.x <- as.character(subset(atlasmeta,select=label,element==x)[1])
    pdata <- subset(atlas,select=c(x,"compartment"))

    p <- ggplot(pdata, aes_(x = as.name(x)))

    p <- p + facet_grid(. ~ compartment)
    p <- p + geom_histogram(aes(y = ..density..),
                            color = "black", fill = "white",
                            bins=xbin)
    p <- p + geom_density(alpha = I(2 / 10),
                          fill = "pink",
                          color = "blue",
                          adjust=xadj)
    p

}
