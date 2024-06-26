#' S4 class with genotype and phenotype data
#' 
#' @slot map data frame with columns Marker,Chrom,Position,Ref,Alt
#' @slot pheno data frame of phenotypes
#' @slot geno matrix (individuals x markers) of allele dosages (0,1,2,...ploidy)
#' @slot fixed data frame of fixed effects
#' @slot ploidy ploidy
#' 
GWASpoly.data <- setClass("GWASpoly.data",slots=c(map="data.frame",pheno="data.frame",geno="matrix",fixed="data.frame",ploidy="numeric"))