#' @title theme_simpsons
#' @description The Simpsons theme, Recommended font: "Akbar"
#' @param text.font text font
#' @param title.font title font
#' @param legend.font legend font
#' @param title.size title font size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details Largely inspired by `@nathancunn`'s blog posts on The Simpsons
#' @rdname theme_simpsons
#' @export

theme_simpsons <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 10,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#FFD235",
  subtitle.color = "#fee8c8",
  text.color = "#fee8c8",
  axis.title.color = "#fee8c8",
  axis.text.color = "#fee8c8",
  legend.title.color = "#ffffff",
  legend.text.color = "#ffffff") {

  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        plot.title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#7199E1"),
        panel.background = element_rect(color = NA, fill = "#7199E1"),
        panel.grid.major = element_line(color = "#fee8c8"),
        panel.grid.minor = element_line(color = "#fee8c8"),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#7199E1",
                                         linetype = "solid")
        )
}
