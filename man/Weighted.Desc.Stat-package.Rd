\name{Weighted.Desc.Stat-package}
\alias{Weighted.Desc.Stat-package}
\alias{Weighted.Desc.Stat}
\docType{package}
\title{ Weighted Descriptive Statistics }

\description{
Weighted Descriptive Statistics is an open source (LGPL 3) package for R which provides descriptive statistical methods to deal with weighted data. Assume that \eqn{x=(x_1, x_2, \cdots , x_n)} is the observed value of a random sample from a fuzzy population. In classical and usual random sample, the degree of belonging \eqn{x_i} into the random sample is equal to 1, for \eqn{1 \leq i  \leq  n}.
But considering fuzzy population, we denote the degree of belonging \eqn{x_i} into the fuzzy population (or into the observed value of random sample) by \eqn{\mu_i} which is a real-valued number from [0,1].
Therefore in such situations, it is more appropriate that we show the observed value of the random sample by notation \eqn{ \{ (x_1, \mu_1),  (x_2, \mu_2), \cdots , (x_n, \mu_n) \} } which we called it real-valued fuzzy data or weighted data.
Weighted descriptive statistics is the discipline of quantitatively describing the main features of a real-valued fuzzy data which usually given from a fuzzy population. 
}

\details{
The weighted descriptive statistics provide a concise summary a set of real data  \eqn{x=(x_1, x_2, \cdots , x_n)}  on the basis of the vector weight \eqn{\mu=(\mu_1, \mu_2, \cdots , \mu_n)}. By Weighted.Desc.Stat package, one can easily summarize real-valued fuzzy data numerically or graphically using this package.
Calculating numerically summarize is possible by some weighted statistics in this package (such as mean, variance, covariance, correlation coefficent and etc) that summarize and interpret some of the properties of one or several sets of real-valued fuzzy data (real-valued fuzzy samples). Also, graphically interpretation can be drown by weighted histogram and weighted scatter plot using this package to describe properties of real-valued fuzzy data set.
}

\author{
Abbas Parchami

Maintainer: \packageMaintainer{Weighted.Desc.Stat}
}

%% \references{
%% put references to the literature/web site here 
%% }


\keyword{ Weighted Descriptive Statistics }
\keyword{ Weighted Statistics }
\keyword{ Real-valued Fuzzy Data }
\keyword{ Weighted Mean }
\keyword{ Weighted Variance }
\keyword{ Weighted Coefficient of Variation }
\keyword{ Weighted Standard Deviation }
\keyword{ Weighted Absolute Deviation }
\keyword{ Weighted Coefficient of Skewness }
\keyword{ Weighted Coefficient of Kurtosis }
\keyword{ Weighted Covariance }
\keyword{ Weighted Pearson's Correlation Coefficent }
\keyword{ Weighted Histogram }
\keyword{ Weighted Scatter Plot }

\examples{
## Weighted statistics for one variable (property):
x <- c(1:10)
mu <- c(0.9, 0.7, 0.8, 0.7, 0.6, 0.4, 0.2, 0.3, 0.0, 0.1)
w.mean(x, mu)
w.sd(x, mu)
w.var(x, mu)
w.ad(x, mu)
w.cv(x, mu)
w.skewness(x, mu)
w.kurtosis(x, mu)

## Weighted covariance, weighted correlation coefficent and weighted scatter
## plot for two variables (properties):
n=50
x =  rnorm(n,0,1)
y =  rnorm(n,0,1)
mu =  runif(n,0,1)
w.cov(x, y, mu)
w.r(x, y, mu)
w.plot(x, y, 0.3, mu, lwd=2)

## Weighted histogram for one variable (property):
n = 5000
x = rnorm(n,17,1)
x[x<14 | x>20] = NA
range(x)
mu = runif(n,0,1)
bre = seq(from=14,to=20,len=18)
cu = seq(from=0,to=1,len=10)
w.hist(x, mu, breaks=bre, cuts=cu, ylim=c(0,n/7), lwd = 2)
}
