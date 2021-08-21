#' Runs the Construct Measurement Evaluation Tool.
#'
#' @description 'ConMET' is an R-shiny application that facilitates performing and evaluating confirmatory factor analyses (CFAs) and is useful for running and reporting typical measurement models in applied psychology and management journals. 'ConMET' automatically creates, compares and summarizes CFA models. Most common fit indices (E.g., CFI and SRMR) are put in an overview table. 'ConMET' also allows to test for common method variance. The application is particularly useful for teaching and instruction of measurement issues in survey research.  \cr The application uses the \code{\link[lavaan]{cfa}} function from the 'lavaan' package (Rosseel, 2012) to run CFAs.
#' \cr \cr Yves Rosseel (2012). lavaan: An R Package for Structural Equation Modeling. \emph{Journal of Statistical Software, 48(2)}, 1-36. URL https://www.jstatsoft.org/v48/i02/.
#' @import shiny shinydashboard
#' @return Runs the 'ConMET' shiny application.
#' @examples
#' if(interactive()){
#' library(conmet)
#' run_conmet()
#' }
#' @export
run_conmet <- function() {
  appDir <- system.file("myapp", package = "conmet")
  if (appDir == "") {
    stop("Could not find the 'myapp' directory. Try re-installing `conmet`.", call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}
