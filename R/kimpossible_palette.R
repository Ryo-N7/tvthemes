kimPossible_palette <- c(
  "#FF8C00",  ## KP orange #A75422   #cc8400 #b27300   brighter orange #ffa500  #A65021 #AB5524
  "#024663",  ## Drakken blue
  "#70D423",  ## Shego green
  "#891604",  ## Ron red/burgundy
  "#02001F",  ## Ron navy
  "#9CF6F7",  ## KP supersuit lightblue
  "#FFCE45",  ## Ron yellow hair
  "#5D734D",  ## KP green eyes
  "#FEC3BB",  ## Rufus pink
  "#662C9C",  ## S4 KP combat purple
  "#fff9f5",  ## white
  "#000000"   ## black
)

#' @title Kim Possible palette
#' @description Kim Possible palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname kimPossible_pal
#' @export
#' @importFrom scales manual_pal

kimPossible_pal <- function(){
  scales::manual_pal(kimPossible_palette)
}

#' @title scale_color_kimPossible
#' @rdname kimPossible_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_kimPossible <- function(...){
  ggplot2::discrete_scale("color", "kimPossible", kimPossible_pal(), ...)
}

#' @title scale_colour_kimPossible
#' @rdname kimPossible_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_kimPossible <- scale_color_kimPossible

#' @title scale_fill_kimPossible
#' @rdname kimPossible_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_kimPossible <- function(...){
  ggplot2::discrete_scale("fill", "kimPossible", kimPossible_pal(), ...)
}
