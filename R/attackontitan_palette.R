attackOnTitan_palette <- c(
  "#004c00",  ## cape green  #42694a #004c00 #004000  	#3C4D3D
  "#173357",  ## survey corp blue
  "#3E1E13",  ## jacket brown   lightbrown #6f553f
  "#e50000",  ## titan red   #BF2F1F
  "#999BA0",  ## blade steel
  "#c8a780",  ## jacket lighttan
  "#EB6154",  ## titan skin pink
  "#000000"   ## black
)

#' @title Attack On Titan palette
#' @description Attack On Titan palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname attackOnTitan_pal
#' @export
#' @importFrom scales manual_pal

attackOnTitan_pal <- function(n = n, type = c("continuous", "discrete"),
                              reverse = FALSE){
  attackOnTitan <- attackOnTitan_palette

  if (reverse == TRUE) {
    attackOnTitan <- rev(attackOnTitan)
  }

  if (missing(n)) {
    n <- length(attackOnTitan)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(attackOnTitan)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(attackOnTitan)}!"))
  }

  attackOnTitan <- switch(type,
                     continuous = grDevices::colorRampPalette(attackOnTitan)(n),
                     discrete = attackOnTitan[1:n])

  attackOnTitan <- scales::manual_pal(attackOnTitan)

  return(attackOnTitan)
}

#' @title scale_color_attackOnTitan
#' @rdname attackOnTitan_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_attackOnTitan <- function(n = n, type = c("continuous", "discrete"),
                                      reverse = FALSE, ...){
  ggplot2::discrete_scale("color", "attackOnTitan",
                          attackOnTitan_pal(n = n, type = type,
                                       reverse = reverse), ...)
}

#' @title scale_colour_attackOnTitan
#' @rdname attackOnTitan_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_attackOnTitan <- scale_color_attackOnTitan

#' @title scale_fill_attackOnTitan
#' @rdname attackOnTitan_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_attackOnTitan <- function(n = n, type = c("continuous", "discrete"),
                                     reverse = FALSE, ...){
  ggplot2::discrete_scale("fill", "attackOnTitan",
                          attackOnTitan_pal(n = n, type = type,
                                       reverse = reverse), ...)
}
