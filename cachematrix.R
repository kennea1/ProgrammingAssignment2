## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mymatrix = matrix()) {
inverse <- NULL
set <- function(y) { 
        mymatrix <<-y
        inverse <<- NULL
}

get <-function(){
 mymatrix       
        }
setInverse <- function(inverse){
        inverse <<-inverse
        }
getInverse <- function() {
        inverse
        }
set(mymatrix)
list(set=set, get=get, setInverse=setInverse,getInverse = getInverse)
}
        


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invFunc <- x$getInverse()
        if(!is.null(invFunc)) {
                message("fetching data")
                return(invFunc)
        }
        data <- x$get()
        invFunc <- solve(data, ...)
        x$setInverse(invFunc)
        message("calculating data")
        invFunc
                }
