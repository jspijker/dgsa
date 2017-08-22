#' Create a bubble map
#'
#' Create a spatial bubble map
#'
#' A bubble map is a simple way to both show spatial distribution and
#' magnitude of measurements. It shows the data without an underlying
#' interpolation model like inverse distance and kriging.
#'
#' In ths implementation ggplot2 is used to draw the map and the
#' bubbles (circles). Usually, a specific function is chosen to relate
#' the magnitude of the measurement to the size of the bubble, using
#' radius or area. The \code{map} function uses the \code{size}
#' argument in the \code{aes} function. 
#'
#" @returns This function returns an ggplot map opbject
#'
#' @param x name of the element
#' @examples
#' p <- map("xrfal2o3")
#' print(p)
#'
#' @export


map <- function(x) {

    data(atlas)
    data(atlasmeta)
    data(nlborder)
    data(nlrivers)

    elem.x <- as.character(subset(atlasmeta,select=label,element==x)[1])


    pdata <- subset(atlas,select=c("xcoord","ycoord","compartment",x))
    #pdata$compartment<-as.factor(pdata$compartment)
    p <- ggplot(pdata)
    p <- p + facet_grid(.~compartment)

    p <- p + geom_polygon(aes(x=long,y=lat,group=group),
                          data=nlborder,colour='black',
                          fill='white')
    p <- p + geom_polygon(aes(x=long,y=lat,group=group),
                          data=nlrivers,colour='blue',
                          fill='white')

    p <- p + geom_point(aes_(x=quote(xcoord),y=quote(ycoord), size=as.name(x)), 
                        alpha=I(0.5),colour="olivedrab")
    p <- p + coord_map(projection="rectangular",0)
    p <- p + scale_size_continuous(name="Concentration")

    p
    #p2 <- ggplotly(p)
    #p2



}


