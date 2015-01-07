\name{lsolve}
\alias{lsolve}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Local linear interpolation function
}
\description{
Computes intersection of a line drawn from \eqn{(x_{1}, y_{1})} to \eqn{(x_{2}, y_{2})} and a horizontal line at level
}
\usage{
lsolve(x1, y1, x2, y2, level)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x1}{x-coordinate for first point}
  \item{y1}{y-coordinate for first point}
  \item{x2}{x-coordinate for second point}
  \item{y2}{y-coordinate for second point}
  \item{level}{y-coordinate for horizontal line}
}


\value{Returns x-coordinate of intersection point
}

\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\seealso{
\code{\link{exactCI}}
}

