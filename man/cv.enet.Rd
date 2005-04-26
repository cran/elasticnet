\name{cv.enet}
\alias{cv.enet}
\title{Computes K-fold cross-validated error curve for elastic net}
\description{
Computes the K-fold cross-validated mean squared prediction error for
elastic net.}
\usage{
cv.enet(x, y, K = 10, lambda, s, mode,trace = FALSE, plot.it = TRUE, se = TRUE, ...)
}
\arguments{
  \item{x}{Input to lars}
  \item{y}{Input to lars}
  \item{K}{Number of folds}
  \item{lambda}{Quadratic penalty parameter}
  \item{s}{Abscissa values at which CV curve should be computed.
    A value, or vector of values, indexing the path. Its values depends on the mode= argument}
\item{mode}{Mode="step" means the s= argument indexes the LARS-EN step number. If mode="fraction", then s should be a number
between 0 and 1, and it refers to the ratio of the L1 norm of the
coefficient vector, relative to the norm at the full LS solution.
Mode="norm" means s refers to the L1 norm of the coefficient vector.
Abbreviations allowed. If mode="norm", then s should be the L1 norm of
the coefficient vector. If mode="penalty", then s should be the 1-norm
penalty parameter.}
  \item{trace}{Show computations?}
  \item{plot.it}{Plot it?}
  \item{se}{Include standard error bands?}
  \item{\dots}{Additional arguments to \code{enet}}
}
\value{
Invisibly returns a list with components (which can be plotted using \code{plotCVLars})
  \item{fraction}{Values of s}
  \item{cv}{The CV curve at each value of fraction}
  \item{cv.error}{The standard error of the CV curve}
}
\references{
Zou and Hastie (2005) "Regularization and
Variable Selection via the Elastic Net"
\emph{Journal of the Royal Statistical Society, Series B,76,301-320}.
}
\author{Hui Zou and Trevor Hastie}
\examples{
data(diabetes)
attach(diabetes)
## use the L1 fraction norm as the tuning parameter
cv.enet(x2,y,lambda=0.05,s=seq(0,1,length=100),mode="fraction",trace=TRUE,max.steps=80)
## use the number of steps as the tuning parameter
cv.enet(x2,y,lambda=0.05,s=1:50,mode="step")
detach(diabetes)
}
\keyword{regression}

