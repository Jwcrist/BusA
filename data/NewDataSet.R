library(RCurl)
library(dplyr)
# Ourdata<-read.csv("pdb2014bgv5_us.csv")
# colnames(Ourdata)

# SelData<- Ourdata %>%
#   select(State, State_name, 
#          County, County_name, 
#          Tract, Block_Group, 
#          Tot_Population_ACS_08_12, 
#          Males_ACS_08_12, Females_ACS_08_12, 
#          Pop_25yrs_Over_ACS_08_12, Not_HS_Grad_ACS_08_12, 
#          College_ACS_08_12, Prs_Blw_Pov_Lev_ACS_08_12) #%>%
#   
# head(SelData,1)
# 
# SelData1<- SelData %>%
#   filter(State_name=="Nebraska")
# 
# head(SelData1)
# write.csv(SelData1,"StateofNebraska.csv")

# NewDat<-read.csv("StateofNebraska.csv")
# 
# head(NewDat)
# 
# NewDat1<- NewDat %>%
#   filter(County_name == "Douglas County")

# write.csv(NewDat1,"City_of_Omaha.csv")

dataset<-getURL(
  'https://raw.githubusercontent.com/Jwcrist/BusA/master/data/City_of_Omaha.csv',
  ssl.verifypeer=0L, 
  followlocation=1L)

NewDat1<-read.csv(text=dataset)
head(NewDat1)
NewDat1.1<-NewDat1[7:14]
NewDat1.1<-na.omit(NewDat1.1)
tail(NewDat1.1)

cor(NewDat1.1)
pairs(NewDat1.1[2:4])

#So the goal here is to analyze to see if where people live has any correlations with the predictors and to observe commmon themes.
summary(NewDat1.1)

lmod1<-glm(Block_Group~., data = NewDat1.1)
summary(lmod1)  

NewDat1.2<-NewDat1[7:12]

lmod2<-glm(Block_Group~.,data=NewDat1.2)
summary(lmod2)

head(NewDat1)
NewDat1.3<- NewDat1[7:12] %>%
  select(Block_Group,Tot_Population_ACS_08_12,Males_ACS_08_12,Pop_25yrs_Over_ACS_08_12,Not_HS_Grad_ACS_08_12)


lmod3<-glm(Block_Group~.,data=NewDat1.3)
summary(lmod3)


# ggplot(NewDat1.3, aes(Block_Group,)


length(unique(NewDat1$Block_Group))



  
