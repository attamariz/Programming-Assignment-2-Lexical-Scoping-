
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## probando 
x1 <- matrix(c(1:4),2,2)
x1
x2 <- makeCacheMatrix(x1)
x2
cacheSolve(x2) 