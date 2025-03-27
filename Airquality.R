data("airquality")
View(airquality)

#Drop NA values

library(tidyverse)
clean <- drop_na(airquality)

str(clean)


#cleaning Data

clean$Month <- as.factor(clean$Month)
str(clean)
view(clean)


#Binary Classification 

x <-mean(clean$Ozone)

#Create new variable "Quality" where if the Ozone is > mean , quality='Bad' if not quality='Good'

clean$Quality <- as.factor(ifelse(clean$Ozone>x, "bad","good"))

#Create linear regression using the 'lm' command 

model <- lm(Ozone~Solar.R+ Wind + Temp , data = clean)
summary(model)
