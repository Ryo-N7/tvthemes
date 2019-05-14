simpsons_palette <- c(
  "#fed90f", ## #FFD235 simpsons yellow    #ffdb58 mustard    #fed90f metallic yellow
  "#424f46",  ## #424f46 greyish-blue
  "#d1b271",  ## #d1b271 lightbrownbeige
  "#FB4122",  ## #f14e28 orangered    	#F85639 lisa dress
  "#ABC67D",  ## #7bc242 applegreen     #ABC67D marge dress green
  "#0363C3", ## #007c7a teal    #0363C3 marge blue
  "#7A491E", ## #f7b686 beige    #7A491E
  "#000000",  ## #000000 black
  "#FC0209",   ## bart red
  "#46732EFF" ## Flanders green #46732EFF
)

#' @title The Simpsons palette
#' @description The Simpsons palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname simpsons_pal
#' @export
#' @importFrom scales manual_pal

simpsons_pal <- function(){
  scales::manual_pal(simpsons_palette)
}

#' @title scale_color_simpsons
#' @rdname simpsons_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_simpsons <- function(...){
  ggplot2::discrete_scale("color", "simpsons", simpsons_pal(), ...)
}

#' @title scale_colour_simpsons
#' @rdname simpsons_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_simpsons <- scale_color_simpsons

#' @title scale_fill_simpsons
#' @rdname simpsons_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_simpsons <- function(...){
  ggplot2::discrete_scale("fill", "simpsons", simpsons_pal(), ...)
}

