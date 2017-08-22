#' Create a scatter plot.
#' 
#' Create a scatter plot of two elements with optional panels for top-
#' and sub soil
#'
#' @return A ggplot graph object
#'
#' @param x element to depict on x-axis
#' @param y element to depict on y-axis
#' @param topsub if TRUE, create two graphs with top- and subsoil
#'
#' @examples
#' p <- scatterplot("xrfal2o3","xrfcu")
#' print(p)
#' p <- scatterplot("xrfal2o3","xrfcu",topsub=TRUE)
#' print(p)
#'
#' @export

scatterplot <- function(x,y,topsub=FALSE) {

    if(!is.character(x)) {
        stop("x is not character")
    }

    if(!is.character(y)) {
        stop("y is not character")
    }

    data(atlas)

    d <- subset(atlas, select=c("compartment",x,y))

    p <- ggplot(d,aes_string(x,y, colour="compartment"))
    p <- p + geom_point()
    if(topsub) {
        p <- p + facet_grid(.~compartment)
    }

    return(p)
  

}


