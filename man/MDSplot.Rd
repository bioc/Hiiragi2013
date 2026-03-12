\name{MDSplot}
\alias{MDSplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Multidimensional Scaling Plots}
\description{
Visualization of data similarity using non-metric multidimensional scaling.
}
\usage{
MDSplot(
  x, 
  mask, 
  flip = integer(0), 
  rotation = 0, 
  cex = 2, 
  col = x$sampleColour, 
  panellabel, 
  pointlabel
)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{an \code{\link[Biobase:class.ExpressionSet]{ExpressionSet}} containing a matrix of expression values with rows representing features and columns samples}
  \item{mask}{a logical vector specifying the masking of data points; if missing all points are drawn}
  \item{flip}{an integer vector containing indices of columns of the distance matrix whose sign should be flipped}
  \item{rotation}{numeric, angle in radians by which the plot should be rotated}
  \item{cex}{numeric, the value giving the amount by which text and symbols should be scaled relative to the current setting}
  \item{col}{character vector specifing the colors of points}
  \item{panellabel}{character, the label of the figure panel}
  \item{pointlabel}{character vector containing labels corresponding to samples; if specified labels are drawn instead of points}
}
\value{
The result of the function is a plot.
}
\author{Wolfgang Huber, 2013}
\examples{
## data preparation
data(x)
y = x[, with(pData(x), Embryonic.day=="E3.25")]

## define colours for plotting
colours = setNames(RColorBrewer::brewer.pal(10, "Paired")[c(9, 7)], c("WT", "FGF4-KO"))[y$genotype]
stopifnot(!any(is.na(colours)))

## select 100 most variable genes for plotting
selMDS = order(genefilter::rowVars(exprs(y)), decreasing=TRUE)[seq_len(100)]
MDSplot(y[selMDS,], col=colours)
}