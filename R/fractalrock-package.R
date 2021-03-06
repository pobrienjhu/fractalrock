# :vim set filetype=R
#' Generate fractal time series with non-normal returns distribution
#'
#' Simulating stock market prices and returns can be accomplished using a number
#' of techniques. Most commonly, geometric brownian motion (aka a random walk) is  used to simulate stock prices. Using this technique results in a normal
#' distribution of price returns. As an alternative technique, it is possible to
#' generate price series using fractals. The advantage is that price returns
#' tend to have volatility that clusters, similar to actual returns.
#'
#' The basic principle driving fractal generation of time series is that 
#' data is generated iteratively based on increasing levels of resolution.
#' The initial series is defined by a so-called initiator pattern and 
#' then generators are used to replace each segment of the initial pattern.
#' Regular, repeatable patterns can be produced by using the same seed and 
#' generators. By using a set  of generators, non-repeatable time series 
#' can be produced. This technique is the basis of the fractal time series 
#' process in this package.
#'
#' To generate a set of asset prices, the function 
#' \code{\link{rprices}}is the most direct way to accomplish this.
#' An xts object will be returned with one time series per 'asset' provided.
#' In addition, the dates will be coerced
#' to fit a given business day calendar based on timeDate.
#' 
#' Investigation into fractals via this package is best accomplished 
#' by calling the underlying \code{\link{rfractal}} function.
#' This function produces raw values
#' useful for analysis of the fractal generation process.
#'
#' \tabular{ll}{
#' Package: \tab fractalrock\cr
#' Type: \tab Package\cr
#' Version: \tab 1.4\cr
#' Date: \tab 2016-08-17\cr
#' License: \tab LGPL-3\cr
#' LazyLoad: \tab yes\cr
#' }
#'
#' @name fractalrock-package
#' @aliases fractalrock-package fractalrock
#' @docType package
#' @exportPattern "^[^\\.]"
#' @import timeDate lambda.r lambda.tools futile.logger Matrix lubridate xts zoo
#' @author Brian Lee Yung Rowe <r@@zatonovo.com>
#' @keywords package ts math
#' @references M. Frame, B. Mandelbrot, N. Neger. Fractal Geometry. 2009.
#' http://classes.yale.edu/fractals/
NULL 
