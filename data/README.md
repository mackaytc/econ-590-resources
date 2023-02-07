# Data Overview

Sample data sets and links for open-source data included below. 

## ACS Sample Data

Available [here](https://github.com/mackaytc/econ-590-resources/blob/main/data/ACS-4k-obs-sample-data.csv) in `.csv` format. Variable definitions below: 
 * `year`: Census year (2004 to 2019) 
 * `state`: State name
 * `incwage`: Individual-level wage and salary income over the past year
 * `rentgrs`: Monthly gross rent
 * `foodstmp`: Binary indicator for whether respondent recieved food stamps (supplemental nutrional assistance program - string-formatted) 
 * `age`: Age of respondent
 * `sex`: Sex of respondent (string-formatted)
 * `marst`: Marital status of respondent (string-formatted)
 * `race`: Race of respondent (string-formatted)
 * `hispanic`: Binary indicator for Hispanic ethnicity (string-formatted) 
 * `labforce`: Labor force participation factor variable (string-formatted)
 * `school`: Binary indicator for currently enrolled in school (string-formatted)
 
 ## Home Price Index Data
 
Available [here](https://github.com/mackaytc/econ-590-resources/blob/main/data/FHFA-Home-Price-Index-PO-state-level.xls) in `.xls` format. This data is downloaded from the Federal Housing Finance Agency (FHFA) - you can read more about the data [here](https://www.fhfa.gov/DataTools/Downloads/Pages/House-Price-Index-Datasets.aspx). We're using their quarterly, state-level home price index (HPI), which is constructed using transactions records with the purchase prices of sold homes. 
 
 Variable definitions below: 
 * `state`: State (2-letter abbreviation)
 * `yr`: Year (data covers 1998 to 2022)
 * `qrt`: Quarter within given year ranging from 1 to 4
 * `index_nsa`: Home price index (HPI) __without__ seasonal-adjustments (base period is 1991Q1 with base value 100)
 * `index_sa`: Seasonally-adjusted HPI 
 * `Warning`: flag for states with limited transactions over sample period
