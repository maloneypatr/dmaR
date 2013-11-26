\name{dedollar}
\alias{dedollar}
\title{Remove the dollar sign from a vector}
\usage{
  dedollar(x, fillblanks = NULL, convert = FALSE)
}
\arguments{
  \item{x}{a vector}

  \item{fillblanks}{optional argument that will replace
  blank observations}

  \item{convert}{logical.  Defaults to false.  If true,
  vector is converted to numeric.}
}
\value{
  A vector of length(x) with the dollar sign removed
}
\description{
  Remove the dollar sign from a vector
}
\examples{
x <- c('$3.44', '$28,339')
dedollar(x)
[1] '3.44' '29,339'

y <- C('$3.44', '$42.33')
dedollar(y, convert = T)
[1] 3.44   42.33
}

