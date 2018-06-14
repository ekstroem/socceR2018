#' Convert ELO ratings to probabilities
#'
#' Compute the probability that team A will win over team B based on their ELO ratings
#'
#' This function returns the probabilities that team/player A will
#' win over team/player B given their ELO ratings
#' 
#' @param rating1 Non-negative ELO rating of team A
#' @param rating2 Non-negative ELO rating of team B
#' 
#' @author Claus Ekstrom \email{claus@@rprimer.dk}
#' @references Ekstrom, CT (2011) \emph{The R Primer}.
#' @keywords manip
#' @examples
#'
#' elo2prob(1800, 1600)
#'
#' @export
elo2prob <- function(rating1, rating2) {
    1/(1 + 10^((rating2-rating1)/400))
}
