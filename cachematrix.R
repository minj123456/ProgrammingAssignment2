## Put comments here that give an overall description of what your
## functions do

#it creates square matrix and gives the inverse of the matrix

## Write a short comment describing this function

#this function creates matrix x by x matrix

makeCacheMatrix <- function(x = numeric()) {
        m <- NULL
        set <- function(y) {
                x <<- y^(0.5)
                m <<- NULL
        }
        get <- function() x
        setmean <- function(x) m <<- matrix(1:(x*x),x,x)
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

## Write a short comment describing this function

#this function gives result-inverse of matrix that is created by makeCacheMatrix function
 
cacheSolve<- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        s <- data
        mat<-x$setmean(s)
       solve(mat)
}

#As a result, it gives inverse matrix (as you can see below)
make<-makeCacheMatrix(2)
cacheSolve(make)
