##' Theme without checks. This allows us to write
##' theme_animint(width=500), instead of theme(animint.width=500)
##' which gives an error in ggplot2 because users should be informed
##' if they mis-type standard theme element
##' names. https://github.com/hadley/ggplot2/issues/938
##' @param ... theme options.
##' @param complete TRUE or FALSE.
##' @return ggplot theme list.
##' @export
##' @author Toby Dylan Hocking
theme_animint <- function(..., complete=FALSE){
  elements <- list(...)
  names(elements) <- paste0("animint.", names(elements))
  structure(elements, class=c("novalidate", "theme", "gg"), complete=complete)
}