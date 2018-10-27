#' Mandelbrot Iteration
#' 
#' This function runs a user-determined number of iterations of the formula that defines the Mandelbrot set, f(z)=z^2+c, and renders the series in a vector.
#' @param c The value of "c" in the above formula. Can take a properly-formatted complex number.
#' @param n The number of times to iterate. Default is 0. The lenght of the output series will be n+1.
#' @examples 
#' mbrot(.2+.3i,n=6)

mbrot <- function(c, n=0) {
  x <- c
  set <- c
  
  if (n > 0) {
    for (i in 1:n) {
      x <- x^2 + c
      set <- c(set,x) 
    }
    return(set)
  }
  
  # Case without iteration
  else if (n == 0) {
    x <- x^2 + c
    return(x)
  }
  
  #Error messages
  else if (n %% 1 != 0) {
    print("ERROR: Number of iterations must be a whole number.")
  }
  
  else {
    print("ERROR: Number of iterations must be greater than or equal to 0")
  }
}