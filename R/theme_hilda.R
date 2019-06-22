#' @title theme_hilda
#' @description Hilda theme
#' @param text.font text font, Default: NULL
#' @param title.font title font, Default: NULL
#' @param legend.font legend font, Default: NULL
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
#' \dontrun{
#' if(interactive()){
#'  ggplot(mtcars, aes(x = hp, y = mpg)) +
#'  geom_point() +
#'  theme_hilda()
#'  }
#' }
#' @rdname theme_hilda
#' @export
#' @importFrom ggplot2 theme_minimal element_text
#' @importFrom grid unit

theme_hilda <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
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
  hilda <- ggplot2::theme_minimal() +
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
          legend.key = element_rect(colour = "black", linetype = "solid", size = 1.1),
          legend.background = element_rect(color = "black", fill = "#64719E", linetype = "solid")  ## #64719E  #8a2be2
    )

  if (ticks == FALSE) {
    hilda <- hilda + theme(axis.ticks = element_blank(),
                  axis.ticks.x = element_blank(),
                  axis.ticks.y = element_blank())
  } else {
    hilda <- hilda + theme(axis.ticks = element_line(size = 0.15, color = "white"),
                  axis.ticks.x = element_line(size = 0.15, color = "white"),
                  axis.ticks.y = element_line(size = 0.15, color = "white"),
                  axis.ticks.length = grid::unit(4, "pt"))
  }

  hilda
}
