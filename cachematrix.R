##This Function takes in the value of an invertible Matrix, stores it and then returns the inverse of the matrix




## takes in the value of the matrix


makeCacheMatrix <- function(x = matrix()) {



      m <- NULL

        set <- function(y) {

                x <<- y
                m <<- NULL



        } ##Setting the value of the matrix

        get <- function() x ##Getting the value of the Matrix



        setinverse <- function(inverse) m <<- inverse ##Set the value of inverse matrix



        getinverse <- function() m ##Getting the inverse value of matrix



        list(set = set, get = get,

             setinverse = setinverse,

             getinverse = getinverse)


}

install.packages(MASS)## Installing the package of Mass which has the function for getting the inverse of a matrix



## The following function solves and returns the inverse of the special matrix "makeCacheMatrix" 



## created in the previous function


cacheSolve <- function(x, ...) {



    m <- x$getinverse()## Gets the inverse of data from cache of previous function



        if(!is.null(m)) {

                message("getting cached data")



                return(m)
        } ##Checks if the inverse has already been calculated and in case it has been calculated, returns it



        data <- x$get() ## If the inverse is not calcultaed it gets the data from the previous function



        m <- ginv(data, ...)## Calculates the Inverse using ginv function from the MASS package



        x$setinverse(m)## Assisgns the inverse value to the set inverse function of the previous function thus 



        ## recursively calling it back in the previous If loop to be printed 



        m ##simply prints out inverse
}
