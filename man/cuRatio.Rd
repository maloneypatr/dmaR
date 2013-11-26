\name{cuRatio}
\alias{cuRatio}
\title{Calculate a cumulative sum ratio}
\usage{
  cuRatio(x, y)
}
\arguments{
  \item{x}{a vector}

  \item{y}{a vector}
}
\value{
  A vector of length(x), and length(y), that calculates the
  ratio between cumsum(x)/cumsum(y) at every corresponding
  observation
}
\description{
  Calculate a cumulative sum ratio
}
\details{
  The cuRatio can be interpreted as a weighted average
  ratio for ordered data
}
\examples{
data(dd)
cuRatio(dd$clicks, dd$impressions) # returns daily cumulative CTR
}

