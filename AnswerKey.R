


#Hackathon pizza v subway fare data 

#Add data to library 
library(readxl)
library(tidyverse)
library(ggplot2)
library(readxl)

MHD_Hackathon <- read_excel("Downloads/072020NYCMTAJuly2014.xlsx", 
                            sheet = "Sheet1")
View(MHD_Hackathon)

#Add pizza cost data to library

Pizza_Cost <- read_excel("Downloads/2014 NYC Slice Prices by MTA Station.xlsx")
View(Pizza_Cost)







#QUESTION 1
#Where does the pizza principle hold true?
##Check occasions when the average cost in an area is equal to $2.50

Pizza_Cost <- read_excel("Downloads/2014 NYC Slice Prices by MTA Station.xlsx")
Pizza_Cost %>% filter(Pizza_Cost$Median == 2.50)
View(Pizza_Cost$'MTA Station', which(Pizza_Cost$'Median'==2.50))


#QUESTION 2 
#Where does the pizza principle not hold true?
##Check all occasions when the median cost in an area is not equal to 2.50


Pizza_Cost %>% filter(Pizza_Cost$Median != 2.5)
view(Pizza_Cost$'MTA Station', which(Pizza_Cost$'Median'!= 2.5))

#data visualization
##First graph will show differential vs neighborhoods

# calculate mean salary for 
library(dplyr)

# plot mean salaries

plotdata <- data.frame(Pizza_Cost)

ggplot (data = plotdata, 
        aes(x = MTA.Station, 
            y = Median)) +
geom_bar(stat = "identity", color="blue", fill="blue")

#

library(readxl)
library(magrittr)
MHD_Hackathon <- read_excel("Downloads/072020NYCMTAJuly2014.xlsx", 
                                    n_max = 31)

t30 <- sapply(MHD_Hackathon, function(col) as.numeric(as.character(col))) %>%
  colMeans(na.rm = TRUE)
answer <- data.frame()


print(data.frame(t30, row.names = c('Stations', 'Visitors', 'test')))

ggplot(data=first_30, aes(x=first_30, y=first_30$colMeans.MHD_Hackathon..na.rm...TRUE.))  +
  geom_point(aes(size=2))









