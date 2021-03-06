#' submit_to_cluster
#'
#' @description Submit to cluster
#'
#' @param ... Parameters passed on to \code{clustermq::Q()}.
#'
#' @details
#' Wrapper around the function \code{Q()} of the *clustermq* package. The submitting and
#' finishing time are printed
#'
#' @seealso
#' \code{\link{Q}}
#'
#' @return list
#'
#' @examples
#' \dontrun{
#' fx = function(x) x * 2
#' submit_to_cluster(fx, x = 1:3, n_jobs = 1)
#' }
#'
#'
#' @aliases submit_to_cluster
#' @rdname submit_to_cluster

#' @export
submit_to_cluster <- function(...) {

  message("> Submitting to HPC at ", Sys.time())

  result <- clustermq::Q(...)

  message("> Finished at ", Sys.time())

  return(result)
}
