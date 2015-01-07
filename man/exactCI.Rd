\name{exactCI}
\alias{exactCI}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Exact confidence intervals for treatment effects on a
  binary outcome in a two-stage randomized experiment with interference
}
\description{
Finds exact confidence intervals for treatment effects on a
  binary outcome in a two-stage randomized experiment with
  interference.  See Section 4.2 of Rigdon and Hudgens (2014) for details.
}
\usage{
exactCI(eff, g, data, m.a0, m.a1, B2, C2, level)
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
  \item{m.a1}{\eqn{\alpha_{0}} randomization vector where element \eqn{i=1,\ldots,k} is
    equal to the number of subjects in group \eqn{i} who would receive treatment if group \eqn{i} was randomized to strategy \eqn{\alpha_{1}}}
  \item{B2}{number of sharp nulls to test in the targeted sampling algorithm}
  \item{C2}{number of re-randomizations (experiments) to conduct in
    computing the null distribution of the estimator}
  \item{level}{significance level of hypothesis tests, i.e., method yields a 1-level confidence interval}
}
\details{See Section
  4.2 of Rigdon and Hudgens (2014) for detailed description.  Please plot the
  p-values against the effect as a check of targeted sampling algorithm performance.   
}
\value{
  \item{B1}{total number of hypotheses that could be tested}
  \item{C1}{total number of re-randomizations (experiments) that could
    be performed}
  \item{frac.NA}{fraction of hypothesized sharp nulls that are not
    tested}
  \item{prob1}{final value of targeting parameter \eqn{q_{p_{l}}} in finding lower confidence limit}
\item{prob2}{final value of targeting parameter \eqn{q_{p_{u}}} in finding upper confidence limit}
  \item{effect}{vector of sharp null hypotheses}
  \item{p}{vector of p-values corresponding to the sharp null
    hypotheses}
  \item{lower}{lower limit to confidence interval}
  \item{upper}{upper limit to confidence interval}
}
\references{Rigdon, J. and Hudgens, M.G. ``Exact confidence intervals in
  the presence of interference.'' Submitted to Statistics and Probability Letters 2014.  
}
\author{Joseph Rigdon \email{jrigdon@bios.unc.edu}}

\examples{
#Made up example with 10 groups of 10 where half are randomized to a0 and half to a1
#a0 is assign 3 of 10 to treatment and half to a1 is assign 6 of 10 to treatment
d = c(1,1,5,3,0,6,3,1,0,4,3,3,0,5,3,2,1,1,5,3,2,2,4,2,1,5,2,2,2,3,4,1,1,1,5,3,1,5,2,2)
data.ex = array(d,c(2,2,10))
assign.ex = c(1,0,0,0,1,1,0,1,1,0)

#Inference for overall effect
l1 = exactCI('OE',assign.ex,data.ex,rep(3,10),rep(6,10),100,100,0.05)

#Check algorithm using a plot
plot(l1$effect,l1$p)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{interference}
\keyword{randomization based inference}% __ONLY ONE__ keyword per line
\keyword{exact confidence interval}

