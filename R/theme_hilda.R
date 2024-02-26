## Hilda Day ----

#' @title Hilda "Day" theme
#' @description Hilda Day theme
#' @param text.font text font, Default: "Chelsea Market"
#' @param title.font title font, Default: "Chelsea Market"
#' @param legend.font legend font, Default: "Chelsea Market"
#' @param title.size title font size, Default: 18
#' @param text.size text font size, Default: 14
#' @param subtitle.size subtitle font size, Default: 12
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 10
#' @param legend.text.size legend text font size, Default: 9
#' @param title.color title color, Default: '#F9FEFF'
#' @param subtitle.color subtitle color, Default: '#F9FEFF'
#' @param text.color text color, Default: '#F9FEFF'
#' @param axis.title.color axis title color, Default: '#F9FEFF'
#' @param axis.text.color axis text color, Default: '#F9FEFF'
#' @param legend.title.color legend title color, Default: '#F9FEFF'
#' @param legend.text.color legend text color, Default: '#F9FEFF'
#' @param legend.position legend position, Default: 'bottom'
#' @param ticks add axis ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_hilda(palette = "Day") +
#'      theme_hildaDay(text.font = "Times", title.font = "Times",
#'                     legend.font = "Times")
#' @rdname theme_hildaDay
#' @export
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit

theme_hildaDay <- function(
  text.font = "Chelsea Market",
  title.font = "Chelsea Market",
  legend.font = "Chelsea Market",
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#659794",
  subtitle.color = "#659794",
  text.color = "#659794",
  axis.title.color = "#659794",
  axis.text.color = "#93a1a1",
  legend.title.color = "#659794",
  legend.text.color = "#93a1a1",
  legend.position = "bottom",
  ticks = FALSE){

  ## use theme_minimal as the base
  hildaDay <- ggplot2::theme_minimal() +
    ## main theme
    theme(text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
          plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#F6E0D2"),   # #A6AED2  #3A5E9A
          panel.background = element_rect(color = NA, fill = "#F5C98E"),  # #565D89  #373D65
          panel.grid = element_line(color = "#93a1a1"),
          # axis options
          axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
          axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
          # legend options
          legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
          legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "black", linetype = "solid", linewidth = 1.1),
          legend.background = element_rect(color = "black", fill = "#F5C98E", linetype = "solid")  ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    hildaDay <- hildaDay + theme(axis.ticks = element_blank(),
                           axis.ticks.x = element_blank(),
                           axis.ticks.y = element_blank())
  } else {
    hildaDay <- hildaDay + theme(axis.ticks = element_line(linewidth = 0.15, color = "#93a1a1"),
                           axis.ticks.x = element_line(linewidth = 0.15, color = "#93a1a1"),
                           axis.ticks.y = element_line(linewidth = 0.15, color = "#93a1a1"),
                           axis.ticks.length = grid::unit(4, "pt"))
  }

  hildaDay
}

## Hilda Dusk ----

#' @title Hilda "Dusk" theme
#' @description Hilda theme
#' @param text.font text font, Default: "Chelsea Market"
#' @param title.font title font, Default: "Chelsea Market"
#' @param legend.font legend font, Default: "Chelsea Market"
#' @param title.size title font size, Default: 18
#' @param text.size text font size, Default: 14
#' @param subtitle.size subtitle font size, Default: 12
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 10
#' @param legend.text.size legend text font size, Default: 9
#' @param title.color title color, Default: '#F9FEFF'
#' @param subtitle.color subtitle color, Default: '#F9FEFF'
#' @param text.color text color, Default: '#F9FEFF'
#' @param axis.title.color axis title color, Default: '#F9FEFF'
#' @param axis.text.color axis text color, Default: '#F9FEFF'
#' @param legend.title.color legend title color, Default: '#F9FEFF'
#' @param legend.text.color legend text color, Default: '#F9FEFF'
#' @param legend.position legend position, Default: 'bottom'
#' @param ticks add axis ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_hilda(palette = "Dusk") +
#'      theme_hildaDusk(text.font = "Times", title.font = "Times",
#'                      legend.font = "Times")
#' @rdname theme_hildaDusk
#' @export
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit

