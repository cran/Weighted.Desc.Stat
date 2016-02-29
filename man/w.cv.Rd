\name{w.cv}
\alias{w.cv}

\title{ weighted coefficient of variation }

\description{ 
Assume that \eqn{x=(x_1, x_2, \cdots , x_n)} is the observed value of a random sample from a fuzzy population. 
In classical and usual random sample, the degree of belonging \eqn{x_i} into the random sample is equal to 1, for \eqn{1 \leq i  \leq  n}.
But considering fuzzy population, we denote the degree of belonging \eqn{x_i} into the fuzzy population (or into the observed value of random sample) by \eqn{\mu_i} which is a real-valued number from [0,1].
Therefore in such situations, it is more appropriate that we show the observed value of the random sample by notation \eqn{ \{ (x_1, \mu_1),  (x_2, \mu_2), \cdots , (x_n, \mu_n) \} } which we called it real-valued fuzzy data.
The goal of  w.cv  function is computing the coefficient of variation (or, the weighted coefficient of variation) value of \eqn{x_1, \cdots , x_n} based on real-valued fuzzy data \eqn{ \{ (x_1, \mu_1), \cdots , (x_n, \mu_n) \} }  by considering its vector-valued weight. In other words, the weighted coefficient of variation is equal to the weighted standard deviation devided by the weighted mean. 
}

\usage{
w.cv(x, mu)
}

\arguments{
  \item{x}{
A vector-valued numeric data which you want to compute its weighted coefficient of variation. 
}
  \item{mu}{
A vector of weights. The length of this vector must be equal to the length of data and each element of it is belongs to interval [0,1].
}
}

\value{
The weighted coefficient of variation for vector x, by considering weights vector mu, is numeric or a vector of length one.
}

%% \references{
%% put references to the literature/web site here 
%% }

\author{
Abbas Parchami 
}

\section{Warning }{
The length of x and mu must be equal. Also, each element of mu must be in interval [0,1].
}

\examples{
x <- c(1:10)
mu <- c(0.9, 0.7, 0.8, 0.7, 0.6, 0.4, 0.2, 0.3, 0.0, 0.1)
w.cv(x, mu)

## The function is currently defined as
function(x, mu)  w.sd(x,mu) / w.mean(x,mu)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Weighted Descriptive Statistics }
\keyword{ Weighted Statistics }
\keyword{ Real-valued Fuzzy Data }
\keyword{ Weighted Coefficient of Variation }
\keyword{ Weighted Mean }
\keyword{ Weighted Standard Deviation }% __ONLY ONE__ keyword per line
