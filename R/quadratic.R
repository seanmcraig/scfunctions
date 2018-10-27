#' Quadratic Formula
#'
#' This function finds the roots (if any) of quadratic expressions in the following format: ax^2+bx+c.
#' @param a The coefficient on x^2
#' @param b The coefficient on x
#' @param c The bare coefficient
#' @examples
#' quadratic(1,2,1)

quadratic <- function(a, b, c){

  eqn <- paste(
    "(",
    a,
    ") * x^2 * (",
    b,
    ") * x + (",
    c,
    ")"
  )
  print("I read your function as:", noquote=TRUE)
  print(eqn)

  if (a == 0) {
    print("ERROR: Please enter a valid 'a' parameter.")
  }

  if (b^2 - 4*a*c > 0) {
    nroots <- 2
    part <- sqrt(b ^ 2 - 4*a*c)
    root <- c((-b + part)/(2*a), (-b - part)/(2*a))
  }
  else if (b^2 - 4*a*c == 0) {
    nroots <- 1
    root <- (-b)/(2*a)
  }
  else {
    nroots <- 0
  }

  print(paste("There is/are ",nroots," real roots."), noquote=TRUE)
  if (nroots > 0) {
    print("The roots are:", noquote=TRUE)
    print(root)
  }
}
