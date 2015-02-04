#a.)
college<-read.csv("college.csv")
tail(college)

#b.)
fix(college)
rownames(college)=college[,1]
fix(college)
college=college[,-1]
fix(college)

#c.)

#i.)
summary(college)

#ii.)
pairs(college[,1:10])

#iii.)
attach(college)
plot(Outstate~Private)

#iv.)
Elite=rep("No",nrow(college))
Elite[college$Top10perc>50]="Yes"
Elite=as.factor(Elite)
college=data.frame(college ,Elite)
summary(college)
#There are 27 elite Universities.
plot(college$Outstate~college$Elite)

#v.)
hist(Apps)
par(mfrow=c(2,2))
hist(Apps)
hist(Accept)
hist(Books)
hist(PhD)

#vi.)
#After reviewing the data and performing the basic functions of R, we have found that there are numerous ways to extract information. There are also multiple different ways to find this data, there are no "right" or "wrong" ways of doing so. Through analyzing qualitative variables, R allows you to get the data you will need, although proper coding must be enforced. The basic commands were a bit difficult to figure out, but the more we did the assignment, the more we started learning what we were actually doing. The visuals of the Histograms and Plot graphs were helpful in dissecting the data. 