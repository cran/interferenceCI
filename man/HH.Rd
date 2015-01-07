\name{HH}
\alias{HH}
\title{Large sample confidence intervals for treatment effects on a
  binary outcome in a two-stage randomized experiment with interference}
\description{Computes the large sample confidence intervals of Liu and Hudgens
  (2014) for treatment effects on a binary outcome in a two-stage randomized experiment with interference}
\usage{HH(eff, g, data, m.a0, m.a1, level)}
\arguments{
  \item{eff}{treatment effect of interest; either ``DEa0'', ``DEa1'', ``IE'',
    ``TE'', or ``OE''}
  \item{g}{1st stage of randomization vector where element \eqn{i=1,\ldots,k} is
    equal to 1 if group \eqn{i} was randomized to strategy \eqn{\alpha_{1}} and 0 if
    randomized to strategy \eqn{\alpha_{0}}}
  \item{data}{\eqn{2 \times 2\times k} array of \eqn{2 \times 2} table data where row 1 is
    treatment=yes, row 2 is treatment=no, column 1 is outcome=yes, and
    column 2 is outcome=no}
  \item{m.a0}{\eqn{\alpha_{0}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{0}}}
  \item{m.a1}{\eqn{\alpha_{1}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{1}}}
  \item{level}{significance level, i.e., method yields a 1-level confidence interval}
}
\value{
  \item{est}{estimated treatment effect}
  \item{v}{estimated variance}
  \item{lower.w}{lower limit to Wald confidence interval}
  \item{upper.w}{upper limit to Wald confidence interval}
  \item{lower.ch}{lower limit to Chebyshev confidence interval}
  \item{upper.ch}{upper limit to Chebyshev confidence interval}
}
\references{Hudgens, M.G. and Halloran, M.E. ``Toward causal inference
  with interference.''  Journal of the
  American Statistical Association 2008 103:832-842.

Liu, L. and Hudgens, M.G. ``Large sample randomization inference of
  causal effects in the presence of interference.''  Journal of the
  American Statistical Association 2014 109:288-301.}
\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\examples{
#Table 3 from Hudgens and Halloran (2008) 
hh = array(c(16,18,12541-16,12541-18,26,54,11513-26,11513-54,17,119,10772-17,
     25134-119,22,122,8883-22,20727-122,15,92,5627-15,13130-92),c(2,2,5))
e1 = HH('OE',c(1,1,0,0,0),hh,round(0.3*c(25082,23026,35906,29610,18757),0),
     round(0.5*c(25082,23026,35906,29610,18757),0),0.05)
round(1000*e1$est,3)
round(1000000*e1$v,3)
}

\keyword{interference}
\keyword{large sample confidence interval}
