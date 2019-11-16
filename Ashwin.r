airline <- read.csv("/home/msc1/Desktop/Presentation/airline_safety.csv")#Importing a csv file
print(airline)
str(airline)#Gives the Structure of data
summary(airline)
name = airline$airline

airline$avail_seat_km_per_week#Gives data regarding the specified column heading
barplot(airline$avail_seat_km_per_week,main="Seats available per Km per Week",col = "black",xlab = "Different Flights", names.arg = name)
airline[1:2]#Column data 
airline[1:2,]#Data in row
head(airline[c(1,3,6)])#Gives specified columns
greater = subset(airline,incidents_85_99<incidents_00_14)#comparison
print(greater)
myflight = subset(airline,airline=="Air India*")
print(myflight)

plot(density(airline$incidents_85_99),xlab = "Incidents",main="Incidents between 1985-1999",lty="dotted",col='red')
plot(density(airline$incidents_00_14),xlab = "Incidents",main="Incidents between 2000-2014",lty="dotted",col='blue')
plot(density(airline$fatal_accidents_85_99),xlab = "Accidents",main="Fatal Accidents between 1985-1999",lty="dotted",col='brown')
plot(density(airline$fatal_accidents_00_14),xlab = "Accidents",main="Fatal Accidents between 2000-2014",lty="dotted",col='black')
plot(density(airline$fatalities_85_99),xlab = "Deaths",main="Deaths between 1985-1999",lty="dotted",col='orange')
plot(density(airline$fatalities_00_14),xlab = "Deaths",main="Deaths between 2000-2014",lty="dotted",col='purple')



boxplot(airline[c(3,6)],col="red")
summary(airline[c(3,6)])
boxplot(airline[c(4,7)],col="steelblue")
summary(airline[c(4,7)])
boxplot(airline[c(5,8)],col="orange")
summary(airline[c(5,8)])

hist(airline$incidents_85_99,xlab = "Incidents",main="Incidents occoured between 1985-1999",col="black")
hist(airline$incidents_00_14,xlab = "Incidents",main="Incidents occoured between 2000-2014",col="blue")
hist(airline$fatal_accidents_85_99,xlab = "Accidents",main="Accidents occoured between 1985-1999",col="red")
hist(airline$fatal_accidents_00_14,xlab = "Accidents",main="Accidents occoured between 2000-2014",col="orange")
hist(airline$fatalities_85_99,xlab = "Deaths",main="Deaths occoured between 1985-1999",col="purple")
hist(airline$fatalities_00_14,xlab = "Deaths",main="Deaths occoured between 2000-2014",col="brown")

barplot(airline$incidents_85_99,xlab = "Various Flights",main="Incidents occoured between 1985-1999",col="black")
barplot(airline$incidents_00_14,xlab = "Various Flights",main="Incidents occoured between 2000-2014",col="blue")
barplot(airline$fatal_accidents_85_99,xlab = "Various Flights",main="Accidents occoured between 1985-1999",col="orange")
barplot(airline$fatal_accidents_00_14,xlab = "Various Flights",main="Accidents occoured between 2000-2014",col="red")
barplot(airline$fatalities_85_99,xlab = "Various Flights",main="Deaths occoured between 1985-1999",col="purple")
barplot(airline$fatalities_00_14,xlab = "Various Flights",main="Deaths occoured between 2000-2014",col="brown")

improvement = subset(airline,fatalities_85_99 > 0 & fatalities_00_14 == 0)
print(improvement[c(1,5,8)])


degraded = subset(airline,fatalities_85_99 == 0 & fatalities_00_14 > 0)
print(degraded[c(1,5,8)])

consistent = subset(airline,fatalities_85_99 == 0 & fatalities_00_14 == 0)
print(consistent[c(1,5,8)])

largest = max(airline$avail_seat_km_per_week)
large = subset(airline,avail_seat_km_per_week == largest)
print(large[c(1,2)])

smallest = min(airline$avail_seat_km_per_week)
small = subset(airline,avail_seat_km_per_week == smallest)
print(small[c(1,2)])

safest = subset(airline,incidents_85_99 == 0 & fatal_accidents_85_99 == 0 & fatalities_85_99 == 0 & incidents_00_14 == 0 & fatal_accidents_00_14 == 0 & fatalities_00_14 == 0)
print(safest[c(1,3:8)])










  

