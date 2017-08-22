#' DGSA data
#'
#' The data of the Dutch Geochemical Soil Atlas.
#'
#' The sampling of the data and the first series of chemical analyses
#' with the XRF and HF-digestion is given in Van Der Veer (2006),
#' https://dspace.library.uu.nl/handle/1874/13275
#' 
#' The second series of chemical analyses used two types of different
#' extractions on the soil samples, i.e. 0.43M HNO3 and 0.01M CaCl2.
#' Measurements were done with ICP-MS and ICP-OES.
#'
#' For each analyses the limit of quantification was determined, the
#' data presents the original concentrations and a seperate field
#' indicates if the measurement is within the limits of
#' quantification. 
#'
#' Besides this data.frame, the data.frame \code{atlasmeta} gives some
#' additional meta data.
#'
#' @format a large data.frame:
#'\describe{
#'  \item{xcoord} {X-coord, Dutch grid (Amersfoort-RD, EPSG:28992)}
#'  \item{ycoord} {Y-coord, Dutch grid }
#'  \item{soilclass} {Major soil class}
#'  \item{description} {soil class description}
#'  \item{sample} {Sample code}
#'  \item{compartment} {soil compartment, top- or subsoil}
#'  \item{ds} {start of sampling depth, relative to surface}
#'  \item{de} {end of sampling depth, relative to surface}
#'  \item{pH} {soil pH}
#'  \item{om} {soil organic matter}
#'  \item{xrf...} {XRF measurement}
#'  \item{hf...} {HF digested and subsequent ICP-MS measurement}
#'  \item{re...} {0.43M HNO3 extraction and subsequent ICP-MS measurement}
#'  \item{reo...} {0.43M HNO3 extraction and subsequent ICP-OES measurement}
#'  \item{pw...} {0.01M CaCl2 extraction and subsequent ICP-MS measurement}
#'  \item{log....} {is value below (<), within (=) or above (>) limit
#'  of quantification}
#' }
#'
"atlas"

