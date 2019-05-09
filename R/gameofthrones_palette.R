## Game of Thrones ----

## House targaryen ----

stark_palette <- c(
  "#cadde1", ## light-skyblue
  "#7B906F", ## grey-green
  "#174D79", ## light teal blue
  "#fffafa", ## snow white
  "#898989", ## dark-grey
  "#D4CDB1", ## light-grey-tan
  "#708090", ## slate grey
  "#120976", ## purple blue
  "#000000"  ## black
)

#' @title stark_pal
#' @description House Stark palette
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname stark_pal
#' @export
#' @importFrom scales manual_pal

stark_pal <- function() {
  scales::manual_pal(stark_palette)
}

#' @title scale_color_stark
#' @description House Stark color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_color_stark
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_stark <- function(...){
  ggplot2::discrete_scale("color", "stark", stark_pal(), ...)
}

#' @title scale_colour_stark
#' @description FUNCTION_DESCRIPTION
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @rdname scale_colour_stark
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_stark <- scale_color_stark

#' @title scale_fill_stark
#' @description House Stark fill scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname scale_fill_stark
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_stark <- function(...){
  ggplot2::discrete_scale("fill", "stark", stark_pal(), ...)
}


## House Lannister ----

lannister_palette <- c(
  "#89080A", ## maroon
  "#C5AA73", ## grey
  "#FEDF25", ## gold
  "#C24841", ## orange
  "#8B5B45", ## brown
  "#000000"  ## black
)

#' @title lannister_pal
#' @description House Lannister palette
#' @return OUTPUT_DESCRIPTION
#' @rdname lannister_pal
#' @export
#' @importFrom scales manual_pal

lannister_pal <- function() {
  scales::manual_pal(lannister_palette)
}

#' @title scale_color_lannister
#' @description House Lannister color scale
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
#' @rdname scale_color_lannister
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_lannister <- function(...){
  ggplot2::discrete_scale("color", "lannister", lannister_pal(), ...)
}

#' @title scale_colour_lannister
#' @description FUNCTION_DESCRIPTION
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @seealso
#'  \code{\link[ggplot2]{discrete_scale}}
#' @rdname scale_colour_lannister
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_lannister <- scale_color_lannister

#' @title scale_fill_lannister
#' @description House Lannister fill scale
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
#' @rdname scale_fill_lannister
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_lannister <- function(...){
  ggplot2::discrete_scale("fill", "lannister", lannister_pal(), ...)
}

## House Tyrell ----

tyrell_palette <- c(
  "#068105", ## darkgreen
  "#F7DC27", ## yellow
  "#808000", ## olive
  "#AB681B", ## brown
  "#F9FE76", ## lightgrass-green
  "#8DA080", ## grey-green
  "#717497", ## blue-grey
  "#98FB98", ## pale green
  "#3CB371"  ## medium sea green
)

#' @title tyrell_pal
#' @description House Tyrell palette
#' @return OUTPUT_DESCRIPTION
#' @rdname tyrell_pal
#' @export
#' @importFrom scales manual_pal

tyrell_pal <- function() {
  scales::manual_pal(tyrell_palette)
}

#' @title scale_color_tyrell
#' @description House Tyrell color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @seealso
#'  \code{\link[ggplot2]{discrete_scale}}
#' @rdname scale_color_tyrell
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_tyrell <- function(...){
  ggplot2::discrete_scale("color", "tyrell", tyrell_pal(), ...)
}

#' @title scale_colour_tyrell
#' @description FUNCTION_DESCRIPTION
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @rdname scale_colour_tyrell
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_tyrell <- scale_color_tyrell

#' @title scale_fill_tyrell
#' @description House Tyrell fill scale
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
#' @rdname scale_fill_tyrell
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_tyrell <- function(...){
  ggplot2::discrete_scale("fill", "tyrell", tyrell_pal(), ...)
}

## House Targaryen ----

targaryen_palette <- c(
  "#AC1F25", ## blood-red
  "#272727", ## lightblack
  "#ff9933", ## saffron
  "#828788", ## metallic grey
  "#96804b"  ## light-brown
)

#' @title targaryen_pal
#' @description House Targaryen palette
#' @return OUTPUT_DESCRIPTION
#' @rdname targaryen_pal
#' @export
#' @importFrom scales manual_pal

targaryen_pal <- function() {
  scales::manual_pal(targaryen_palette)
}

