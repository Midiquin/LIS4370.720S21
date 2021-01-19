assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) { return(sum(assignment)/length(someData)) }

# This function does not work because of several reasons. 
# First reason is someData is not defined
# Second is that the varible names are different within the function,
# 'assignment2' does not equal assignment.
# Third is that the function is not called. 
# Below I have fixed the function.

someData <- c(4)

myMean2 <- function(var) { return(sum(var)/length(someData)) }

myMean2(assignment2)