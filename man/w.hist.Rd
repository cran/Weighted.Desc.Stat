\name{w.hist}
\alias{w.hist}

\title{ weighted histogram }

\description{ 
Assume that \eqn{x=(x_1, x_2, \cdots , x_n)} is the observed value of a random sample from a fuzzy population. 
In classical and usual random sample, the degree of belonging \eqn{x_i} into the random sample is equal to 1, for \eqn{1 \leq i  \leq  n}.
But considering fuzzy population, we denote the degree of belonging \eqn{x_i} into the fuzzy population (or into the observed value of random sample) by \eqn{\mu_i} which is a real-valued number from [0,1].
Therefore in such situations, it is more appropriate that we show the observed value of the random sample by notation \eqn{ \{ (x_1, \mu_1),  (x_2, \mu_2), \cdots , (x_n, \mu_n) \} } which we called it real-valued fuzzy data.
This function drow the weighted histogram for a vector-valued data by considering a vector-valued weight. The weighted histogram containes several classical histograms which are depicted on one two-dimentional sorface. Each classical histogram drown only for the elements of real-value fuzzy data set which their weights are bigger than a cut point belongs to (0,1].
}

\usage{
w.hist(x, mu, breaks, cuts, ylim = NULL, freq = NULL, lwd = NULL)
}

\arguments{
  \item{x}{
A vector-valued numeric data for which the weighted histogram is desired by considering their weights. 
}
  \item{mu}{
A vector of weights of the real-value fuzzy data. The length of this vector must be equal to the length of x and each element of it is belongs to interval [0,1].
}
  \item{breaks}{
a vector giving the breakpoints between the weighted histogram cells.
}
  \item{cuts}{
a vector giving the cut-points between (to determine) the classical histograms in the desired weighted histogram.
}
  \item{freq}{
logical; if TRUE, the histogram graphic is a representation of frequencies, the counts component of the result; if FALSE, probability densities, component density, are plotted (so that the histogram has a total area of one). Defaults to TRUE if and only if breaks are equidistant (and probability is not specified).
}
  \item{ylim}{
numeric vector of length 2 giving the y limits for the plot. Unused if add = TRUE.
}
  \item{lwd}{
The line width, a positive number, defaulting to 1. The interpretation is device-specific, and some devices do not implement line widths less than one. 
}
}


\details{
The arguments of the weighted histogram can be extended similar to the arguments of usual histogram which is detailed in function "hist" from "graphics" package.
}


%% \references{
%% put references to the literature/web site here 
%% }

\author{
Abbas Parchami 

Department of Statistics, Faculty of Mathematics and Computer, Shahid Bahonar University of Kerman, Kerman, Iran
}

\section{Warning }{
The length of x and mu must be equal. Also, each element of mu must be in interval [0,1].
}

\examples{
n = 5000
x = rnorm(n,17,1)
x[x<14 | x>20] = NA
range(x)
mu = runif(n,0,1)
bre = seq(from=14,to=20,len=18)
cu = seq(from=0,to=1,len=10)
w.hist(x, mu, breaks=bre, cuts=cu, ylim=c(0,n/7), lwd = 2)

## The function is currently defined as
function(x, mu, breaks, cuts, ylim = NULL, freq = NULL, lwd = NULL) 
{
Gray = paste("gray", round(seq(from=10, to=100, len=length(cuts)-1)), sep="")
hist(x, col=Gray[1], xlim=range(breaks), ylim=ylim, breaks=breaks, freq=freq, lwd=lwd)
i=2
while(i<=length(cuts))
{
X=x
X[(X*(mu>=cuts[i]))==0]=NA
hist(X, col=Gray[i], xlim=range(breaks), ylim=ylim, breaks=breaks, freq=freq, lwd=lwd, add=TRUE)
i=i+1
}
}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ Weighted Descriptive Statistics }
\keyword{ Weighted Statistics }
\keyword{ Real-valued Fuzzy Data }
\keyword{ Weighted Histogram }% __ONLY ONE__ keyword per line
