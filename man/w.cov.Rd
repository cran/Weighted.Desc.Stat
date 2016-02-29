\name{w.cov}
\alias{w.cov}
%- Also NEED an '\alias' for EACH other topic documented here.

\title{ weighted covariance }

\description{ 
Assume that \eqn{x=(x_1, x_2, \cdots , x_n)} is the observed value of a random sample from a fuzzy population. 
In classical and usual random sample, the degree of belonging \eqn{x_i} into the random sample is equal to 1, for \eqn{1 \leq i  \leq  n}.
But considering fuzzy population, we denote the degree of belonging \eqn{x_i} into the fuzzy population (or into the observed value of random sample) by \eqn{\mu_i} which is a real-valued number from [0,1].
Therefore in such situations, it is more appropriate that we show the observed value of the random sample by notation \eqn{ \{ (x_1, \mu_1),  (x_2, \mu_2), \cdots , (x_n, \mu_n) \} } which we called it real-valued fuzzy data.
The goal of  w.cov  function is computing covariance (or, the weighted covariance) between two vector-valued data sets \eqn{x_1, \cdots , x_n} and  \eqn{y_1, \cdots , y_n}  based on real-valued fuzzy data \eqn{ \{ (x_1, \mu_1), \cdots , (x_n, \mu_n) \} }  and \eqn{ \{ (y_1, \mu_1), \cdots , (y_n, \mu_n) \} }  by considering their vector-valued weights, i.e.  \deqn{ s_{xy} = \frac{1}{\sum_{i=1}^{n} \mu_i} \sum_{i=1}^{n}  \mu_i (x_i-\bar{x})( y_i -\bar{y}). }
}

\usage{
w.cov(x, y, mu)
}

\arguments{
  \item{x, y}{
Two vector-valued numeric data sets which you want to compute the weighted covariance between them. 
}
  \item{mu}{
A vector of weights. The length of this vector must be equal to the length of data and each element of it is belongs to interval [0,1].
}
}

\value{
The weighted covariance between two vectors x and y, by considering weights vector mu, is numeric or a vector of length one.
}

%% \references{
%% put references to the literature/web site here 
%% }

\author{
Abbas Parchami 
}

\section{Warning }{
The length of x, y and mu must be equal. Also, each element of mu must be in interval [0,1].
}

\examples{
x <- c(1:10)
y <- c(10:1)
mu <- c(0.9, 0.7, 0.8, 0.7, 0.6, 0.4, 0.2, 0.3, 0.0, 0.1)
w.cov(x, y, mu)

## The function is currently defined as
function(x, y, mu)  (sum(mu*x*y)/sum(mu)) - (w.mean(x,mu) * w.mean(y,mu))
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Weighted Descriptive Statistics }
\keyword{ Weighted Statistics }
\keyword{ Real-valued Fuzzy Data }
\keyword{ Weighted Mean }
\keyword{ Weighted Scatter Plot }
\keyword{ Weighted Pearson's Correlation Coefficent }
\keyword{ Weighted Covariance }% __ONLY ONE__ keyword per line
