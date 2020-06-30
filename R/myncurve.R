#' Title
#'
#' @param mu mean
#' @param sigma standard dev
#' @param a upper bound for probability
#'
#' @return figure with graph of function, shaded area, and calculated probability
#' @export
#'
#' @examples
#' myncurve(10,2,7)
myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(-3*sigma, mu + 3*sigma))
  xcurve=seq(-3*sigma,a,length=1000)
  # Y values corresponding t0 the x values
  ycurve=dnorm(xcurve,mu,sigma)

  # Fill in the polygon with the given vertices
  polygon(c(-3*sigma,xcurve,a),c(0,ycurve,0),col="Red")

  # Put in the text with the appropriate area

  # Area
  prob=pnorm(a,mu,sigma)
  prob=round(prob,4)

  # Click to paste the text onto the graph
  text(x=a,y=0.05,paste("Area = ", prob, sep=""))
}

