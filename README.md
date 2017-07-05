#### This project contains one script named ﻿﻿cachematrix.R with the following functions:

1. `makeCacheMatrix()`: creates a special "matrix" object that can cache its inverse.
2. `cacheSolve()`: computes the inverse of the special "matrix" returned by `makeCacheMatrix()` function above. If the inverse has already been calculated and the matrix has not changed, then cacheSolve should retrieve the inverse from the cache.
