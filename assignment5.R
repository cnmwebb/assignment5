library(MASS)

a = matrix(1:100, nrow=6)
b = matrix(1:1000, nrow = 6)

#multiplying by transposing of matrix to yield square matrix
a.square1 = a %*% t(a)
b.square1 = b%*% t(b)

#Trimming each matrix to the lower length value to yield square matrix
a.square2 = a[,1:6] 
b.square2 = b[,1:6]

#find determinant of each square matrix
a.det = det(a.square1)
b.det = det(b.square1)

#inverse of each square matrix
solve(a.square1)
solve(b.square1)

solve(a.square2)
solve(b.square2)

#generalized inverse with MASS package
a.inverse = ginv(a.square1)
b.inverse = ginv(b.square1)

a.2.inverse = ginv(a.square2)
b.2.inverse = ginv(b.square2)