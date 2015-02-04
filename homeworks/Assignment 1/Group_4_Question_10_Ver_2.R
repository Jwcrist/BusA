#### GROUP 4 ####

### PROBLEM 10 ###

install.packages(c("MASS","ggplot2","dplyr"))
library(MASS)
library(ggplot2)
library(dplyr)

#a.)
tail(Boston)
dim(Boston)
#The Boston data frame has 506 rows and 14 columns.
?(Boston)
#The columns and rows represent data including crime, age and median value of owner-occupied homes in /$1000s

#b.)
pairs(Boston)
pairs(Boston[,1:7])
pairs(Boston[,8:14])
round(cor(Boston),2)
#There is a negative correlation between the lower status of the population (lstat) and median value of owner occupied homes (medv). 
  #This correlation could be attributed to the fact that the lower the individual status, the lower the income of the home. Another 
  #example of negative correlation would be from the nitrogen oxcide concentration (nox) and the weighted mean of distances to Boston 
  #employment centers (dis). This correlation is related to the fact that as employment centers are more spread out, the polution 
  #decreases. An example of positive correlation would be the relationship between the average number of rooms per dwelling (rm) and 
  #median value of owner occupied home (medv). This graph shows that the number of rooms in a dwelling go up as the median value of 
  #the home increases.

#c.)
ggplot(Boston, aes(medv,crim))+geom_point()
#In regard to predictors associated with crime rate, it is shown that there seems to be a relationship such that the higher the median 
  #value of the home, the lower the crime rate.

#d.)
write.csv(Boston, "Boston.csv")
# colnames(Boston)
ggplot(Boston, aes(black,crim))+geom_point()
ggplot(Boston, aes(age,crim))+geom_point()
ggplot(Boston, aes(ptratio,crim))+geom_point()
ggplot(Boston, aes(tax,crim))+geom_point()
ggplot(Boston, aes(black,lstat))+geom_point()
ggplot(Boston, aes(lstat,crim))+geom_point()
#We were able to determine that crime rates increase in older houses and in areas with higher black populations; by 
  #using a scatterplots. Also, we determined that suburbs 400-500 have higher tax rates. Pupil teacher 
  #ratios appear to remain relatively constant within all suburbs.


#e.)
Boston1<-Boston %>%
  filter(chas>0)
dim(Boston1)
#We were able to calculate that 35 suburbs in the data set bound the Charles River


#f.)
median(Boston$ptratio)
#The median of the pupil-teacher ration is 19.05

#g.)
Boston2<-Boston %>%
  mutate(suburb=as.numeric(1:nrow(Boston))) %>%
  select(suburb,medv) %>%
  arrange(-medv)
tail(Boston2,3)
#Suburb 399 and 406 have the lowest median value of owner-occupied homes.

#h.)
Boston3<-Boston %>%
  filter(rm>7)
dim(Boston3)
round((64/506)*100)
#13% have rooms with more than 7 rooms

Boston3<-Boston %>%
  filter(rm>8)
dim(Boston3)
round((13/506)*100,2)
#3% have rooms with more than 8 rooms