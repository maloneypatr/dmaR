\name{decomma}
\alias{decomma}
\title{Remove the comma from each observation within a vector}
\usage{
  decomma(x, convert = F)
}
\arguments{
  \item{x}{a vector}

  \item{fillblanks}{optional argument that will replace
  blank observations}

  \item{convert}{logical.  Defaults to false.  If true,
  vector is converted to numeric.}
}
\value{
  A vector of length(x) with the comma removed
}
\description{
  Remove the comma from each observation within a vector
}
\examples{
x <- c('3,344', '28,339')
decomma(x)
[1] '3344' '29,339'

y <- c('3,344', '28,339')
dedollar(y, convert = T)
[1] 3444 28339
}

