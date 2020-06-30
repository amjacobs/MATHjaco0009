#' Title
#'
#' @param x random single sample
#'
#' @return confidence interval
#' @export
#'
#' @examples x = rnorm(30,mean=10,sd=12)
#' myci(x)
myci<-function(x){
  return(t.test(x)$conf.int)
}
