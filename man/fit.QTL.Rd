% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.QTL.R
\name{fit.QTL}
\alias{fit.QTL}
\title{Test markers as QTL under backward elimination}
\usage{
fit.QTL(data, trait, qtl, fixed = NULL)
}
\arguments{
\item{data}{variable inheriting from class \code{\link{GWASpoly.K}}}

\item{trait}{name of trait}

\item{qtl}{list of markers to fit in the multi-QTL model (see Details)}

\item{fixed}{list to specify fixed effects (see Details)}
}
\value{
data frame with partial r2 and p-values
}
\description{
Test markers as QTL under backward elimination
}
\details{
Each element of \code{qtl} is a character vector of length two with  format c("marker","model"). Each element of \code{fixed} is a character vector of length two: the first element is the name of the effect (must match column in phenotype input file) and the second element is either "factor" or "numeric". The p-value and R2 for each maker are based on the likelihood ratio test under backward elimination, comparing the deviance to the chi-squared distribution.
}