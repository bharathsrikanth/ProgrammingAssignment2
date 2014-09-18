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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
