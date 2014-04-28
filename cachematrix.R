## Calculating the inverse of a matrix x

# Next function makeCacheMatrix() creates a special "matrix" object
# that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    get <- function(){x}
    setinv <- function(solve){
        m <<- solve
    }
    getinv <- function(){m}
    list(set = set, get = get,
         setinv = setinv,
         getinv = getinv)
}

## Write a short comment describing this function
#Next function cacheSolve() computes the inverse of the special "matrix" 
#returned by function makeCacheMatrix() above.

cacheSolve <- function(x, ...) {
    m <- x$getinv()
        if(!is.null(m)) {
                message("\nCached data:")
                return(m)
        }
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
