# Load package for csv file reading
library(readr)

# Read GBR file into a data frame GBR
GBR <- read.csv("~/workspace/Analysis/GBR_data.csv")

# View the data frame GBR
View(GBR)

# Read USA file into a data frame USA
USA <- read.csv("~/workspace/Analysis/USA_data.csv")

# View the data frame USA
View(USA)

# Get the summry of both GBR and USA
summary(GBR)
summary(USA)

# Load dplyr for data manipulation
install.packages("dplyr")
library(dplyr)


# Add variables for Min, Max, and Average Temp for GBR data
min_temp_GBR <- min(GBR$Temperature..C.)
max_temp_GBR <- max(GBR$Temperature..C.)
avg_temp_GBR <- mean(GBR$Temperature..C.)

print(min_temp_GBR)
print(max_temp_GBR)
print(avg_temp_GBR)

# Add variable for Min, Max, and Average Rainfall for GBR data
min_rain_GBR <- min(GBR$Rainfall..mm.)
max_rain_GBR <- max(GBR$Rainfall..mm.)
avg_rain_GBR <- mean(GBR$Rainfall..mm.)

print(min_rain_GBR)
print(max_rain_GBR)
print(avg_rain_GBR)

# Add variable for Min, Max, and Average Temp for USA data
min_temp_USA <- min(USA$Temperature..C.)
max_temp_USA <- max(USA$Temperature..C.)
avg_temp_USA <- mean(USA$Temperature..C.)

print(min_temp_USA)
print(max_temp_USA)
print(avg_temp_USA)

# Add variable for Min, Max, and Average Rainfall for USA data
min_rain_USA <- min(USA$Rainfall..mm.)
max_rain_USA <- max(USA$Rainfall..mm.)
avg_rain_USA <- mean(USA$Rainfall..mm.)

print(min_rain_USA)
print(max_rain_USA)
print(avg_rain_USA)

# Create vectors for both GBR and USA dataset
GBRv <- c(min_temp_GBR, max_temp_GBR, avg_temp_GBR, min_rain_GBR, max_rain_GBR, avg_rain_GBR)
USAv <- c(min_temp_USA, max_temp_USA, avg_temp_USA, min_rain_USA, max_rain_USA, avg_rain_USA)

# View the data
GBRv
USAv

# Create combined matrix for both datasets
combined_data <- cbind(GBRv, USAv)
colnames(combined_data) <- c ("GBR","USA")
combined_data

# Create a data frame to compare data from GBR and USA
df <- data.frame(combined_data, GBRv-USAv)
colnames(df) <- c("GBR","USA","GBR vs USA")
df