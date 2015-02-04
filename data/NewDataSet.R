# Ourdata<-read.csv("pdb2014bgv5_us.csv")
# colnames(Ourdata)
# library(dplyr)
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

NewDat<-read.csv("StateofNebraska.csv")

head(NewDat)
  
  