#' @title Brooklyn Nine-Nine theme
#' @description Brooklyn Nine-Nine theme, Recommended font: "Roboto Condensed" (title), "Calibri Light" (other text)
#' @details Actual font: Variants of 'Univers'
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
#' @param title.color title color, Default: "F9FEFF"
#' @param subtitle.color subtitle.color, Default: "F9FEFF"
#' @param text.color text color, Default: "F9FEFF"
#' @param axis.title.color axis title color, Default: "F9FEFF"
#' @param axis.text.color axis text color, Default: "F9FEFF"
#' @param legend.title.color legend title color, Default: "F9FEFF"
#' @param legend.text.color legend text color, Default: "F9FEFF"
#' @param legend.position legend position, Default: "bottom"
#' @param ticks add axis ticks, Default: FALSE
#' @examples
#' library(ggplot2)
#'
#' ggplot(airquality, aes(x = Day, y = Temp,
#'      group = as.factor(Month), color = as.factor(Month))) +
#'      geom_point(size = 2.5) +
#'      scale_color_brooklyn99() +
#'      theme_brooklyn99()
#' @rdname theme_brooklyn99
#' @seealso [ggplot2::theme]
#' @importFrom ggplot2 theme element_text element_rect element_blank element_line
#' theme_minimal
#' @importFrom grid unit
#' @export

theme_brooklyn99 <- function(
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
  pontiacBandit <- ggplot2::theme_minimal() +
    ## main b99 theme
    theme(text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
          plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#0053CD"),
          panel.background = element_rect(color = NA, fill = "#0053CD"),
          # axis options
          axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
          axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
          # legend options
          legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
          legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "black", linetype = "solid", size = 1.1),
          legend.background = element_rect(color = "black", fill = "#0053CD", linetype = "solid")
    )

  if (ticks == FALSE) {
    pontiacBandit <- pontiacBandit + theme(axis.ticks = element_blank(),
                                 axis.ticks.x = element_blank(),
                                 axis.ticks.y = element_blank())
  } else {
    pontiacBandit <- pontiacBandit + theme(axis.ticks = element_line(linewidth = 0.15, color = "white"),
                                 axis.ticks.x = element_line(linewidth = 0.15, color = "white"),
                                 axis.ticks.y = element_line(linewidth = 0.15, color = "white"),
                                 axis.ticks.length = grid::unit(4, "pt"))
  }
}

#' @title brooklyn99_logo
#' @description Brooklyn Nine-Nine logo
#' @return ggplot2 object of logo
#' @rdname brooklyn99_logo
# export--

# brooklyn99_logo <- function(){
#   rect <- data.frame(id = as.factor(c(1, 1, 1, 1,
#                                       2, 2, 2, 2)),
#                      x = c(16, 16, 0,    0,
#                            16, 16, 6.6,  6.5),
#                      y = c(5.1, 2, 0.4,  3.5,
#                            2.5, 0.8, 0,  1.6))
#
#   header <- ggplot(data = rect, aes(x, y, group = id, fill = id)) +
#     geom_polygon() +
#     scale_fill_manual(values = c("#0053CD", "#000E33"), guide = FALSE) +
#     annotate(geom = "text", y = 2, x = 1.8, hjust = 0,
#              family = "Univers LT 93 ExtraBlackEx",
#              color = "#fcf7e8", size = 40, angle = 5,
#              label = glue("
#                         BROOKLYN")) +
#     annotate(geom = "text", y = 0.9, x = 7.2, hjust = 0,
#              family = "Univers",
#              color = "#fcf7e8", size = 28, angle = 3.5,
#              label = glue("
#                         NINE-NINE")) +
#     scale_x_continuous(expand = c(0, 0), limits = c(0, 16)) +
#     scale_y_continuous(expand = c(0, 0), limits = c(0, 5.5)) +
#     theme_void() +
#     theme(plot.background = element_rect(color = "#F9FEFF",
#                                          fill = "#F9FEFF",
#                                          size = 8))
#
#   return(header)
# }
