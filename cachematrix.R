## Two functions showing below are used to cache the inverse of a matrix 

## makeCacheMatrix function created a special "matrix", a list containing
## below functions:
## - set the value of the matrix
## - get the value of the matrix
## - set the value of the inverse matrix
## - get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

       a <- NULL    ## given the inverse property
set <- function(y)  ## set the matrix
       x<<- y
       a<<- NULL
get <- function()   ## get the matrix
	x
setInverse <- function(inverse)    ## set the inverse of matrix
	a<<- inverse
getInverse <- function ()           ## get the inverse of matrix
	a
list( set=set, get=get,            ## return 
      setInverse= setInverse, get=getInverse)
}


## cacheSolve funtions computes the inverse of the special "matrix" returned
## by above. If the inverse has already been calculated, then cacheSolve
## should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
a<- x$getInverse()  
if (!is.NULL(a)){          ## return the inverse if already exist
	message("getting cached data")
	return(a)
}
data <- x$get()            ## otherwise calculate inverse and store in cache
a <- solve(data)
x$setInverse(a)
a                          ## return
}
