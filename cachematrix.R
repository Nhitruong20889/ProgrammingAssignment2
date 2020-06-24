## Put comments here that give an overall description of what your
## functions do

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
i<- NULL # initial val of inverse prop.

#set method_ matrix
set <- function(matrix){
  m<<-matrix
  i<<-NULL
}
#get method_ matrix
get <-function(){
  m # return vals of matrix
}
#set method_ matrix inverse
setinverse <- function (inverse){
  i<<-inverse
}
#get method_ matrix inverse
getinverse <-function() {
  i
}
#return output-list of methods
list(set=set, get=get,
     setinverse = setinverse,
     getinverse = getinverse)
}


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


