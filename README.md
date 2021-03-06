# Data Visualisation & Exploratory Analysis with R 

Within this repository, I have attached three R scripts written as a project for my MSc in Behavioural and Economic Science (2018)

The R packages employed here are:
* lattice (with xyplot)
* latticeExtra

The statistical methods employed are: 
* Simple linear regression 
* ANOVA

## 1. Does unemployment affect the well being of conscientious people more? 

[Click here to go to R script](https://github.com/trisharjani/R_codes/blob/master/Question1.R)

#### Study Outline ####
Using xyplot, lattice and latticeExtra, this script imports a .csv file using 1000 randomly observed individuals with 913 'recently employed' and 87 'recently unemployed' individuals. Well-being was recorded by asking individuals 'Overall, how satisfied with your life are you nowadays?' measured on a scale of 0 = "not at all" to 10 = "completely". Concientiousness was also measured using a personality test and was scaled with a mean of 0 and standard deviation of 1. This was selected as it is one one of the 'big five' personality traits and is commonly used in factor analysis in psychology (McCrae & Costa, 1987). Each one of the 'big five' represents a grouping of different personality traits where conscientiousness represents individuals who are _self-disciplined, organised, achievement-oriented_ amongst other traits. 

Conscientiousness has been documented as a predictor of success. Angela Duckworth and her colleagues found that conscientious adults excel in both objective such as income and wealth as well as subjective measures of success such as life satistfaction, positive affectivity (Duckworth et al., 2012). Nonetheless, the flipside, as Boyce, Wood and Brown (2010) document is that conscientious individuals do not always display higher wellbeing. For example, they find that the effect of unemployment on subjective measures of success such as life satisfaction is moderated by whether an individual is conscientious whereby conscientious individuals experience a significantly higher negative impact on life satisfaction. This analysis aims to verify and explore this relationship further.   

#### Steps of Analysis #### 
1. Employment was set as a dummy variable (1, 0)
2. Gathered basic summary statistics for the data displaying that mean well-being scores were 8.847 and mean conscientiousness was -0.0167 (on a scale of -3 to 3). 
3. Plotted a simple linear regression between well-being and conscientiousness, colour-coding for employment

#### Results ####
We may infer the following from the plot:
* Unemployment seems to have a significantly negative impact on well-being (p = 0.00902) as compared to the well-being of those who are employed 
* Conscientious individuals are also more likely to have their well-being impacted for each unit increase in self-reported conscientiousness, well-being falls by 0.28 on a 1-10 scale. 

*Graph displaying conscientiousness and well-being filtered by employment where 'Yes' represents recently unemployed and 'No' represents recently employed*

![Graph](https://github.com/trisharjani/R_codes/blob/master/images/Rplot.png)

## 2. How does divorce affect mental health? Is the impact the same for men and women? 

[Click here to go to R script](https://github.com/trisharjani/R_codes/blob/master/Question2.R)

### Study Outline ####
Using data from a longitudinal survey, well-being was measured on a 7-point scale at the end of each year. The data only focuses on those that got divorced during the survey as the analyis is looking to compare the impact of divorce on men versus women. 500 observations were recorded. Years are coded relative to the divorce year where 0 represents the year of divorce, -1 represents 1 year before and +1 represents 1 year after. 

### Steps of Analysis #### 
1. Set variables to be factor variables 
2. Gather basic summary statistics for the data displaying that the mean well-being irrespective of gender was 3.926 (on a scale of 1 to 10). The mean well-being overall also seems to decrease. See the Table of Means below 
3. Adjust to remove individual differences (as this is repeated measure data; same people across multiple time periods) 
4. Run 2 separate ANOVA analyses answering the following questions: 
    a) How does divorce affect mental health?
    b) What's the effect of gender on overall mental health? 
5. Visualise

#### Results #### 
*Table of Means over time* 
| Year | Mean Wellbeing |
| ---- | :------------: |
|  -2  |      5.12      |
|  -1  |      4.34      |
|   0  |      2.95      | 
|   1  |      3.38      |
|   2  |      3.84      |

_Data Visualisations_ 

<img src="https://github.com/trisharjani/R_codes/blob/master/images/Rplot02.png" width="500" height="350"/> 

<img src="https://github.com/trisharjani/R_codes/blob/master/images/Rplot03.png" width="500" height="350"/> 

<img src="https://github.com/trisharjani/R_codes/blob/master/images/Rplot04.png" width="400" height="350"/>

_ANOVA Results_  

<img src="https://github.com/trisharjani/R_codes/blob/master/images/anovaresults.jpg" width="550" height="500"/> 

_Brief Conclusions_
* Well-being ratings, irrespective of gender, do differ significantly over time. In particular, there is a significant overall reduction in wellbeing from years -2 to -1 and from -1 to 0. While there are increases in well-being from years 0 to 1 and 1 to 2, they are not significant. 
* While the ANOVA displays that the well being of men and women is significantly different from each other; the boxplot displays a significant drop in well-being for men betweeen -1 to 0 years and no significant changes throughout the five years for women. Though well-being for both men and women
generally increases post-divorce producing a general skewed-U shape trend shown in the 2nd boxplot
* Individual differences are displayed by the circle points in the third visual, raising the possibility of random noise. Despite adjusting for well-being, both also display outliers which may have unduly influenced plots.

### Bibliography ### 

Boyce, C. J., Wood, A. M., & Brown, G. D. (2010). The dark side of conscientiousness: Conscientious people experience greater drops in life satisfaction following unemployment. Journal of Research in Personality, 44(4), 535-539.

Duckworth, A. L., Weir, D. R., Tsukayama, E., & Kwok, D. (2012). Who does well in life? Conscientious adults excel in both objective and subjective success. Frontiers in psychology, 3, 356.

McCrae, R. R., & Costa, P. T. (1987). Validation of the five-factor model of personality across instruments and observers. Journal of personality and social psychology, 52(1), 81.

*Should anyone wish to replicate this analysis, feel free to get in touch with me and I can seek permission to share the data with you.*
