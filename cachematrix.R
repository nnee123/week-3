## Put comments here that give an overall description of what your
## functions do

## Creates matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        in <- NULL
        set <- function(y) {
                x <<- y
                in <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) in <<- inverse
        getinverse <- function() in
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Cmputes the inverse of matrix created by makeCacheMatrix

cacheSolve <- function(x, ...) {
        in <- x$getinverse()
        if(!is.null(inver)) {
                message("getting cached data")
                return(in)
        }
        data <- x$get()
        in <- solve(data, ...)
        x$setinverse(inver)
        in
        ## Return a matrix that is the inverse of 'x'
}
