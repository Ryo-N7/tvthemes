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

kimPossible_pal <- function(n, type = c("discrete", "continuous"),
                            reverse = FALSE){
  kimPossible <- kimPossible_palette

  if (reverse == TRUE) {
    kimPossible <- rev(kimPossible)
  }

  if (missing(n)) {
    n <- length(kimPossible)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(kimPossible)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(kimPossible)}!"))
  }

  kimPossible <- switch(type,
                  continuous = grDevices::colorRampPalette(kimPossible)(n),
                  discrete = kimPossible[1:n])

  kimPossible <- scales::manual_pal(kimPossible)

  return(kimPossible)
}

#' @title scale_color_kimPossible
#' @rdname kimPossible_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_kimPossible <- function(n, type = "discrete",
                                    reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "kimPossible", kimPossible_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = kimPossible_pal(n = n, type = type,
                                                      reverse = reverse)(8))
  }
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

scale_fill_kimPossible <- function(n, type = "discrete",
                                   reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "kimPossible", kimPossible_pal(), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = kimPossible_pal(n = n, type = type,
                                                            reverse = reverse)(8))
  }
}
