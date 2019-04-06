rickAndMorty_palette <- c(
  "#01B4C6", ## #01B4C6 R&M turqoise
  "#97ce4c",  ## #97ce4c R&M green
  "#FFF874",  ## #FFF874 Morty yellow
  "#BEE5FD",  ## #BEE5FD Rick blue
  "#F675DA", ## #F675DA summer pink
  "#44281d",  ## regular brown
  "#3a4767", ## #3a4767 morty pants navy
  "#F8D3AC", ## #7FD112 portal green   #F8D3AC skin beige
  "#E64358",  ## #2D8844 portal darker green   #E64358 beth red
  "#ededee"  ## light grey
)

## various blue-turqoise shades
# #02afc5
# #35c9dd
# #87d1db
# #a9f3fd
# #4cb5c3


#' @title rickAndMorty_pal
#' @description Rick & Morty color palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname rickAndMorty_pal
#' @export
#' @importFrom scales manual_pal

rickAndMorty_pal <- function(){
  scales::manual_pal(rickAndMorty_palette)
}

#' @title scale_color_rickAndMorty
#' @description Rick & Morty color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[ggplot2]{discrete_scale}}
#' @rdname scale_color_rickAndMorty
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_rickAndMorty <- function(...){
  ggplot2::discrete_scale("color", "rickAndMorty", rickAndMorty_pal(), ...)
}

#' @title scale_fill_rickAndMorty
#' @description Rick & Morty fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @seealso
#'  \code{\link[ggplot2]{discrete_scale}}
#' @rdname scale_fill_rickAndMorty
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_rickAndMorty <- function(...){
  ggplot2::discrete_scale("fill", "rickAndMorty", rickAndMorty_pal(), ...)
}
