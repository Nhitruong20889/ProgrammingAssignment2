## Put comments here that give an overall description of what your
## functions do

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
i<- NULL                       ##initial val of inverse prop.

set <- function(matrix){       ##set method_ matrix
  m<<-matrix
  i<<-NULL
}

get <-function(){              ##get method_ matrix
  m                            ## return vals of matrix
}

setinverse <- function (inverse){ ##set method_ matrix inverse
  i<<-inverse
}

getinverse <-function() {       ##get method_ matrix inverse
  i
}

list(set=set, get=get, 
     setinverse = setinverse,
     getinverse = getinverse)   ##return output-list of methods
}


## --------.//.------.//.-------
## --------.//.------.//.-------

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        
  m<-x$getinverse() ## Return a matrix that is the inverse of 'x'
  ## Return a matrix-inverse for existing  of 'x'
  if(!is.null(m) ){
    message ("getting cached data!")
    return (m)
  }
  dt <-x$get() # get data/mtx from "object"
  m <- solve(dt) %*% dt # cal. inserved matrix by matrix multiplication
  x$setinverse(m) # set inversed matrix as an object
  m
}


