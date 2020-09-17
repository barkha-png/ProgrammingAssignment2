## this function is used to get mean.

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
set <- function(y){ 
        X <<- y
        m <<- NULL
}
get <- function() X
setinverse <- function(mean) m <<- inverse
getinverse <- function() m
list(set = set , get = get ,
     setinverse = setiverse
     getinverse = getinverse)
} 

cacheSolve <- function(x, ...) {
 m <- x$getinverse()
 if(!is.null(m)) {
       message("getting cached data")
       return(m)
 }
 data <- X$get()
 m <- solve(data, ...)
 x$setinverse(m)      
 m        
}       