#' @title scale_color_targaryen
#' @description House Targaryen color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @seealso
#'  \code{\link[ggplot2]{discrete_scale}}
#' @rdname scale_color_targaryen
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_targaryen <- function(...){
  ggplot2::discrete_scale("color", "targaryen", targaryen_pal(), ...)
}

#' @title scale_colour_targaryen
#' @description House Targaryen colour scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @rdname scale_colour_targaryen
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_targaryen <- scale_color_targaryen

#' @title scale_fill_targaryen
#' @description House Targaryen fill scale
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
#' @rdname scale_fill_targaryen
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_targaryen <- function(...){
  ggplot2::discrete_scale("fill", "targaryen", targaryen_pal(), ...)
}


## House Tully ----

tully_palette <- c(
  "#212250", ## darkblue
  "#AE432F", ## darkorange
  "#E4EDCA", ## green-white
  "#8B5B45", ## brown
  "#4682B4", ## steelblue
  "#000000"  ## black
)

#' @title tully_pal
#' @description House Tully palette
#' @return OUTPUT_DESCRIPTION
#' @rdname tully_pal
#' @export
#' @importFrom scales manual_pal

tully_pal <- function() {
  scales::manual_pal(tully_palette)
}

#' @title scale_color_tully
#' @description House Tully color scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @seealso
#'  \code{\link[ggplot2]{discrete_scale}}
#' @rdname scale_color_tully
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_tully <- function(...){
  ggplot2::discrete_scale("color", "tully", tully_pal(), ...)
}

#' @title scale_colour_tully
#' @description FUNCTION_DESCRIPTION
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @rdname scale_colour_tully
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_tully <- scale_color_tully

#' @title scale_fill_tully
#' @description House Tully fill scale
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
#' @rdname scale_fill_tully
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_tully <- function(...){
  ggplot2::discrete_scale("fill", "tully", tully_pal(), ...)
}

## House Greyjoy ----

greyjoy_palette <- c(
  "#000000", ## black
  "#708090", ## slate gray
  "#D4CDB1", ## light-grey-tan
  "#DCDCDC", ## gainsborough
  "#F7DC27", ## yellow
  "#808080"  ## gray
)

# "#828788"  ## metallic grey

#' @title greyjoy_pal
#' @description House Greyjoy palette
#' @return OUTPUT_DESCRIPTION
#' @rdname greyjoy_pal
#' @export
#' @importFrom scales manual_pal

greyjoy_pal <- function() {
  scales::manual_pal(greyjoy_palette)
}

#' @title scale_color_greyjoy
#' @description House Greyjoy color scale
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
#' @rdname scale_color_greyjoy
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_greyjoy <- function(...){
  ggplot2::discrete_scale("color", "greyjoy", greyjoy_pal(), ...)
}

#' @title scale_colour_grey
#' @description House Greyjoy colour scale
#' @param ... PARAM_DESCRIPTION
#' @return OUTPUT_DESCRIPTION
#' @rdname scale_colour_greyjoy
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_greyjoy <- scale_color_greyjoy

#' @title scale_fill_greyjoy
#' @description House Greyjoy fill scale
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
#' @rdname scale_fill_greyjoy
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_greyjoy <- function(...){
  ggplot2::discrete_scale("fill", "greyjoy", greyjoy_pal(), ...)
}

## House Martell ----
martell_pal <- function() {
  scales::manual_pal(martell_palette)
}

scale_color_martell <- function(...){
  ggplot2::discrete_scale("color", "martell", martell_pal(), ...)
}

scale_fill_martell <- function(...){
  ggplot2::discrete_scale("fill", "martell", martell_pal(), ...)
}

## House Baratheon ----
baratheon_pal <- function() {
  scales::manual_pal(baratheon_palette)
}

scale_color_baratheon <- function(...){
  ggplot2::discrete_scale("color", "baratheon", baratheon_pal(), ...)
}

scale_fill_baratheon <- function(...){
  ggplot2::discrete_scale("fill", "baratheon", baratheon_pal(), ...)
}

## House Arryn ----

baratheon_pal <- function() {
  scales::manual_pal(baratheon_palette)
}

scale_color_baratheon <- function(...){
  ggplot2::discrete_scale("color", "baratheon", baratheon_pal(), ...)
}

scale_fill_baratheon <- function(...){
  ggplot2::discrete_scale("fill", "baratheon", baratheon_pal(), ...)
}
