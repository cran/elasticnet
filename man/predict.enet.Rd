\name{predict.enet}
\alias{predict.enet}
\title{
Make predictions or extract coefficients from a fitted elastic net model
}
\description{
While enet() produces the entire path of solutions, predict.enet
allows one to extract a prediction at a particular point along the path.
}
\usage{
predict.enet(object, newx, s, type = c("fit", "coefficients"), mode =
c("step","fraction", "norm", "penalty"),naive=FALSE, ...)
}
\arguments{
\item{object}{
A fitted enet object
}
\item{newx}{
If type="fit", then newx should be the x values at which the fit is
required. If type="coefficients", then newx can be omitted.
}
\item{s}{
a value, or vector of values, indexing the path. Its values depends on the mode= argument. By
default (mode="step").
}
\item{type}{
If type="fit", predict returns the fitted values. If
type="coefficients", predict returns the coefficients.
Abbreviations allowed.
}
\item{mode}{
Mode="step" means the s= argument indexes the LARS-EN step number, and
the coefficients will be returned corresponding to the values
corresponding to step s. If mode="fraction", then s should be a number
between 0 and 1, and it refers to the ratio of the L1 norm of the
coefficient vector, relative to the norm at the full LS solution.
Mode="norm" means s refers to the L1 norm of the coefficient vector.
Abbreviations allowed. If mode="norm", then s should be the L1 norm of
the coefficient vector. If mode="penalty", then s should be the 1-norm
penalty parameter.
}
\item{naive}{IF naive is True, then the naive elastic net fit is
  returned.}
\item{\dots}{Additonal arguments for generic print.}
}
\value{
Either a vector/matrix of fitted values, or a vector/matrix of coefficients.
}
\details{
Starting from zero, the LARS-EN algorithm provides the entire sequence of coefficients and fits.
}\references{
Zou and Hastie (2004) "Regularization and
Variable Selection via the Elastic Net"
\emph{In press, Journal of the Royal Statistical Society, Series B}.
}
\author{Hui Zou and Trevor Hastie}
\seealso{
print, plot,  enet
}
\examples{
data(diabetes)
attach(diabetes)
object <- enet(x,y,lambda=0.1)
### make predictions at the values in x, at each of the
### steps produced in object
fits <- predict.enet(object, x, type="fit")
### extract the coefficient vector with L1 norm=2000
coef2000 <- predict(object, s=2000, type="coef", mode="norm")
### extract the coefficient vector with L1 norm fraction=0.45
coef.45 <- predict(object, s=0.45, type="coef", mode="fraction")
detach(diabetes)
}
\keyword{regression}
\keyword{methods}

