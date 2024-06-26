#' Set parameters
#' 
#' Set parameters
#' 
#' The list returned by the function should be passed to \code{GWASpoly} function.  
#' 
#' @param fixed Vector of names of fixed effects
#' @param fixed.type Vector of effect types ("numeric" or "factor"), corresponding to the effects listed in "fixed"
#' @param n.PC Number of principal components to include as covariates
#' @param MAF Minimum minor allele frequency
#' @param geno.freq Maximum genotype frequency (after applying dominance relations)
#' @param P3D TRUE/FALSE whether to use the P3D approximation (variance components not re-estimated for every marker)
#' 
#' @return A list with the following components 
#' \item{fixed}{Names of fixed effects}
#' \item{fixed.type}{Types of fixed effects}
#' \item{n.PC}{Number of principal components to include as covariates}
#' \item{min.MAF}{Minimum minor allele frequency}
#' \item{max.geno.freq}{Maximum genotype frequency (after applying dominance relations)}
#' \item{P3D}{TRUE/FALSE whether to use the P3D approximation}
#' 
#' @export

set.params <- function(fixed=NULL, fixed.type=NULL, n.PC=0, MAF=NULL,
                       geno.freq=NULL, P3D=TRUE) {
  stopifnot(is.null(MAF) | (MAF > 0 & MAF < 0.5))
  stopifnot(is.null(geno.freq) | (geno.freq > 0 & geno.freq < 1))
  stopifnot(length(fixed)==length(fixed.type))
  stopifnot(is.element(fixed.type,c("numeric","factor")))
  return(list(fixed=fixed,fixed.type=fixed.type,n.PC=n.PC,min.MAF=MAF,
              max.geno.freq=geno.freq,P3D=P3D))
}