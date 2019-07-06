## Game of Thrones ----

westeros_palette <- list(
  ## House Stark ----
  Stark = c(
    "#cadde1", ## light-skyblue
    "#7B906F", ## grey-green
    "#174D79", ## light teal blue
    "#fffafa", ## snow white
    "#898989", ## dark-grey
    "#D4CDB1", ## light-grey-tan
    "#708090", ## slate grey
    "#120976", ## purple blue
    "#000000"  ## black
  ),
  ## House Baratheon of Dragonstone ----
  Stannis = c(
    "#FF0000", ## rhllor red
    "#ff8d1a", ## rhllor orange
    "#FFD700", ## baratheon gold
    "#b20000", ## fire red
    "#cc6600", ## baratheon orange
    "#FFFF66", ## rhllor light yellow
    "#000000"  ## black
  ),
  ## House Lannister ----
  Lannister = c(
    "#89080A", ## maroon
    "#C5AA73", ## grey
    "#FEDF25", ## gold
    "#C24841", ## orange
    "#8B5B45", ## brown
    "#000000"  ## black
  ),
  ## House Tyrell ----
  Tyrell = c(
    "#068105", ## darkgreen
    "#F7DC27", ## yellow
    "#808000", ## olive
    "#AB681B", ## brown
    "#F9FE76", ## lightgrass-green
    "#8DA080", ## grey-green
    "#717497", ## blue-grey
    "#98FB98", ## pale green
    "#3CB371"  ## medium sea green
  ),
  ## House Targaryen ----
  Targaryen = c(
    "#AC1F25", ## blood-red
    "#272727", ## lightblack
    "#ff9933", ## saffron
    "#828788", ## metallic grey
    "#96804b"  ## light-brown
  ),
  ## House Martell ----
  Martell = c(
    "#ff8000", ## martell orange
    "#cc6600", ## martell darkorange
    "#b81b18", ## martell red
    "#73110f", ## martell wine red
    "#f8fc23", ## martell brightyellow
    "#fafd7b", ## martell lightyellow
    "#4c2600", ## martell brown
    "#a57642"  ## martell lightbrown
  ),
  ## House Tully ----
  Tully = c(
    "#212250", ## darkblue
    "#AE432F", ## darkorange
    "#E4EDCA", ## green-white
    "#8B5B45", ## brown
    "#4682B4", ## steelblue
    "#000000"  ## black
  ),
  ## House Greyjoy ----
  Greyjoy = c(
    "#000000", ## black
    "#708090", ## slate gray
    "#D4CDB1", ## light-grey-tan
    "#DCDCDC", ## gainsborough
    "#F7DC27", ## yellow
    "#808080"  ## gray
  ),
  ## House Manderly ----
  Manderly = c(
    "#40e0d0", ## manderly turqouise     #32BB9D
    "#808080", ## gray
    "#00ff00", ## light-sea green        #0FBB11
    "#282828", ## metallic black
    "#015202", ## dark seaweed green
    "#195953", ## dark turqoise
    "#FFFFFF"  ## white
  ),
  ## House Arryn ----
  Arryn = c(
    "#007fff", ## arryn blue
    "#7fbfff", ## arryn light blue
    "#001933", ## arryn dark navy
    "#4c4cff", ## arryn purple
    "#ffefb2", ## arryn beige
    "#a89797", ## arryn lightbrown
    "#FFFFFF"  ## white
  )
)

#' @title Great Houses of Westeros palette
#' @description Houses Stark, Lannister, Tyrell, Targaryen,
#' Tully, Greyjoy, Manderly
#' @inheritDotParams ggplot2::discrete_scale
#' @param palette name of palette, Default: "Stark"
#' @param n number of colors
#' @param type discrete or continuous
#' @param reverse reverse order, Default: FALSE
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @rdname westeros_pal
#' @export
#' @importFrom scales manual_pal

westeros_pal <- function(palette = "Stark", n, type = c("discrete", "continuous"),
                         reverse = FALSE) {
  westeros <- westeros_palette[[palette]]

  if (reverse == TRUE) {
    westeros <- rev(westeros)
  }

  if (missing(n)) {
    n <- length(westeros)
  }

  type <- match.arg(type)

  if (type == "discrete" && n > length(westeros)) {
    stop(glue::glue("Palette does not have {n} colors, maximum is {length(westeros)}!"))
  }

  westeros <- switch(type,
                  continuous = grDevices::colorRampPalette(westeros)(n),
                  discrete = westeros[1:n])

  westeros <- scales::manual_pal(westeros)

  return(westeros)
}

#' @title scale_color_westeros
#' @rdname westeros_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_westeros <- function(palette = "Stark", n, type = "discrete",
                                 reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("color", "westeros",
                          westeros_pal(palette = palette, n = n, type = type,
                                    reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_color_gradientn(colors = westeros_pal(palette = palette, n = n, type = type,
                                                      reverse = reverse)(8))
  }
}

#' @title scale_colour_westeros
#' @rdname westeros_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_westeros <- scale_color_westeros

#' @title scale_fill_westeros
#' @rdname westeros_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_westeros <- function(palette = "Stark", n, type = "discrete",
                                reverse = FALSE, ...){
  if (type == "discrete") {
  ggplot2::discrete_scale("fill", "westeros",
                          westeros_pal(palette = palette, n = n, type = type,
                                    reverse = reverse), ...)
  } else { ## needs work...
    ggplot2::scale_fill_gradientn(colors = westeros_pal(palette = palette, n = n, type = type,
                                                         reverse = reverse)(8))
  }
}

## House Dayne ----

dayne_palette <- c(
  "#B27ED0", ## dayne lightpurple
  "#FF00FF", ## dayne magenta
  "#66033C", ## dayne deep wine purple
  "#9F3BAB", ## dayne purple
  "#282828", ## metallic black
  "#4B0082", ## indigo
  "#FFFFFF"  ## white
)

#' @title House Dayne palette
#' @description House Dayne palette
#' @rdname dayne_pal
#' @inheritDotParams ggplot2::discrete_scale
#' @seealso
#'  \code{\link[scales]{manual_pal}}
#'  [ggplot2::scale_color_discrete]
#'  [ggplot2::scale_fill_discrete]
#' @export
#' @importFrom scales manual_pal

dayne_pal <- function() {
  scales::manual_pal(dayne_palette)
}

#' @title scale_color_dayne
#' @rdname dayne_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_dayne <- function(...){
  ggplot2::discrete_scale("color", "dayne", dayne_pal(), ...)
}

#' @title scale_colour_dayne
#' @rdname dayne_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_dayne <- scale_color_dayne

#' @title scale_fill_dayne
#' @rdname dayne_pal
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_dayne <- function(...){
  ggplot2::discrete_scale("fill", "dayne", dayne_pal(), ...)
}
