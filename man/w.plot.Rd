\name{w.plot}
\alias{w.plot}

\title{ weighted scatter plot }

\description{ 
Assume that \eqn{x=(x_1, x_2, \cdots , x_n)} is the observed value of a random sample from a fuzzy population. 
In classical and usual random sample, the degree of belonging \eqn{x_i} into the random sample is equal to 1, for \eqn{1 \leq i  \leq  n}.
But considering fuzzy population, we denote the degree of belonging \eqn{x_i} into the fuzzy population (or into the observed value of random sample) by \eqn{\mu_i} which is a real-valued number from [0,1].
Therefore in such situations, it is more appropriate that we show the observed value of the random sample by notation \eqn{ \{ (x_1, \mu_1),  (x_2, \mu_2), \cdots , (x_n, \mu_n) \} } which we called it real-valued fuzzy data.
The weighted scatter plot, or weighted scatterplot, is a type of mathematical diagram to display values of two real-valued fuzzy data sets (from two variables of fuzzy populations) by considering a vector-valued weight. In weighted scatter plot, this kind of data is displayed as a collection of circles, the center point of each having the value of one variable determining the position on the horizontal axis and the value of the other variable determining the position on the vertical axis. Also the radius of each circle is considered equal to (or a ratio from) the weight of correcponding two-dimentional element (the center of circle).
}

\usage{
w.plot(x, y, mu, coef.radii, xlim = NULL, ylim = NULL, lwd = NULL, add = NULL, ...)
}

\arguments{
  \item{x, y}{
Two vector-valued numeric data sets which you want to drow the weighted scatter plot for them. 
}
  \item{mu}{
A vector of weights. The length of this vector must be equal to the length of data and each element of it is belongs to interval [0,1].
}
  \item{coef.radii}{
a possitive number giving the coefficient of radiuses for the circles, i.e. radius[i] = mu[i] * coef.radii.
}
  \item{xlim}{
numeric vector of length 2 giving the x limits for the plot. Unused if add = TRUE.
}
  \item{ylim}{
numeric vector of length 2 giving the y limits for the plot. Unused if add = TRUE.
}
  \item{lwd}{
The line width, a positive number, defaulting to 1. The interpretation is device-specific, and some devices do not implement line widths less than one. 
}
  \item{add}{
if add is TRUE, the new plot is added to an existing plot, otherwise a new plot is created.
}
  \item{...}{
 Arguments to be passed to methods, such as graphical parameters.
}
}

%% \references{
%% put references to the literature/web site here 
%% }

\author{
Abbas Parchami 

Department of Statistics, Faculty of Mathematics and Computer, Shahid Bahonar University of Kerman, Kerman, Iran
}

\section{Warning }{
The length of x, y and mu must be equal. Also, each element of mu must be in interval [0,1].
}

\examples{
n=50
x =  rnorm(n,0,1)
y =  rchisq(n,3)
mu =  runif(n,0,1)
w.plot(x, y, 0.3, mu, lwd=3)

## The function is currently defined as
function(x, y, mu, coef.radii, xlim = NULL, ylim = NULL, lwd = NULL, add = NULL, ...)
	{
		symbols(x, y, mu * coef.radii, inches = FALSE, xlim=xlim, ylim=ylim, lwd=lwd)
	}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Weighted Descriptive Statistics }
\keyword{ Weighted Statistics }
\keyword{ Real-valued Fuzzy Data }
\keyword{ Weighted Pearson's Correlation Coefficent }
\keyword{ Weighted Covariance }
\keyword{ Weighted Scatter Plot }% __ONLY ONE__ keyword per line
