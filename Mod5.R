
#Matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:100, nrow = 10)

#Transpose

A_T <- t(A)
B_T <- t(B)

#Create two vectors
A_vec <- c(1:10)
B_vec <- c(1:100)

#multiply matrices by vectors

A_x <- A %*% A_vec
B_x <- B %*% B_vec

#re-assign the vectors a and b to equal the number of rows of the column for the
#corresponding matrix
A_vec <- nrow(A)
B_vec <- nrow(B)

#Multiply the matrix by a matrix
C <- A %*% B

#Inverse the matrix
S <- matrix(2:5, nrow = 2)
solve(S)