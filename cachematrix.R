## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m = matrix() ) {

    ## setup the inverse property	
    i <- NULL

  ##set up the matrix
    set <- function( matrix ) {
            m <<- matrix
            i <<- NULL
    }

   ## technique 
    get <- function() {
    	## Return the matrix
    	m
    }

   ## technique to set the inverse of the matrix
    setInverse <- function(inverse) {
        i <<- inverse
    }

    ## technique to get the inverse of the matrix
    getInverse <- function() {
       
        i
    }

    ## Result to print a list of the methods
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



cacheSolve <- function(x, ...) {

   
    m <- x$getInverse()

    
    if( !is.null(m) ) {
            message("getting cached data")
            return(m)
    }

  
    data <- x$get()

   
    m <- solve(data) %*% data

    ## Set the inverse to the object
    x$setInverse(m)

   
    m
}
