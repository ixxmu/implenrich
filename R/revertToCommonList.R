# gson list to normal list
#' Title
#'
#' @param gson a gson list(s) object
#'
#' @return
#' @export
#'
#' @examples
revertToCommonList <- function(gson) {
  if (!inherits(gson, "GSONList")) {
    stop("Input must be a GSONList object.")
  }
  class(gson) <- NULL
  return(gson)
}
