require(csound)

linear.scale <- function(x, min, max) {
  ## Linearly rescales vector x so that "lower" is the minimum
  ## and "upper" the maximum

  if(min>max) {
    ## Allow for reversed polarity
    x <- -x
    oldmin <- min
    oldmax <- max
    min <- oldmax
    max <- oldmin
  }
  
  nrange <- abs(max-min)
  out <- ((x-min(x))*nrange/(max(x)-min(x)) + min)
  out
}

rscore <- function(n, paramlist, funcname = "runif", instr = 1) {
  func <- getFunction(funcname)
  trix <- sapply(paramlist, function(x) {
    linear.scale(func(n), x[[1]], x[[2]])
  })
  cbind(1, trix)
}

