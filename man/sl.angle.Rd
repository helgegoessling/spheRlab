\name{sl.angle}
\alias{sl.angle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Compute Angle between Triangle Edges on Sphere
}
\description{
Compute the angle between two edges of a triangle on a sphere.
}
\usage{
sl.angle(lon, lat, return.degree = FALSE, left = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lon}{
a vector of length 3 specifying the longitudes of the triangle vertices; the angle is computed at the second vertex.
}
  \item{lat}{
a vector of length 3 specifying the longitudes of the triangle vertices; the angle is computed at the second vertex.
}
  \item{return.degrees}{
a logical value specifying whether the result shall be provided in degrees instead of radians (default).
}
  \item{left}{
a logical value specifying whether the angle to the left shall be returned. If \code{FALSE} (default), the smaller of the two (left/right) angles is returned.
}
}
\details{
The angle is computed at the second vertex. If \code{left=FALSE} (default), the smaller of the two (left/right) angles is returned (\code{angle<=pi} or \code{angle<=180}). To get the right-side angle, set \code{left=TRUE} and compute \code{2*pi-angle} (or \code{360-angle}).
}
\value{
A scalar giving the angle (on a unit sphere) in radians (default) or in degrees (if \code{return.degree=TRUE}).
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Helge Goessling
}
%\note{
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%}

\examples{
sl.angle(c(0,60,30),c(0,0,30))
## Should return:
## [1] 0.8570719
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
