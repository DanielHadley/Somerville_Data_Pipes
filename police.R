#### Created 3/16 by Daniel Hadley to download Somerville's Police data ####
# DPH worked with Chris Wendt to write the code that would pull from their ODBC and upload to Socrata
# This script just downloads that
# TODO: use their API to set up incremental instead of hitting their servers each night


# working Directory: the part you change for your machine #
setwd("c:/Users/dhadley/Documents/GitHub/Somerville_Data_Pipes/")

library(RCurl)



qol <- getURL(url = "https://data.somervillema.gov/api/views/n5sm-r6zx/rows.csv?accessType=DOWNLOAD", ssl.verifypeer=0L, followlocation=1L)

writeLines(qol,'//fileshare1/Departments2/Somerstat Data/Police/daily/QualityOfLife.csv')


ci <- getURL(url = "https://data.somervillema.gov/api/views/4jey-jqxb/rows.csv?accessType=DOWNLOAD", ssl.verifypeer=0L, followlocation=1L)

writeLines(ci, "//fileshare1/Departments2/Somerstat Data/Police/daily/CriminalIncidents.csv")


mvc <- getURL(url = "https://data.somervillema.gov/api/views/3md9-rv67/rows.csv?accessType=DOWNLOAD", ssl.verifypeer=0L, followlocation=1L)

writeLines(mvc,'//fileshare1/Departments2/Somerstat Data/Police/daily/MotorVehicleCitations.csv')


te <- getURL(url = "https://data.somervillema.gov/api/views/j2bq-38ev/rows.csv?accessType=DOWNLOAD", ssl.verifypeer=0L, followlocation=1L)

writeLines(te, "//fileshare1/Departments2/Somerstat Data/Police/daily/TrafficEnforcement.csv")