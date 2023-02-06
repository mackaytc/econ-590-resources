################################################################################
# Set Working Directory and Create a Folder to Store Data + Output
################################################################################

# Load the readxl package which lets you read / write excel files. Note that 
# you need to load both tidyverse and readxl explicitly (even though you get
# the readxl package downloaded when you install tidyverse)

library(tidyverse)
library(writexl)
library(readxl)

################################################################################
# Set Working Directory and Create a Folder to Store Data + Output
################################################################################

# Start by clearing working environment 

rm(list = ls())

# Define file storage locations 

my.desktop     <- "C:/Users/macka/Desktop"
working.folder <- "ECON 590 - Week Three Activity"
  
# Set working directory to laptop 

setwd(my.desktop)

# Create a folder on my desktop named "ECON 590 - Week Three Activity"

dir.create(paste(my.desktop, working.folder, sep = "/"))

setwd(working.folder)

# Check that we're in the correct folder

getwd()

# Create a sub-folder and check folder structure

dir.create("Data")

list.dirs()

# Save the Data folder location

dest.file = paste(getwd(), "Data", sep = "/")

################################################################################
# Download + Save the Data Set for Today Locally
################################################################################

# Save the.xlsx housing price data file from Canvas to your Data folder. Then
# we can use list.files() to check the file is available. 

list.files("Data")

setwd("Data")

# Read the Excel file using read_excel

housing.data <- read_excel("FHFA-Home-Price-Index-PO-state-level.xls")

# We'll create a small.sample indicator to flag variables tagged in the 
# Warning column - `Warning` has NA values when warning doesn't apply 

housing.data <- mutate(housing.data, 
                       data.flag = ifelse(is.na(Warning), 0, 1))

mean(housing.data$data.flag)

# We can use select() with a `-` sign to drop the text Warning variable

housing.data <- select(housing.data, -Warning) 

head(housing.data)

################################################################################
# Summary Statistics
################################################################################

# Create a table that stores the average price index over each year, saved as
# a new variable named avg.annual.price

summary.stats <- group_by(housing.data, yr) %>% 
  summarize(avg.annual.price = mean(index_sa))

summary.stats

################################################################################
# Export Summary Stats Table
################################################################################

# Export the summary stats table to an xlsx file named "Summary Stats.xlsx"

write_xlsx(summary.stats, "Summary Stats.xlsx")
