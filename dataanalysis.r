comp.data = data.frame(
  employee_name = c("Ashwin","Dilesh","Vinod","Sujayeendra"),
  salary_in_Crores = c("301","302","301","302"),
  Date_of_Joining = as.Date(c("1-1-16","1-1-16","1-1-17","1-1-17"))
  )
comp.data
str(comp.data)
summary(comp.data)
Extract = data.frame(comp.data$employee_name,comp.data$Date_of_Joining)
print(Extract)
Extract2 = comp.data[1:3,]
print(Extract2)
Extract3 = comp.data[c(1,2),c(1,2)]
print(Extract3)
#Adding Column
comp.data$Company = c("IBM","Google","Amazon","NASA")
comp.data
#Add row
comp.newdata=data.frame(
  employee_name=c("Bharat","Rohit","Sameer"),
  salary_in_Crores = c("303","304","305"),
  Date_of_Joining = as.Date(c("1-1-18","1-1-19","1-1-18")),
  Company= c("Google","Microsoft","IBM")
)
rbind(comp.data,comp.newdata)