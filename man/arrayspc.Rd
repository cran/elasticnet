\name{arrayspc}
\alias{arrayspc}
\title{Sparse PCs of Microarrays}
\description{Sparse PC by iterative SVD and soft-thresholding}
\usage{
arrayspc(x,K=1,para,use.corr=FALSE, max.iter=200,trace=FALSE,eps=1e-3)
}
\arguments{
\item{x}{
The microarray matrix.
}
\item{K}{
Number of components. Default is 1.
}
\item{para}{The thresholding parameters. A vector of length K. 
}
\item{use.corr}{Perform PCA on the correlation matrix? This option is
  only effective when the argument type is set "data".}
\item{max.iter}{Maximum number of iterations.}
\item{trace}{If TRUE, prints out its progress.}
\item{eps}{Convergence criterion.}
}
\value{A "arrayspc" object is returned.}
\details{
The function is equivalent to a special case of spca() with the quadratic
penalty=infinity. It is specifically designed for the case p>>n, like microarrays.
}\references{
Zou, H., Hastie, T. and Tibshirani, R. (2006) "Sparse principal component
analysis" \emph{Journal of Computational and Graphical Statistics}, 15 (2), 265--286.
}
\seealso{
spca, princomp
}
\author{Hui Zou and Trevor Hastie}
\keyword{multivariate}




