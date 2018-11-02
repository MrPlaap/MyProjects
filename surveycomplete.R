# Loading Libraries
library(lattice)
library(ggplot2)
library(caret)

# Setting the workspace
setwd("C:/Users/iskan/Desktop/Ubiqum/Project2/Task2")

# Import dataset
surveycomplete <- read.csv('SurveyComplete.csv')

# Explore data
attributes(surveycomplete) 		#List your attributes within your data set.
summary(surveycomplete)    		#Prints the min, max, mean, median, and quartiles of each attribute.
str(surveycomplete) 			#Displays the structure of your data set.
names(surveycomplete) 			#Names your attributes within your data set.
surveycomplete$ColumnName 		#Will print out the instances within that particular column in your data set.

# Making Plots
hist(surveycomplete$ColumnName)
plot(surveycomplete$ColumnName,surveycomplete$ColumnName)
qqnorm(surveycomplete$ColumnName)

# Change Data-types
surveycomplete$elevel<-as.factor(surveycomplete$elevel)		#Changes elevel from numeric to factor
surveycomplete$car<-as.factor(surveycomplete$car)		#Changes car from numeric to factor
surveycomplete$zipcode<-as.factor(surveycomplete$zipcode)	#Changes zipcode from numeric to factor
surveycomplete$brand<-as.factor(surveycomplete$brand)		#Changes brand from numeric to factor

# Change Feature names


# Test if Data-types are correct
str(surveycomplete) 			#Displays the structure of your data set.