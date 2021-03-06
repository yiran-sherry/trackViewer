% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotOneIdeo.R
\name{plotOneIdeo}
\alias{plotOneIdeo}
\title{plot ideogram with data for one chromosome}
\usage{
plotOneIdeo(
  ideo,
  dataList,
  parameterList = list(vp = plotViewport(margins = c(0.1, 4.1, 1.1, 0.1)), ideoHeight =
    unit(1/(1 + length(dataList)), "npc"), vgap = unit(1, "lines"), ylabs =
    seqlevels(ideo)[1], ylabsRot = 90, ylabsPos = unit(2.5, "lines"), xaxis = FALSE,
    yaxis = FALSE, xlab = "", types = "barplot", heights = NULL, dataColumn = "score",
    gps = gpar(col = "black", fill = "gray")),
  chrom = seqlevels(ideo)[1],
  colorSheme = gieStain(),
  gp = gpar(fill = NA, lwd = 2),
  ...
)
}
\arguments{
\item{ideo}{output of \link{loadIdeogram}.}

\item{dataList}{a \link[GenomicRanges:GRangesList-class]{GRangesList} of data to plot.}

\item{parameterList}{a list of parameters for each dataset in the dataList. 
The elements of the parameters could be xlabs, ylabs, etc. type could be
barplot, line, point, heatmap.}

\item{chrom}{A length 1 character vector of chromosome name.}

\item{colorSheme}{A character vector of giemsa stain colors.}

\item{gp}{parameters used for \link[grid]{grid.roundrect}.}

\item{...}{parameters not used.}
}
\description{
plot ideogram with data for one chromosome
}
\examples{
\dontrun{
ideo <- loadIdeogram("hg38")
library(rtracklayer)
library(grid)
dataList <- ideo[seqnames(ideo) \%in\% "chr1"]
dataList$score <- as.numeric(dataList$gieStain)
dataList <- dataList[dataList$gieStain!="gneg"]
dataList <- GRangesList(dataList, dataList)
grid.newpage()
plotOneIdeo(ideo, dataList, chrom="chr1")
}


}
