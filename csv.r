acs <- read.csv("/home/msc1/Desktop/R/acs_or.csv")#Importing a csv file
print(acs)
str(acs)#Gives the Structure of data
acs$age_husband#Gives data regarding the specified column heading
acs[1:2]#Column data  
acs[1:2,]#Data in row
head(acs[c(1,3,5)])#Gives specified columns
greater = subset(acs,age_wife>age_husband)#comparison
print(greater)
length(greater$age_wife)
summary(greater)
boxplot(acs[c(4,5)],col="red")
ggplot(greater)
