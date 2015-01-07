\name{TV}
\alias{TV}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Conservative exact confidence intervals for treatment effects on a
  binary outcome in a two-stage randomized experiment with interference
}
\description{Computes the conservative exact confidence intervals of
  Tchetgen Tchetgen and VanderWeele
  (2012) for treatment effects on a binary outcome in a two-stage randomized experiment with interference
}
\usage{
TV(eff, g, data, m.a0, m.a1, level)
}
%- maybe also 'usage' for other objects documented here.
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
\details{Confidence intervals are based on a Hoeffding-type exponential
  inequality; see section 4.3.2 of Tchetgen Tchetgen and VanderWeele (2012)}
\value{
  \item{est}{estimated treatment effect from Hudgens and Halloran (2008)}
  \item{v}{half-width of confidence interval}
  \item{lower}{lower limit of confidence interval}
  \item{upper}{upper limit of confidence interval}
}
\references{Hudgens, M.G. and Halloran, M.E. ``Toward causal inference
  with interference.''  Journal of the
  American Statistical Association 2008 103:832-842.

  Tchetgen Tchetgen, E. and VanderWeele, T.J. ``On causal
  inference in the presence of interference.''  Statistical Methods in
  Medical Research 2012 21:55-75.}
\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\examples{
#Made up example with 10 groups of 10 where half are randomized to a0 and half to a1
#a0 is assign 3 of 10 to treatment and half to a1 is assign 6 of 10 to treatment
d = c(1,1,5,3,0,6,3,1,0,4,3,3,0,5,3,2,1,1,5,3,2,2,4,2,1,5,2,2,2,3,4,1,1,1,5,3,1,5,2,2)
data.ex = array(d,c(2,2,10))
assign.ex = c(1,0,0,0,1,1,0,1,1,0)

#Inference for overall effect
TV('OE',assign.ex,data.ex,rep(3,10),rep(6,10),0.05)
}

\keyword{interference}
\keyword{exact confidence interval}% __ONLY ONE__ keyword per line
