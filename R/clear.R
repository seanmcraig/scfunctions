#' Clear Environment
#' 
#' This simple function clears the global environment. There are no valid parameters.
#' @examples
#' clear()

clear <- function() {
  rm(list = ls())
  }