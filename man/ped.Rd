\name{ped}
\alias{ped}
\docType{data}
\title{
A Standard Linkage Pedigree File
}
\description{
The first 5 columns give the pedigree id, individual id, father id (0 if founder), mother id (0 if founder), and sex (1=male, 2=female, 0=unknown), in that order. Note that these fields need to be numeric. The 6th column is the affection status (1 = unaffected, 2 = affected). From the 7th column, every consecutive two columns are the alleles at a SNP marker. For males, these two alleles at a SNP marker are the same, because males have only one X chromosome.
}
\usage{data("ped")}
\format{
  A data frame with 1000 observations on the following 10 variables.
  \describe{
    \item{\code{FamID}}{The pedigree id.}
    \item{\code{IID}}{The individual id.}
    \item{\code{FID}}{The father id.}
    \item{\code{MID}}{The mother id.}
    \item{\code{gender}}{The sex of the individual.}
    \item{\code{Status}}{The affection status.}
    \item{\code{SNP1_1}}{The allele at a SNP1 marker.}
    \item{\code{SNP1_2}}{The allele at a SNP1 marker.}
    \item{\code{SNP2_1}}{The allele at a SNP2 marker.}
    \item{\code{SNP2_2}}{The allele at a SNP2 marker.}
  }
}
\details{
The first 5 columns give the pedigree id, individual id, father id (0 if founder), mother id (0 if founder), and sex (1=male, 2=female, 0=unknown), in that order. Note that these fields need to be numeric. The 6th column is the affection status (1 = unaffected, 2 = affected). From the 7th column, every consecutive two columns are the alleles at a SNP marker. For males, these two alleles at a SNP marker are the same, because males have only one X chromosome.
}
\examples{
data(ped)
}
\keyword{datasets}
