#Start with two matrices

A = matrix(c(2, 0, 1, 3), ncol = 2)
B = matrix(c(5, 2,4, -1), ncol = 2)

#Call/View matrices
A
B

#It appears that both matrices are the same size, therefore can be combined, added, subtracted.. etc.. 

# Find A + B

C <- A + B
C

# Find A - B

D <- A - B
D

#Use the diag() function to build a matric of size 4 with values 4, 1, 2, 3

E <- c(4, 1, 2, 3)

G <- diag(E)
G

#Generate the following matrix

#Makes 3 in diag
H <- diag(x = 3, nrow = 5)
H

#Adds 2 to col 1, rows 2:5
H[2:5] <- c(2)
H

#Adds 1 to row 1, col 2:5
H[1, 2:5] <- c(1)
H