#'most_point_player function
#'
#' This function shows the player with the highest points in the year selected
#' @param year The year of the data
#' @keywords most_point_player
#' @export
#' @examples
#' most_point_player(year)

most_point_player <- function(year){
  points <-  dplyr::filter(data, Year == year)
  newdata <- dplyr::arrange(points, desc(PTS))
  newdata$Player[1]
}
