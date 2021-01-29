# library
library(ggplot2)

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")
ABC_poll<- c(4, 62, 51, 21, 2, 14, 15)
CBS_poll<- c(12, 75, 43, 19, 1, 21, 19) 

#Creates Data Frame from the above values
DF <- data.frame(Name, ABC_poll, CBS_poll)

#Returns the first 4 of DF
head(DF)

#Returns how many rows/columns
dim(DF)

#Returns names of columns
names(DF)

#Function to graph the poll results. 
GraphIT <- function(Poll){
  News_Plot <- ggplot(data=DF, aes(x=Name, y=Poll, fill=Name, label=Poll)) +
    geom_bar(stat = "identity") +
    geom_text(size = 3, position = position_stack(vjust = 0.5))
  
  return(News_Plot)
}

#CBS poll numbers graphed
CBS <- GraphIT(CBS_poll)
CBS

#ABC pull numbers graphed
ABC <- GraphIT(ABC_poll)
ABC


