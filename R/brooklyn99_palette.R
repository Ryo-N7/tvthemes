## B99 regular palette ----
brooklyn99_palette <- c(
  "#F9FEFF", ## white
  "#000E33", ## dark navy
  "#e41a1c", ## red
  "#FCF40E", ## yellow
  "#e7298a"  ## hot pink
)

#' @title brooklyn99_pal
#' @description Brooklyn Nine Nine Color and Fill Scales
#' @return B99 palette
#' @details Colors that work well with the blue background!
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#' @rdname brooklyn99_pal
#' @export
#' @importFrom scales manual_pal

brooklyn99_pal <- function(){
  scales::manual_pal(brooklyn99_palette)
}

#' @title scale_color_brooklyn99
#' @description color scale B99
#' @param ... any other argument that can go into scale_color_*()
#' @rdname scale_color_brooklyn99
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_brooklyn99 <- function(...){
  ggplot2::discrete_scale("color", "brooklyn99", brooklyn99_pal(), ...)
}

#' @title scale_colour_brooklyn99
#' @description for British-spelling compatibility
#' @rdname scale_colour_brooklyn99
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_brooklyn99 <- scale_color_brooklyn99

#' @title scale_fill_brooklyn99
#' @description fill scales for Brooklyn Nine-Nine
#' @param ... misc. arguments that can go into scale_fill_*() functions
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_brooklyn99
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_brooklyn99 <- function(...){
  ggplot2::discrete_scale("fill", "brooklyn99", brooklyn99_pal(), ...)
}

## B99 dark palette ----
brooklyn99_dark_palette <- c(
  "#6CA9C3", ## light blue
  "#3A3533", ## dark gray
  "#000E33", ## dark navy
  "#CBCFD2", ## light gray
  "#175E78"  ## turqoise
)

#' @title brooklyn99_dark_pal
#' @description dark version of Brooklyn Nine-Nine palette
#' @return B99 dark palette
#' @details DETAILS
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#' @rdname brooklyn99_dark_pal
#' @export
#' @importFrom scales manual_pal

brooklyn99_dark_pal <- function(){
  scales::manual_pal(brooklyn99_dark_palette)
}

#' @title scale_color_brooklyn99_dark
#' @description DARK color scale B99
#' @param ... any other argument that can go into scale_color_*()
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_brooklyn99_dark
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_brooklyn99_dark <- function(...){
  ggplot2::discrete_scale("color", "brooklyn99_dark", brooklyn99_dark_pal(), ...)
}

#' @title scale_colour_brooklyn99_dark
#' @description for British-spelling compatibility
#' @rdname scale_colour_brooklyn99_dark
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_brooklyn99_dark <- scale_color_brooklyn99_dark

#' @title scale_fill_brooklyn99_dark
#' @description DARK fill scales for Brooklyn Nine-Nine
#' @param ... misc. arguments that can go into scale_fill_*() functions
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_brooklyn99_dark
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_brooklyn99_dark <- function(...){
  ggplot2::discrete_scale("fill", "brooklyn99_dark", brooklyn99_dark_pal(), ...)
}
