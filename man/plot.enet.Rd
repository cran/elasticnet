\name{plot.enet}
\alias{plot.enet}
\title{Plot method for enet objects}
\description{
Produce a plot of an enet fit. The default is a complete coefficient path.
}
\usage{
\method{plot}{enet}(x, xvar = c("fraction", "penalty", "L1norm", "step"),
use.color = FALSE, ...) 
}
\arguments{
  \item{x}{enet object}
  \item{xvar}{The type of x variable against which to
plot. \code{xvar=fraction} plots agains the fraction of the L1 norm of the coefficient vector (default).
\code{xvar=penalty} plots against the 1-norm penalty parameter.
\code{xvar=L1norm} plots against the L1 norm of the coefficient
vector. \code{xvar=step} plots against the LARS-EN step number. 
}
\item{use.color}{a colorful plot?}
\item{\dots}{Additonal arguments for generic plot.}
}
\value{NULL}
\references{
Zou and Hastie (2005) "Regularization and Variable Selection via the Elastic Net"
\emph{Journal of the Royal Statistical Society, Series B,67,301-320}.
}
\author{Hui Zou and Trevor Hastie}
\examples{
data(diabetes)
attach(diabetes)
object <- enet(x,y,lambda=1)
par(mfrow=c(2,2))
plot(object)
plot(object,xvar="step")
detach(diabetes)
}
\keyword{hplot}
\keyword{methods}
