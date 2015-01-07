\name{estbound}
\alias{estbound}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Estimates and bounds for treatment effects on a binary outcome in
  a two-stage randomized experiment with interference}
\description{Computes the estimators of Hudgens and Halloran (2008) and
  bounds of Rigdon and Hudgens (2014) for treatment effects on a binary outcome in a two-stage randomized experiment with interference}
\usage{estbound(g, data, m.a0, m.a1)}
\arguments{
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
}
\details{Function will return many values (to be used by other functions
in this package), but the only important value here is tab.eff}
\value{
\item{tab.eff}{Labeled table of estimates and bounds}
}
\references{Hudgens, M.G. and Halloran, M.E. ``Toward causal inference
  with interference.''  Journal of the
  American Statistical Association 2008 103:832-842.

Rigdon, J. and Hudgens, M.G. ``Exact confidence intervals in
  the presence of interference.'' Submitted to Statistics and Probability Letters 2014.  
}
\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\examples{
#Made up example with 10 groups of 10 where half are randomized to a0 and half to a1
#a0 is assign 3 of 10 to treatment and half to a1 is assign 6 of 10 to treatment
d = c(1,1,5,3,0,6,3,1,0,4,3,3,0,5,3,2,1,1,5,3,2,2,4,2,1,5,2,2,2,3,4,1,1,1,5,3,1,5,2,2)
data.ex = array(d,c(2,2,10))
assign.ex = c(1,0,0,0,1,1,0,1,1,0)

#Estimates and bounds
e = estbound(assign.ex,data.ex,rep(3,10),rep(6,10))
e$tab.eff
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{interference}
\keyword{estimate}
\keyword{bounds}

