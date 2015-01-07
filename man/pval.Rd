\name{pval}
\alias{pval}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Computes permutation test p-value}

\description{Returns permutation test p-value; used in the construction
  of exact confidence intervals by the function \code{\link{exactCI}}
}
\usage{
pval(eff, est, null, y0.a0, y1.a0, y0.a1, y1.a1, h, n, m.a0, m.a1, C2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{eff}{treatment effect of interest; either ``DEa0'', ``DEa1'', ``IE'',
    ``TE'', or ``OE''}
  \item{est}{estimated treatment effect using estimators from Hudgens
    and Halloran (2008)
}
  \item{null}{value of treatment effect of interest under the sharp
    null hypothesis
}
  \item{y0.a0}{hypothesized vector \eqn{\vec{y}(0;\alpha_{0})} under the
    sharp null hypothesis
}
  \item{y1.a0}{hypothesized vector \eqn{\vec{y}(1;\alpha_{0})} under the
    sharp null hypothesis
}
  \item{y0.a1}{hypothesized vector \eqn{\vec{y}(0;\alpha_{1})} under the
    sharp null hypothesis
}
  \item{y1.a1}{hypothesized vector \eqn{\vec{y}(1;\alpha_{1})} under the
    sharp null hypothesis
}
  \item{h}{the number of groups out of \eqn{k} total to be randomized to
    strategy \eqn{\alpha_{1}}
}
  \item{n}{group size vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i}}
  \item{m.a0}{\eqn{\alpha_{0}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{0}}}
  \item{m.a1}{\eqn{\alpha_{1}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{1}}}
  \item{C2}{number of re-randomizations (experiments) to conduct in
    computing the null distribution of the estimator}
}
\details{See equation (6) in Rigdon and Hudgens (2014)}
\references{Hudgens, M.G. and Halloran, M.E. ``Toward causal inference
  with interference.''  Journal of the
  American Statistical Association 2008 103:832-842.

Rigdon, J. and Hudgens, M.G. ``Exact confidence intervals in
  the presence of interference.'' Submitted to Statistics and Probability Letters 2014.  
}
\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\seealso{
\code{\link{exactCI}}
}


\keyword{interference}
\keyword{randomization based inference}
