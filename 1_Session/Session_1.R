
# Importing and summarize the dataset cars.csv (with csv2)
cars<-read.csv2("cars.csv",dec=",")
summary(cars)

# Importing and summarize the dataset cars.csv (as a table)
cars<-read.table("cars.csv",sep=",")
summary(cars)
colnames(cars) <- c("mpg", "cylinders", "cubicinches", "hp", "weightlbs", "time-to-60", "year", "brand")
View(cars)

# If 'year' is a factor or character, convert to numeric
cars$year <- as.numeric(as.character(cars$year))

# Then you can plot the histogram
hist(cars$year, breaks = 10, main = "Distribution of Car Manufacture Years", xlab = "Year", col = "blue", border = "black")



