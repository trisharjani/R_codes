#Question 1 
rm(list = ls())

install.packages("lattice") 
install.packages("latticeExtra")
install.packages("xyplot")
library(lattice)
library(latticeExtra)

setwd("C:/Users/trish/Documents/GIT Portfolio/R_codes/R_codes")

well.being <- read.csv("data/well-being.csv")

#Make employment a dummy variable  
well.being$employment_binary <- as.factor(ifelse(well.being$recently.unemployed=="Yes",1,0))

summary(well.being)

str(well.being)

#Plotting the data 
xyplot(well.being ~ conscientiousness, data = well.being, 
       xlab = "Conscientiousness", ylab = "Well Being", 
       jitter.x = TRUE, groups = recently.unemployed, 
       auto.key = list(space="right"), type = c("p","r"))

#Modelling the data
m1 <- lm(well.being~conscientiousness*recently.unemployed, data= well.being)
summary (m1)




