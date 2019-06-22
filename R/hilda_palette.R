## Hilda Day

hildaDay_palette <- c(
  "#F6E0D2",  ##
  "#DFA398",  ##
  "#9C6755",  ##
  "#659794",  ##
  "#EA967C",  ##
  "#F5C98E",  ##
  "#D65B5A",  ##
  "#586085"   ##
)

#' @title Hilda palette
#' @description Hilda palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname hildaDaypal
#' @export
#' @importFrom scales manual_pal

hildaDay_pal <- function(){
  scales::manual_pal(hildaDay_palette)
}

#' @title scale_color_hildaDay
#' @rdname hildaDaypal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_hildaDay <- function(...){
  ggplot2::discrete_scale("color", "hilda", hildaDay_pal(), ...)
}

#' @title scale_colour_hilda
#' @rdname hildaDaypal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_hilda <- scale_color_hildaDay

#' @title scale_fill_hildaDay
#' @rdname hildaDaypal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_hildaDay <- function(...){
  ggplot2::discrete_scale("fill", "hilda", hildaDay_pal(), ...)
}

## Hilda Dusk

hildaDusk_palette <- c(
  "#EFCBCB",  ##
  "#B47880",  ##
  "#824B51",  ##
  "#635761",  ##
  "#AD616C",  ##
  "#D1A391",  ##
  "#7D3450",  ##
  "#2B2D42"   ##
)

#' @title Hilda palette
#' @description Hilda palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname hildaDuskpal
#' @export
#' @importFrom scales manual_pal

hildaDusk_pal <- function(){
  scales::manual_pal(hildaDusk_palette)
}

#' @title scale_color_hildaDusk
#' @rdname hildaDuskpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_hildaDusk <- function(...){
  ggplot2::discrete_scale("color", "hilda", hildaDusk_pal(), ...)
}

#' @title scale_colour_hildaDusk
#' @rdname hildaDuskpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_hildaDusk <- scale_color_hildaDusk

#' @title scale_fill_hildaDusk
#' @rdname hildaDuskpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_hildaDusk <- function(...){
  ggplot2::discrete_scale("fill", "hilda", hildaDusk_pal(), ...)
}

## Hilda Night

hildaNight_palette <- c(
  "#E8E1E9",  ##
  "#C0A5AA",  ##
  "#4D3944",  ##
  "#7083A4",  ##
  "#B3A2B4",  ##
  "#C9CCEA",  ##
  "#3B3960",  ##
  "#1E2142"   ##
)

#' @title Hilda palette
#' @description Hilda palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname hildaNightpal
#' @export
#' @importFrom scales manual_pal

hildaNight_pal <- function(){
  scales::manual_pal(hildaNight_palette)
}

#' @title scale_color_hildaNight
#' @rdname hildaNightpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_hildaNight <- function(...){
  ggplot2::discrete_scale("color", "hilda", hildaNight_pal(), ...)
}

#' @title scale_colour_hildaNight
#' @rdname hildaNightpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_hildaNight <- scale_color_hildaNight

#' @title scale_fill_hilda
#' @rdname hildaNightpal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_hildaNight <- function(...){
  ggplot2::discrete_scale("fill", "hilda", hildaNight_pal(), ...)
}
