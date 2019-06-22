bigHero6_palette <- c(
  "#ffff33",  ## gogo yellow #ffff1a #ffff19
  "#ffa500",  ## honeylemon/fredzilla orange #F84527  #ffa500  #ff8c00
  "#4F366F",  ## baymax/hiro darkpurple
  "#ff0000",  ## baymax red
  "#00fa9a",  ## wasabi green
  "#3177D5",  ## fredzilla blue  #50F2F7
  "#c71585",  ## honey lemon violet #9400d3 #ff00ff #C70039  #c71585
  "#000000"   ## black
)

#' @title Big Hero 6 palette
#' @description Big Hero 6 palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname bigHero6_pal
#' @export
#' @importFrom scales manual_pal

bigHero6_pal <- function(){
  scales::manual_pal(bigHero6_palette)
}

#' @title scale_color_bigHero6
#' @rdname bigHero6_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_bigHero6 <- function(...){
  ggplot2::discrete_scale("color", "bigHero6", bigHero6_pal(), ...)
}

#' @title scale_colour_bigHero6
#' @rdname bigHero6_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_bigHero6 <- scale_color_bigHero6

#' @title scale_fill_bigHero6
#' @rdname bigHero6_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_bigHero6 <- function(...){
  ggplot2::discrete_scale("fill", "bigHero6", bigHero6_pal(), ...)
}
