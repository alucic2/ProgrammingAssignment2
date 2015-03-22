## MakeCacheMatrix is a function that contains a function inside function. The first function creates a matrix and contains a 
## function to 
## set the value of the matrix
## get the value of the matrix
## get the inverse of matrix, function solve

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
	x<<-y
	m<<-NULL

	}

	get<-function() x
	setmatrix<-function(solve) m<<- solve
	getmatrix<-function() m
	list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## This function calculates the value of the inverse of the matrix but it first checks to see if the inverse has already been calculated and if so it retrieves that data and if not it calculates the new inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		m<-x$getmatrix()
		if(!is.null(m)){
		message("getting cached data")
		return(m)
    }
    matrix<-x$get
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m

}
