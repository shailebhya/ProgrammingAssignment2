## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## setting the input value x as a matrix and setting s (solved value as null) then all reference of mean have been changed to solve

makeCacheMatrix <- function(x = matrix()) {
s <- NULL
set <- function(y) {
x <<- y
s <<- NULL
  }
get <- function() x
setsolve <- function(solve) s <<- solve
getsolve <- function() s
list(set = set, get = get,
setsolve = setsolve,
getsolve = getsolve)
}


## Write a short comment describing this function
## Not much difference from the previous on , here i changed mean to "solve" and m to s to get the desired result

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
if(!is.null(s)) {
message("getting inversed matrix")
return(s)
  }
data <- x$get()
s <- solve(data, ...)
x$setsolve(s)
s
}
