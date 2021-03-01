# Load some data

Some_Data <- read_excel("Data/MidSpotify.xlsx")

# A sneak peak

head(Some_Data)

#Looks about the same 
S <- list(name = "Spotify", Some_Data)
S

#Ah something different
str(Some_Data)

#A useful function appears

isS4(Some_Data)


#Create an S3

s3 <- list(name = "Richard Cheese", occupation = "Comedian", networth = "10.00")

class(s3)
attributes(s3)

#Create an S4

setClass("Awful yet funny people",
         representation(
           name = "character", 
           occupation = "character", 
           networth = "character"
         ))


s4 <- new("Awful yet funny people", name = "Dane Cook", occupation = "Professional jerk", networth = "10.00")
s4
