\name{Likelihoodfun}
\alias{Likelihoodfun}
\title{
Calculating log-Likelihood Function
}
\description{
Calculate the natural logarithm of the likelihood function.
}
\usage{
Likelihoodfun(p1m, p2f, p1f, n1m, n0m, n2f, n1f, n0f)
}
\arguments{
  \item{p1m}{
The male allele frequency of allele 1.
}
  \item{p2f}{
The female genotype frequency of genotype (1, 1).
}
  \item{p1f}{
The female genotype frequency of genotype (1, 2).
}
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
}
\details{
The values of p1m, p2f and p1f should be from 0 to 1, otherwise NaN is presented.
}
\value{
The function returns the value of the natural logarithm of the likelihood function.
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
\link{XHWE}, \link{ped}, \link{emf}, \link{result}, \link{emc}.
}