theme_hildaDusk <- function(
  text.font = "Chelsea Market",
  title.font = "Chelsea Market",
  legend.font = "Chelsea Market",
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = "#F9FEFF",
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF",
  legend.position = "bottom",
  ticks = FALSE){

  ## use theme_minimal as the base
  hildaDusk <- ggplot2::theme_minimal() +
    ## main theme
    theme(text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
          plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#B47880"),   # #A6AED2  #3A5E9A
          panel.background = element_rect(color = NA, fill = "#e5cce5"),  # #565D89  #373D65
          panel.grid = element_line(color = "white"),
          # axis options
          axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
          axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
          # legend options
          legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
          legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "black", linetype = "solid", linewidth = 1.1),
          legend.background = element_rect(color = "black", fill = "#B47880", linetype = "solid")  ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    hildaDusk <- hildaDusk + theme(axis.ticks = element_blank(),
                                     axis.ticks.x = element_blank(),
                                     axis.ticks.y = element_blank())
  } else {
    hildaDusk <- hildaDusk + theme(axis.ticks = element_line(linewidth = 0.15, color = "white"),
                                     axis.ticks.x = element_line(linewidth = 0.15, color = "white"),
                                     axis.ticks.y = element_line(linewidth = 0.15, color = "white"),
                                     axis.ticks.length = grid::unit(4, "pt"))
  }

  hildaDusk
}

## Hilda Night ----

#' @title Hilda "Night" theme
#' @description Hilda theme
#' @param text.font text font, Default: "Chelsea Market"
#' @param title.font title font, Default: "Chelsea Market"
#' @param legend.font legend font, Default: "Chelsea Market"
#' @param title.size title font size, Default: 18
#' @param text.size text font size, Default: 14
#' @param subtitle.size subtitle font size, Default: 12
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 10
#' @param legend.text.size legend text font size, Default: 9
#' @param title.color title color, Default: '#F9FEFF'
#' @param subtitle.color subtitle color, Default: '#F9FEFF'
#' @param text.color text color, Default: '#F9FEFF'
#' @param axis.title.color axis title color, Default: '#F9FEFF'
#' @param axis.text.color axis text color, Default: '#F9FEFF'
#' @param legend.title.color legend title color, Default: '#F9FEFF'
#' @param legend.text.color legend text color, Default: '#F9FEFF'
#' @param legend.position legend position, Default: 'bottom'
#' @param ticks add axis ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_hilda(palette = "Night") +
#'      theme_hildaNight(text.font = "Times", title.font = "Times",
#'                       legend.font = "Times")
#' @rdname theme_hildaNight
#' @export
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit

theme_hildaNight <- function(
  text.font = "Chelsea Market",
  title.font = "Chelsea Market",
  legend.font = "Chelsea Market",
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = "#F9FEFF",
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF",
  legend.position = "bottom",
  ticks = FALSE){

  ## use theme_minimal as the base
  hildaNight <- ggplot2::theme_minimal() +
    ## main theme
    theme(text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
          plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#373D65"),   # #A6AED2  #3A5E9A
          panel.background = element_rect(color = NA, fill = "#3A5E9A"),  # #565D89  #373D65
          # axis options
          axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
          axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
          # legend options
          legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
          legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "black", linetype = "solid", linewidth = 1.1),
          legend.background = element_rect(color = "black", fill = "#64719E", linetype = "solid")  ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    hildaNight <- hildaNight + theme(axis.ticks = element_blank(),
                  axis.ticks.x = element_blank(),
                  axis.ticks.y = element_blank())
  } else {
    hildaNight <- hildaNight + theme(axis.ticks = element_line(linewidth = 0.15, color = "white"),
                  axis.ticks.x = element_line(linewidth = 0.15, color = "white"),
                  axis.ticks.y = element_line(linewidth = 0.15, color = "white"),
                  axis.ticks.length = grid::unit(4, "pt"))
  }

  hildaNight
}
