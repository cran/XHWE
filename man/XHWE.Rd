\name{XHWE}
\alias{XHWE}
\title{
Likelihood Ratio Tests for Hardy-Weinberg Equilibrium (HWE) at SNP Markers on X Chromosome
}
\description{
Likelihood ratio tests for Hardy-Weinberg equilibrium (HWE) at marker loci on X chromosome.
}
\usage{
XHWE(ped, loci = NULL, header = T, status_missing = 9, allele_missing = 0, 
start.rho = 0.02, simuno = 1000, dv = 1e-07, itertime = 1000, filename = "results.txt")
}
\arguments{
  \item{ped}{
The name of a standard linkage pedigree file or a matrix/dataframe containing pedigree relationship, genotype, and phenotype information, one row for each individual. The first 5 columns give the pedigree id, individual id, father id (0 if founder), mother id (0 if founder), and sex (1=male, 2=female, 0=unknown), in that order. Note that these fields need to be numeric. The 6th column is the affection status (1 = unaffected, 2 = affected). From the 7th column, every consecutive two columns are the alleles at a SNP marker. For males, these two alleles at a SNP marker are the same, because males have only one X chromosome.
}
  \item{loci}{
The name of a standard linkage loci file. Note that only SNP markers are suitable for the code. For each SNP locus, there are two alleles 1 and 2.
}
  \item{header}{
The header of input data. If ped contains variable names, then set header = TRUE (or T). The names of SNPs will be used as row names of the output statistics and P values. Otherwise set header = FALSE (or F). The default value is TRUE (or T).
}
  \item{status_missing}{
The input variable "status_missing" is the missing value for the affection status in the data file, and the default value is 9. It can take NA, but cannot take 1, 2, or any other string values.
}
  \item{allele_missing}{
The input variable "allele_missing" represents the missing value for the allele. It may be 9 in some data files; or other numeric values; the default value is 0. It cannot be NA, 1, 2, or string values.
}
  \item{start.rho}{
The initial value of the inbreeding coefficient for iterations, which should be taken to be larger than 0. The default value is 0.02.
}
  \item{simuno}{
The number of bootstrap replications. The default value is 1000.
}
  \item{dv}{
The convergence criterion for the absolute difference between the estimates of the log-likelihood function at two consecutive iterations. The default value is 1e-7.
}
  \item{itertime}{
The maximum number of iterations. The default value is 1000.
}
  \item{filename}{
The name of the output file together with its physical path. The default filename is "results.txt".
}
}
\details{
This code contains the likelihood ratio tests for Hardy-Weinberg equilibrium (HWE) at SNP markers on X chromosome. The code only uses all the founders with the genotypes available from the input pedigree file. The results may be a little different for different runs due to the parametric bootstrap techniques.
}
\value{
The function outputs the values of all the test statistics (Tstat: LRT0, LRT1, LRT2, z0, z1, and z2) and the corresponding P values (Pvalue). Also, the code outputs the estimates of all the parameters under both the null and alternative hypotheses for each test statistic (Estimates_H1: the parameter estimates under H1; Estimates_H01: the parameter estimates under H01; Estimates_H02: the parameter estimates under H02; Estimates_H0: the parameter estimates under H0).
}
\references{
You XP, Zou QL, Li JL, Zhou JY. 2015 Likelihood Ratio Tests for Hardy-Weinberg Equilibrium at Marker Loci on X Chromosome. (submitted) 

Zheng G, Joo J, Zhang C, Geller NL. 2007 Testing Association for Markers on the X Chromosome. Genetic Epidemiology, 31: 834-843.

Dempster AP, Laird NM, Rubin DB. 1977 Maximum Likelihood from Incomplete Data via the EM algorithm. Journal of the Royal Statistical Society Series B(Methodological), 39: 1-38.
}
\author{
Xiao-Ping You, Qi-Lei Zou, Jian-Long Li, Ji-Yuan Zhou
}
\note{
Ped is required.
}


\seealso{
\link{emc}, \link{ped}, \link{emf}, \link{result}, \link{Likelihoodfun}.
}
\examples{
data(ped)
XHWE(ped,loci=NULL,header=T,simuno=100,filename="results.txt") 

##XHWE("ped.txt",loci=NULL,header=T,filename="results.txt") 
##if the pedigrees are saved in a text file
}