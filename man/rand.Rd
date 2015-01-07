\name{rand}
\alias{rand}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute single \eqn{n \choose m} randomization}
\description{Returns vector of length \eqn{n} with exactly \eqn{m} 1s and \eqn{n-m} 0s}
\usage{
rand(n, m)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
    total number of subjects 
}
  \item{m}{
number assigned to treatment in experiment
}
}


\value{
vector of length \eqn{n} with exactly \eqn{m} 1s and \eqn{n-m} 0s
}

\author{
Joseph Rigdon \email{jrigdon@bios.unc.edu}
}

