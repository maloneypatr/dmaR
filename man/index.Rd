\name{index}
\alias{index}
\title{Index a vector}
\usage{
  index(x, base = "mean")
}
\arguments{
  \item{x}{a vector}

  \item{base}{Defaults to 'mean', but can also index to
  'median'}
}
\value{
  A vector of length(x) indexed against the base
}
\description{
  Returns the indexed values for a given vector
}
\examples{
x <- c(1, 3, 5, 7, 9)
index(x)
[1]  20  60  100  140  180
}

