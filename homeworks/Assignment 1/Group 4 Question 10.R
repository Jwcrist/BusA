library(MASS)
Boston
?Boston
#The Boston data frame has 506 rows and 14 columns.
#The columns and rows represent data including crime, age and median value of owner-occupied homes in /$1000s
pairs(Boston)
#There is a negative correlation between the lower status of the population (lstat) and median value of owner occupied homes (medv). This correlation could be attributed to the fact that the lower the individual status, the lower the income of the home. Another example of negative correlation would be from the nitrogen oxcide concentration (nox) and the weighted mean of distances to Boston employment centers (dis). This correlation is related to the fact that as employment centers are more spread out, the polution decreases. An example of positive correlation would be the relationship between the average number of rooms per dwelling (rm) and median value of owner occupied home (medv). This graph shows that the number of rooms in a dwelling go up as the median value of the home increases.
#In regard to predictors associated with crime rate, there is one plot that illustrates the higher the median value of the home, the lower the crime rate.
write.csv(Boston, file="M:\\BA\\Boston.csv")
#Using the data, we were able to determine that crime rates increase in older houses and in ares with higher black populations. By building a scattergraph with the data in excel, we were able to determine that suburbs 400-500 have higher tax rates.Pupil teacher ratios appear to remain relatively constant within all suburbs.
#Using excel, we were able to calculate that 35 suburbs in the data set bound the Charles River
#Using excel, the median of the pupil-teacher ration is 19.05
#Using excel, suburb 399 and 406 have the lowest median value of owner-occupied homes.
#Using excel, 13% have rooms with more than 7 rooms
#Using excel, 3% have rooms with more than 7 rooms