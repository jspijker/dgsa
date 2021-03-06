% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scatter.R
\name{scatterplot}
\alias{scatterplot}
\title{Create a scatter plot.}
\usage{
scatterplot(x, y, topsub = FALSE)
}
\arguments{
\item{x}{element to depict on x-axis}

\item{y}{element to depict on y-axis}

\item{topsub}{if TRUE, create two graphs with top- and subsoil}
}
\value{
A ggplot graph object
}
\description{
Create a scatter plot of two elements with optional panels for top-
and sub soil
}
\examples{
p <- scatterplot("xrfal2o3","xrfcu")
print(p)
p <- scatterplot("xrfal2o3","xrfcu",topsub=TRUE)
print(p)

}
