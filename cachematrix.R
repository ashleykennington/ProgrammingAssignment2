## Caches a matrix to test against and then caches the invert of the test matrix

## set matrix0.tovert to x
## set matrix0.inverted to NULL

makeCacheMatrix <- function(x = matrix()) {
    matrix0.toinvert <<- x
    matrix0.inverted <<- NULL
}

## If matrix.toinvert is equal to matrix x then invert x
## and set matrix0.inverted equal to invert of x
## If matrix0.toinvert is not equal to x then set it to matrix.toinvert
## and set matrix0.inverted to invert of x
## return matrix0.inverted

cacheSolve <- function(x, ...) {
    if (identical(matrix0.toinvert, x) && is.null(matrix0.inverted)) {
        matrix0.inverted <<- solve(x)
    } else if (!identical(matrix0.toinvert, x)) {
        matrix0.toinvert <<- x
        matrix0.inverted <<- solve(x)
    }
    matrix0.inverted
}
