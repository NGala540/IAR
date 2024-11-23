# We load data from stzwr.csv
portfolio <- read.csv("stzwr.csv", sep=";", dec=",")

# We define variables for calculations
srebro <- portfolio$Srebro
zloto <- portfolio$Zloto

# we set portfolio weights
w1 <- seq(0.00, 1, 0.01)
w2 <- 1-w1

# We calculate standard deviations
s1 <- sd(srebro)
s2 <- sd(zloto)

# Correlation calculation
korelacja <- cor(srebro, zloto)

# Portfolio rate of return
portfolio_i <- mean(srebro)*w1+mean(zloto)*w2

# Portfolio risk
portfolio_risk <- (w1^2*s1^2+w2^2*s2^2+2*w1*w2*s1*s2*korelacja)^0.5

# Plotting
plot(portfolio_risk, portfolio_i, type="p", col="darkgreen")
title(main="Set of investment opportunities - 2 assets") 