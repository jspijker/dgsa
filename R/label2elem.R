#' translate label to element
#'
#' Translate a full name of a component into the element name (field
#' name) of the dgsa database
#'
#' The DGSA database is a table with many elements. Each field has
#' a name consiting of analytical technique and name of the element.
#' This functions translates the full name of an element (e.g. Al
#' Total) into the name of the field (e.g. xrfal2o3).
#'
#' @param label Label to translate, case sensitive
#' @return field name in database
#'
#' @examples
#' label2elem("Al total")
#' # returns "xrfal2o3"
#'
#' @export
label2elem <- function(label) {

    label.in <- label
    elem.x <- as.character(subset(atlasmeta,select=element,label==label.in)[1])
    return(elem.x)

}

