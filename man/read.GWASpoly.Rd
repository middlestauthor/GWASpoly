% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/read.GWASpoly.R
\name{read.GWASpoly}
\alias{read.GWASpoly}
\title{Read in marker and phenotype data}
\usage{
read.GWASpoly(ploidy, pheno.file, geno.file, format, n.traits, delim = ",")
}
\arguments{
\item{ploidy}{Ploidy (e.g., 2 for diploid, 4 for tetraploid)}

\item{pheno.file}{Name of the phenotype file}

\item{geno.file}{Name of the genotype file}

\item{format}{Format for the marker data. See details.}

\item{n.traits}{Number of traits}

\item{delim}{Character to indicate the delimiter in the data files (e.g., "," for csv, "\\t" for tab-delimited)}
}
\value{
Variable of class \code{GWASpoly.data}
}
\description{
Read in marker and phenotype data
}
\details{
The first column of the phenotype file contains the genotype identifier, columns 2 through (n.traits + 1) contain trait values, and subsequent columns contain the levels (for factors) or numeric values (for covariates) of any fixed effects.  
The first three columns of the genotype file are (1) marker name, (2) chromosome, and (3) position. Optionally, columns 4 and 5 can be REF and ALT, respectively. Subsequent columns contain the marker data for each individual in the population.  
Marker data can be coded in one of three formats: 
\itemize{
\item "numeric": markers are coded based on the dosage of the alternate allele, taking on values between 0 and ploidy
\item "AB": e.g., AAAB, ABBB for tetraploids
\item "ACGT": e.g., AAAT, GGCC for tetraploids
}
Only bi-allelic markers are allowed. As of version 2.02 of the package, fractional values of dosage are allowed for the "numeric" format, with missing values imputed by the population mean for each marker. The fractional values are only used for the additive genetic model; for the other models, dosages are rounded to the nearest whole number. If the input allele dosages are whole numbers, then missing values are imputed with the population mode (most frequent value) for each marker.
}
