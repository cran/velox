% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/velox_focal.R
\name{VeloxRaster_medianFocal}
\alias{VeloxRaster_medianFocal}
\title{Median focal}
\arguments{
\item{wrow}{y dimension of filter. Must be uneven integer.}

\item{wcol}{x dimension of filter. Must be uneven integer.}

\item{bands}{Numeric vector indicating bands where filter is applied.}
}
\value{
Void.
}
\description{
Applies a median filter of dimension \code{wcol x wrow} to a VeloxRaster.
}
\details{
Padding is currently not implemented.
}
\examples{
## Make VeloxRaster with two bands
mat1 <- matrix(1:100, 10, 10)
mat2 <- matrix(100:1, 10, 10)
vx <- velox(list(mat1, mat2), extent=c(0,1,0,1), res=c(0.1,0.1),
            crs="+proj=longlat +datum=WGS84 +no_defs")
## Median focal
vx$medianFocal(wrow=5, wcol=5, bands=c(1,2))

}

