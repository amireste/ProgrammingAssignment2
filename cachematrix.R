## This function computes inverse of an invertible matrix

## This function creates a special matrix, which is a list
## of 4 functions to set & get values of the matrix and its 
## inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinv <- function(inv) i <<- inv
  getinv <- function() i
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## This function either computes matrix inverse,
## or gets it from previously computed cached 
## value (if the matrix is not changed)

cacheSolve <- function(x, ...) {
<<<<<<< HEAD
=======
  browser()
>>>>>>> cb6207cb6be5fad1fd4b0b7474fdb942fe032eca
  i <- x$getinv()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinv(i)
  i
}
