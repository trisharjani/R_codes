# Data Visualisation & Exploratory Analysis with R 

Within this repository, I have attached three R scripts written as a project for my MSc in Behavioural and Economic Science (2018)

The R packages employed here are:
* lattice (with xyplot)
* latticeExtra

The statistical methods employed are: 
* Simple linear regression 
* ANOVA

## 1. Does unemployment affect the well being of conscientious people more? 

Using xyplot, lattice and latticeExtra, this script imports a .csv file using 1000 randomly observed individuals with 913 'recently employed' and 87 'recently unemployed' individuals. The striking disparity may have an impact on the data

Well-being was also recorded by asking individuals 'Overall, how satisfied with your life are you nowadays?' measured on a scale of 0 = "not at all" to 10 = "completely" 

Concientiousness was also measured using a personality test and was scaled with a mean of 0 and standard deviation of 1. 

Analysis steps: 
1. Employment was set as a dummy variable (1, 0)
2. Gathered basic summary statistics for the data displaying that mean well-being scores were 8.847 and mean conscientiousness was -0.0167 (on a scale of -3 to 3). 
3. Plotted a simple linear regression between well-being and conscientiousness, colour-coding for employment

We may infer the following from the plot:
* Unemployment seems to have a significantly negative impact on well-being (p = 0.00902) as compared to the well-being of those who are employed 
* Conscientious individuals are also more likely to have their well-being impacted for each unit increase in self-reported conscientiousness, well-being falls by 0.28 on a 1-10 scale. 

[Click here to go to R script](https://github.com/trisharjani/R_codes/blob/master/Question1.R)

*Graph displaying conscientiousness and well-being filtered by employment where 'Yes' represents recently unemployed and 'No' represents recently employed*
![Graph](https://github.com/trisharjani/R_codes/blob/master/images/Rplot.png)

## 2. How does divorce affect mental health? Is the impact the same for men and women? 

Using data from a longitudinal survey, well-being was measured on a 7-point scale at the end of each year. The data only focuses on those that got divorced during the survey as the analyis is looking to compare the impact of divorce on men versus women. 500 observations were recorded.

Years are coded relative to the divorce year where 0 represents the year of divorce, -1 represents 1 year before and +1 represents 1 year after. 

Analysis steps: 
1. Set variables to be factor variables 
2. Gather basic summary statistics for the data displaying that the mean well-being irrespective of gender was 3.926 (on a scale of 1 to 10). The mean well-being overall also seems to decrease. See the Table of Means below 
3. 

We may infer the following from the ANOVA results: 
* 

[Click here to go to R script](https://github.com/trisharjani/R_codes/blob/master/Question2.R)

*Table of Means over time* 
| Year | Mean Wellbeing |
| ---- | :------------: |
|  -2  |      5.12      |
|  -1  |      4.34      |
|   0  |      2.95      | 
|   1  |      3.38      |
|   2  |      3.84      |

*Graph displaying ...* 
![Graph]()

*Graph displaying ...* 
![Graph]()

## 3. How does distress after diagnosis of a serious illness vary depending on whether a person blames themselves or circumstances? 


*Should anyone wish to replicate this analysis, feel free to get in touch with me and I can seek permission to share the data with you.*
