\name{emf}
\alias{emf}
\title{
Parameter Estimation by EM Algorithm When the Male and Female Allele Frequencies Are Different
}
\description{
The maximum likelihood estimates of the male allele frequencies, the female allele frequencies and the inbreeding coefficient by EM algorithm when the male and female allele frequencies are different.
}
\usage{
emf(n1m, n0m, n2f, n1f, n0f, nm, nf, rho, dv, itertime)
}
\arguments{
  \item{n1m}{
The number of males with allele 1.
}
  \item{n0m}{
The number of males with allele 2.
}
  \item{n2f}{
The number of females with genotype (1, 1).
}
  \item{n1f}{
The number of females with genotype (1, 2).
}
  \item{n0f}{
The number of females with genotype (2, 2).
}
  \item{nm}{
The number of all the males to be analyzed.
}
  \item{nf}{
The number of all the females to be analyzed.
}
  \item{rho}{
The initial value of the inbreeding coefficient.
}
  \item{dv}{
The convergence criterion for the absolute difference between the estimates of the log-likelihood function at two consecutive iterations. The default value is 1e-7.
}
  \item{itertime}{
The maximum number of iterations. The default value is 1000.
}
}
\details{
The maximum likelihood estimates of the male allele frequencies, the female allele frequencies and the inbreeding coefficient by EM algorithm when the male and female allele frequencies are different.
}
\value{
rho.last	
The estimate of the inbreeding coefficient rho by EM algorithm.

pm.last	
The estimate of the male allele frequency pm by EM algorithm.

pf.last	
The estimate of the female allele frequency pf by EM algorithm.
}
\references{
You XP, Zou QL, Li JL, Zhou JY. 2015 Likelihood Ratio Tests for Hardy-Weinberg Equilibrium at Marker Loci on X Chromosome. (submitted) 

Zheng G, Joo J, Zhang C, Geller NL. 2007 Testing Association for Markers on the X Chromosome. Genetic Epidemiology, 31: 834-843.

Dempster AP, Laird NM, Rubin DB. 1977 Maximum Likelihood from Incomplete Data via the EM algorithm. Journal of the Royal Statistical Society Series B(Methodological), 39: 1-38.
}
\author{
Xiao-Ping You, Qi-Lei Zou, Jian-Long Li, Ji-Yuan Zhou
}

\seealso{
\link{XHWE}, \link{ped}, \link{emc}, \link{result}, \link{Likelihoodfun}.
}

