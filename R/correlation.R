#' Correlation Function
#'
#' This function outputs a correlation matrix for all numeric variables in the data for that year.
#' @param year The year of the data
#' @keywords correlation
#' @export
#' @examples
#' correlation(year)

correlation <- function(year){
  numeric_var <- purrr::keep(data,is.numeric)
  corr_data <-  dplyr::filter(numeric_var, Year == year)
  cor(corr_data)
}
