rm(list = ls())

options(repos = c(CRAN = "http://cran.rstudio.com"))

install.packages("lattice")
install.packages("latticeExtra")

library(lattice)
library(latticeExtra)
setwd("C:/Users/trish/Documents/GIT Portfolio/R_codes/R_codes")

distress <- read.csv("data/distress.csv")

#Summary of data first 
sum(distress)
str(distress)

#Plot the data
self.blame <- xyplot(self.blame~distress, distress, xlab = "Self-Blame", ylab = "Distress", 
                     type = c("p","r"), jitter.x = TRUE, jitter.y = TRUE)
circumstance.blame <- xyplot(circumstance.blame~distress, distress, xlab = "Circumstance Blame", 
       ylab = "Distress", type = c("p", "r"), jitter.x=TRUE, jitter.y=TRUE)

print(self.blame)
print(circumstance.blame)

#Running 3 Regressions
#self-blame affecting distress
s.b. <- lm(distress ~ self.blame, data = distress)
summary(s.b.)
 
c.b. <- lm(distress ~ circumstance.blame, data = distress)
summary (c.b.)

c.b.and.s.b <- lm(distress ~ circumstance.blame + self.blame, data = distress)
summary(c.b.and.s.b)

options(repos="https://cran.rstudio.com")

install.packages("lattice", repos = "https://CRAN.R-project.org/package=lattice")
install.packages("latticeExtra", repos = "https://CRAN.R-project.org/package=latticeExtra")

