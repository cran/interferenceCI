\name{bd}
\alias{bd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Function to ensure that probability lies in interval \eqn{[0, 1]}
}
\description{
Used by targeted sampling algorithm in \code{\link{exactCI}}
}
\usage{
bd(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{Real number
}
}

\value{
Function returns \eqn{0} if \eqn{x < 0}, \eqn{x} if \eqn{0\leq x\leq1}, and \eqn{1} if \eqn{x>1}
}

\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\seealso{
\code{\link{exactCI}}
}
