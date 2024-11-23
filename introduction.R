# function definition
arithmetic_return <- function(FV, PV) {
  (FV-PV)/PV
}

aritmethic_return(FV=110, PV=100)

# available packages in R: 
# https://cran.r-project.org/web/packages/available_packages_by_name.html

install.packages("dtw")
library("dtw")

# loading data
tabela <- read.csv("stzwr.csv", header=TRUE, sep=";", dec=",")

# navigating through table
tabela$WIG

tabela[1, 1]

tabela[,1]

tabela[1,]

tabela[1:2,]

tabela[c(1,2), 4]



