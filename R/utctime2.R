#' Test anytime
#'
#' @param x A vector of type character, integer or numeric with date(time) expressions to be parsed and converted.
#' @export
utctime2 <- function(x) {
  anytime::utctime(x, tz = "UTC")
}
