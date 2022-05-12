#'  Logistic population growth derivative with harvesting
#' @param time time since start
#' @param P population
#' @param parms - as list with three values, r, K, harv
#' @param r intrinsic growth rate; r = 0.05
#' @param K carrying capacity; K = 1000 kg
#' @param harv harvest rate; harv = 10 kg/year 
#' @return derivative of population with time 

dharvest= function(Time, P, parms) {
  
  dP = parms$r * P * (1- P/parms$K) - parms$harv
  return(list(dP))
}
