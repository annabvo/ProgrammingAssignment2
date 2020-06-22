## This assignment helps in understanding how to play with two functions
## one has the matrix and its inverse
## the second one allows to get the inverse from an object within makeCacheMatrix() 

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL 
    set <- function(y){
      x <<- y
      inv <<- NULL 
    }
    get <- function() {X}
    setInverse <- function(inverse) {inv <<- inverse}
    getInverse <<- function() {inv}
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }


## The following function is the one which allows to get the inverse; it will return a matrix which is the inverse of "x"

cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  nat <- x$get()
  inv <- solve(nat, ...)
  x$setInverse(inv)
  inv
}