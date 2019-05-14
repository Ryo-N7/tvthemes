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

#' @title House Stark palette
#' @description House Stark palette
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname stark_pal
#' @export
#' @importFrom scales manual_pal

stark_pal <- function() {
  scales::manual_pal(stark_palette)
}

#' @title scale_color_stark
#' @rdname stark_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_stark <- function(...){
  ggplot2::discrete_scale("color", "stark", stark_pal(), ...)
}

#' @title scale_colour_stark
#' @rdname stark_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_stark <- scale_color_stark

#' @title scale_fill_stark
#' @rdname stark_pal
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

#' @title House Lannister palette
#' @description House Lannister palette
#' @rdname lannister_pal
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @export
#' @importFrom scales manual_pal

lannister_pal <- function() {
  scales::manual_pal(lannister_palette)
}

#' @title scale_color_lannister
#' @rdname lannister_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_lannister <- function(...){
  ggplot2::discrete_scale("color", "lannister", lannister_pal(), ...)
}

#' @title scale_colour_lannister
#' @rdname lannister_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_lannister <- scale_color_lannister

#' @title scale_fill_lannister
#' @rdname lannister_pal
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

#' @title House Tyrell palette
#' @description House Tyrell palette
#' @rdname tyrell_pal
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @export
#' @importFrom scales manual_pal

tyrell_pal <- function() {
  scales::manual_pal(tyrell_palette)
}

#' @title scale_color_tyrell
#' @rdname tyrell_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_tyrell <- function(...){
  ggplot2::discrete_scale("color", "tyrell", tyrell_pal(), ...)
}

#' @title scale_colour_tyrell
#' @rdname tyrell_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_tyrell <- scale_color_tyrell

#' @title scale_fill_tyrell
#' @rdname tyrell_pal
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

#' @title House Targaryen palette
#' @description House Targaryen palette
#' @rdname targaryen_pal
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @export
#' @importFrom scales manual_pal

targaryen_pal <- function() {
  scales::manual_pal(targaryen_palette)
}

#' @title scale_color_targaryen
#' @rdname targaryen_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_targaryen <- function(...){
  ggplot2::discrete_scale("color", "targaryen", targaryen_pal(), ...)
}

#' @title scale_colour_targaryen
#' @rdname targaryen_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_targaryen <- scale_color_targaryen

#' @title scale_fill_targaryen
#' @rdname targaryen_pal
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

#' @title House Tully palette
#' @description House Tully palette
#' @rdname tully_pal
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @export
#' @importFrom scales manual_pal

tully_pal <- function() {
  scales::manual_pal(tully_palette)
}

#' @title scale_color_tully
#' @rdname tully_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_tully <- function(...){
  ggplot2::discrete_scale("color", "tully", tully_pal(), ...)
}

#' @title scale_colour_tully
#' @rdname tully_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_tully <- scale_color_tully

#' @title scale_fill_tully
#' @rdname tully_pal
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

#' @title House Greyjoy palette
#' @description House Greyjoy palette
#' @rdname greyjoy_pal
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @export
#' @importFrom scales manual_pal

greyjoy_pal <- function() {
  scales::manual_pal(greyjoy_palette)
}

#' @title scale_color_greyjoy
#' @rdname greyjoy_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_greyjoy <- function(...){
  ggplot2::discrete_scale("color", "greyjoy", greyjoy_pal(), ...)
}

#' @title scale_colour_grey
#' @rdname greyjoy_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_greyjoy <- scale_color_greyjoy

#' @title scale_fill_greyjoy
#' @rdname greyjoy_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_greyjoy <- function(...){
  ggplot2::discrete_scale("fill", "greyjoy", greyjoy_pal(), ...)
}

# ## House Martell ----
# martell_pal <- function() {
#   scales::manual_pal(martell_palette)
# }
#
# scale_color_martell <- function(...){
#   ggplot2::discrete_scale("color", "martell", martell_pal(), ...)
# }
#
# scale_fill_martell <- function(...){
#   ggplot2::discrete_scale("fill", "martell", martell_pal(), ...)
# }
#
# ## House Baratheon ----
# baratheon_pal <- function() {
#   scales::manual_pal(baratheon_palette)
# }
#
# scale_color_baratheon <- function(...){
#   ggplot2::discrete_scale("color", "baratheon", baratheon_pal(), ...)
# }
#
# scale_fill_baratheon <- function(...){
#   ggplot2::discrete_scale("fill", "baratheon", baratheon_pal(), ...)
# }
#
# ## House Arryn ----
#
# baratheon_pal <- function() {
#   scales::manual_pal(baratheon_palette)
# }
#
# scale_color_baratheon <- function(...){
#   ggplot2::discrete_scale("color", "baratheon", baratheon_pal(), ...)
# }
#
# scale_fill_baratheon <- function(...){
#   ggplot2::discrete_scale("fill", "baratheon", baratheon_pal(), ...)
# }
