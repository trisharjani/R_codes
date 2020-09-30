#Question2_Assessment_1

rm(list = ls())

install.packages("lattice")
install.packages("latticeExtra")
install.packages("xyplot")
library(lattice)
library(xyplot)
library(latticeExtra)
setwd("C:/Users/trish/Documents/GIT Portfolio/R_codes/R_codes")

divorce <- read.csv("data/divorce.csv")

#Make sex, id and year a factor 
divorce$id <- as.factor(divorce$id)
divorce$year <- as.factor(divorce$year)
divorce$sex <- factor(divorce$sex, levels = c("Male", "Female"))

#Summary of the data 
str(divorce)
head(divorce)

#mean well being
mean(divorce$well.being)
#Mean well being each year 
well.being.year.mean <- aggregate(well.being~year, data = divorce, FUN = mean)
print(well.being.year.mean)

#Adjust to remove the effect of individual differences in well being (the average mean PER person)
well.being.mean <- aggregate(well.being~id, data=divorce, FUN = mean)
names(well.being.mean)[names(well.being.mean)=="well.being"] <- "mean"  
divorce <- merge(well.being.mean, divorce)
divorce <- divorce[order(divorce$id, divorce$mean),]
divorce$adjusted <- with(divorce, well.being - mean)
head (divorce)

#boxplot
boxplot(adjusted~year, data=divorce, notch = TRUE,
        col=(c("gold", "darkgreen")),
        main = "Divorce and Well Being", xlab = "Year", ylab = "Well Being")

#Part 1 - How does divorce affect mental health?
#Run an anova on the data 
m3 <- aov(well.being ~ year + Error (id/year), data = divorce)
summary(m3)

# Part 2 Anova for testing the effect of gender on the overall impact of divorce on mental health
m4 <- aov(well.being ~ sex*year + Error (id/year), data = divorce)
summary(m4)

#Boxplot controlled for gender 
boxplot(adjusted~year*sex, data=divorce, notch = TRUE,
        col=(c("gold", "darkgreen")),
        main = "Divorce and Well Being By Gender", xlab = "Year", ylab = "Well Being")

#two separate graphs 
xyplot(adjusted ~ year | sex, data = divorce, xlab = "Year", ylab = "Well Being", 
       jitter.x = TRUE, grid = TRUE, groups = sex, 
       type = c("p","a"), col.line = "green")

