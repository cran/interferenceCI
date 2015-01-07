\name{sample.n}
\alias{sample.n}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Targeted sampling of sharp null hypotheses
}
\description{Fills in missingness in \eqn{\vec{y}(z;\alpha_{s})} for
  \eqn{z,s=0,1} based on targeted sampling algorithm described in Section
  4.2 of Rigdon and Hudgens (2014)
}
\usage{
sample.n(eff, y0.a0, y1.a0, y0.a1, y1.a1, p00, p10, p01, p11, n, m.a0, m.a1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{eff}{treatment effect of interest; either ``DEa0'', ``DEa1'', ``IE'',
    ``TE'', or ``OE''}
  \item{y0.a0}{Observed \eqn{\vec{y}(0;\alpha_{0})}; includes NAs where missing
}
  \item{y1.a0}{Observed \eqn{\vec{y}(1;\alpha_{0})}; includes NAs where missing
}
  \item{y0.a1}{Observed \eqn{\vec{y}(0;\alpha_{1})}; includes NAs where missing
}
  \item{y1.a1}{Observed \eqn{\vec{y}(1;\alpha_{1})}; includes NAs where missing
}
  \item{p00}{Missingness in \eqn{\vec{y}(0;\alpha_{0})} is filled in by
    sampling from a Bernoulli distribution with mean \eqn{p_{00}}
}
  \item{p10}{Missingness in \eqn{\vec{y}(1;\alpha_{0})} is filled in by
    sampling from a Bernoulli distribution with mean \eqn{p_{10}}
}
  \item{p01}{Missingness in \eqn{\vec{y}(0;\alpha_{1})} is filled in by
    sampling from a Bernoulli distribution with mean \eqn{p_{01}}
}
  \item{p11}{Missingness in \eqn{\vec{y}(1;\alpha_{0})} is filled in by
    sampling from a Bernoulli distribution with mean \eqn{p_{11}}
}
  \item{n}{group size vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i}}
  \item{m.a0}{\eqn{\alpha_{0}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{0}}}
  \item{m.a1}{\eqn{\alpha_{1}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{1}}}
}
\value{
      \item{y0.a0}{value of \eqn{\vec{y}(0;\alpha_{0})} after missingness
	has been filled in using targeted sampling}
      \item{y1.a0}{value of \eqn{\vec{y}(1;\alpha_{0})} after missingness
	has been filled in using targeted sampling}
      \item{y0.a1}{value of \eqn{\vec{y}(0;\alpha_{1})} after missingness
	has been filled in using targeted sampling}
      \item{y1.a1}{value of \eqn{\vec{y}(1;\alpha_{1})} after missingness
	has been filled in using targeted sampling}
        \item{effect}{value of treatment effect of interested under
	  sharp null after missingness filled in using targeted sampling}
}
\references{
Rigdon, J. and Hudgens, M.G. ``Exact confidence intervals in
  the presence of interference.'' Submitted to Statistics and Probability Letters 2014.  
}
\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\seealso{
\code{\link{exactCI}}
}


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{interference}
\keyword{randomization based inference}% __ONLY ONE__ keyword per line
