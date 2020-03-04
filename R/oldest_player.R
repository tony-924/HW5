#'oldest_player function
#'
#' This function shows the oldest player in the year selected
#' @param year The year of the data
#' @keywords oldest_player
#' @export
#' @examples
#' oldest_player(year)

oldest_player <- function(year){
  age_data <-  dplyr::filter(data, Year == year)
  newdata <- arrange(age_data, desc(Age))
  newdata$Player[1]
}
