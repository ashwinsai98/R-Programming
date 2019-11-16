library(Matrix)
x = matrix(data=c(1:16),nrow=4,ncol=4)
y = matrix(runif(16,min=2,max=8),nrow=4,ncol=4)
x
y
add = x+y #component-wise add
add
mul = x*y #component-wise mul
mul
5 * x #5mat1
10 * y #10mat2
x^5 #mat1^5
y^10 #mat2^10
matmul = x %*% y #matrix multiplication
matmul
det(x)#detx
det(y)#dety
eigen(x)#eigenvalues and vectors
eigen(y)#eigenvalues and vectors
svd(x)#singular value decomposition
svd(y)#singular value decomposition
rankMatrix(x)#rank
rankMatrix(y)#rank      