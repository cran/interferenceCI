\name{nchoosem}
\alias{nchoosem}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Compute randomization matrix
}
\description{Returns the \eqn{n \choose m} row randomization matrix;
  uses combinations function in \pkg{gtools}
}
\usage{
nchoosem(n, m)
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
matrix with \eqn{n \choose m} rows of randomizations
}

\author{
Joseph Rigdon \email{jrigdon@bios.unc.edu}
}


%% ~Make other sections like Warning with \section{Warning }{....} ~



