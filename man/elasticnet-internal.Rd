\name{elasticnet-internal}
\title{Internal elasticnet functions} 
\alias{updateRR}
\alias{solvebeta}
\alias{rootmatrix}
\alias{soft}
\description{Internal elasticnet functions}
\usage{
updateRR(xnew, R = NULL, xold, lambda, eps = .Machine$double.eps)
solvebeta(x, y, paras, max.steps, sparse=c("penalty","varnum"), eps = .Machine$double.eps)
rootmatrix(x)
soft(a,para)
}
\author{Hui Zou and Trevor Hastie}
\details{
  These are not to be called by the user.
}
\keyword{internal}
