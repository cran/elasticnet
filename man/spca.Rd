\name{spca}
\alias{spca}
\title{Sparse Principal Components Analysis}
\description{Using an alternating minimization algorithm to minimize the SPCA criterion.}
\usage{
spca(x,K,para,type=c("predictor","Gram"),sparse=c("penalty","varnum"),use.corr=FALSE,lambda=1e-6,max.iter=200,trace=FALSE,eps.conv=1e-3)
}
\arguments{
\item{x}{
A matrix. It can be the predictor matrix or the sample
covariance/correlation matrix. 
}
\item{K}{
Number of components
}
\item{para}{A vector of length K. All elements should be positive. If sparse="varnum", the elements integers.
}
\item{type}{
If type="predictor", x is the predictor matrix.
If type="Gram", the function asks the user to provide the sample covariance or correlation matrix.  
}
\item{sparse}{If sparse="penalty", para is a vector of 1-norm
  penalty parameters. If sparse="varnum", para defines the number of
  sparse loadings to be obtained. This option is not discussed in the
  paper given below, but it is convenient in practice.}
\item{lambda}{Quadratic penalty parameter. Default value is 1e-6.}
\item{use.corr}{Perform PCA on the correlation matrix? This option is
  only effective when the argument type is set "data".}
\item{max.iter}{Maximum number of iterations.}
\item{trace}{If TRUE, prints out its progress.}
\item{eps.conv}{Convergence criterion.}
}
\value{A "spca" object is returned. 
The below are some quantities which the user may be interested in: 
\item{loadings}{
The loadings of the sparse PCs
}
\item{pev}{ 
Percentage of explained variance
}
\item{var.all}{ 
Total variance of the predictors
}
}
\details{
PCA is shown to be equivalent to a regression-type optimization problem,
then sparse loadings are obtained by imposing the 1-norm constraint on
the regression coefficients. If x is a microarray matrix, use arrayspc().
}\references{
Zou, H., Hastie, T. and Tibshirani, R. (2004) "Sparse principal component
analysis" \emph{Technical report, Statistics Dept. Stanford University}.
}
\author{Hui Zou, Trevor Hastie and Robert Tibshirani}
\seealso{
princomp, arrayspc
}
\examples{
data(pitprops)
out1<-spca(pitprops,K=6,type="Gram",sparse="penalty",trace=TRUE,para=c(0.06,0.16,0.1,0.5,0.5,0.5))
## print the object out1
out1
out2<-spca(pitprops,K=6,type="Gram",sparse="varnum",trace=TRUE,para=c(7,4,4,1,1,1))
out2
## to see the contents of out2
names(out2) 
## to get the loadings
out2$loadings
}
\keyword{multivariate}

