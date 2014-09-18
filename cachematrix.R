## makeCacheMatrix is a function that caches and obtains the inverse 
## of an invertible matrix. It is a list of four functions
## set: stores the matrix value in cache
## get: obtains the matrix
## setinv: Finds the iverse using the 'solve' function and stores it in cache
## getinv: Retrieves the inverse from cache


makeCacheMatrix <- function(x = matrix()) {
    inverse<-NULL
    set<-function(y){ #stores matrix
        x<<-y
        inverse<<-NULL
    }
    get<-function() x  #retrieves matrix
    setinv<-function(solve) inverse<<-solve  #calculates and caches matrix inverse
    getinv<-function() inverse  #retrieves matrix inverse
    list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## cacheSolve: Calculates inverse of given matrix, if not previously calculated. 
## If the inverse has been calculated previously, the inverse is returned

cacheSolve <- function(x, ...) {
   inverse <- x$getinv()
   if(!is.null(inverse)) {  #checks whether inverse has been returned
      message("Getting cached inverse...")
      return(inverse)
   }
   mat1 <- x$get() #Obtaining and finding inverse of matrix (assuming it hasn't been found)
   inverse <- solve(mat1, ...)
   x$setinv(inverse)
   inverse
}
