## Parks & Rec regular palette ----
parksAndRec_palette <- c(
  "#bdbdbd", ## yellowtan #fcf7e8  grey #969696    #bdbdbd
  "#a51209", ## maroon
  "#ffdb58",  ## lighter green (turqoise-ish) #238443     #ffdb58  mustard
  "#ec7014",  ## #4C3114 darker brown   #ec7014 darker orange
  "#7A491E",  ## regular brown
  "#C24841", ## darker reddish-orange
  "#005502", ## darker green
  "#f7fcb9",  ## lime green <<<<
  "#69983a", ## lightish gree #1A5E1F darkgreen
  "#b5651d"  ## beige #fee0d2     #b5651d light brown
)

#1A5E1FFF ## darkgreen
#CCFFBB ## lime green
#238443 ## lighter green
#4C3114 ## darker brown
#7A491E ## regular brown
#005502 ## darker green
#fcf7e8 ## grass green

#' @title parksAndRec_pal
#' @description Parks & Recreation theme
#' @rdname parksAndRec_pal
#' @export
#' @importFrom scales manual_pal

parksAndRec_pal <- function(){
  scales::manual_pal(parksAndRec_palette)
}

#' @title scale_color_parksAndRec
#' @description Parks & Recreation color scale
#' @param ... PARAM_DESCRIPTION
#' @rdname scale_color_parksAndRec
#' @export
#' @importFrom ggplot2 discrete_scale

scale_color_parksAndRec <- function(...){
  ggplot2::discrete_scale("color", "parksAndRec", parksAndRec_pal(), ...)
}

#' @title scale_colour_parksAndRec
#' @description for British-spelling compatibility
#' @param ... any other argument that can go into scale_colour_*()
#' @rdname scale_colour_parksAndRec
#' @export
#' @importFrom ggplot2 discrete_scale

scale_colour_parksAndRec <- scale_color_parksAndRec

#' @title scale_fill_parksAndRec
#' @description Parks & Recreation fill scale
#' @param ... PARAM_DESCRIPTION
#' @rdname scale_fill_parksAndRec
#' @export
#' @importFrom ggplot2 discrete_scale

scale_fill_parksAndRec <- function(...){
  ggplot2::discrete_scale("fill", "parksAndRec", parksAndRec_pal(), ...)
}
