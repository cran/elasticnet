\name{enet}
\alias{enet}
\title{
Fits Elastic Net regression models
}
\description{
  Starting from zero, the LARS-EN algorithm provides the entire sequence of coefficients and fits.
}
\usage{
enet(x, y, lambda, max.steps, normalize=TRUE, intercept=TRUE, trace = FALSE, eps = .Machine$double.eps)
}
\arguments{
\item{x}{
matrix of predictors
}
\item{y}{
response 
}
\item{lambda}{
Quadratic penalty parameter. lambda=0 performs the Lasso fit.
}
\item{max.steps}{
  Limit the number of steps taken; the default is \code{50 * min(m,
    n-1)}, with m the number of variables, and n the number of samples.
One can use this option to perform early stopping.
}
\item{trace}{
If TRUE, prints out its progress
}
\item{normalize}{ Standardize the predictors?
}
\item{intercept}{ Center the predictors?
}
\item{eps}{
An effective zero
}}
\value{
An "enet" object is returned, for which print, plot and predict methods exist.
}
\details{
The Elastic Net methodology is described in detail in Zou and Hastie (2004).
The LARS-EN algorithm computes the complete elastic net
solution simultaneously for ALL values of the shrinkage parameter in
the same computational cost as a least squares fit. 
The structure of enet() is based on lars() coded by Efron and Hastie.  
Some internel functions from the lars package are called. 
The user should install lars before using elasticnet functions.
}
\references{
Zou and Hastie (2005) "Regularization and
Variable Selection via the Elastic Net"
\emph{Journal of the Royal Statistical Society, Series B, 67, 301-320}.
}
\author{Hui Zou and Trevor Hastie}
\seealso{
print, plot, and predict methods for enet
}
\examples{
data(diabetes)
attach(diabetes)
##fit the lasso model (treated as a special case of the elastic net)
object1 <- enet(x,y,lambda=0)
plot(object1)
##fit the elastic net model with lambda=1.
object2 <- enet(x,y,lambda=1) 
plot(object2)
##early stopping after 50 LARS-EN steps
object4 <- enet(x2,y,lambda=0.5,max.steps=50)
plot(object4)
detach(diabetes)
}
\keyword{regression}



