#' @title theme_simpsons
#' @description The Simpsons theme
#' @param font.text font for text, Default: 'Akbar'
#' @param font.title font for title, Default: 'Akbar'
#' @param font.legend font for legend, Default: 'Akbar'
#' @param title.size title font size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details Largely inspired by `@nathancunn`'s blog posts
#' @rdname theme_simpsons
#' @export

theme_simpsons <- function(font.text = "Akbar",
                           font.title = "Akbar",
                           font.legend = "Akbar",
                           title.size = 18,
                           text.size = 14,
                           subtitle.size = 12,
                           axis.title.size = 14,
                           axis.text.size = 10,
                           legend.title.size = 10,
                           legend.text.size = 9) {

  theme(text = element_text(family = font.text, color = "#fee8c8", size = text.size),
        plot.title = element_text(family = font.title, size = title.size, color = "#FFD235"),
        plot.subtitle = element_text(size = subtitle.size),
        # axis options
        axis.text = element_text(size = axis.text.size, color = "#fee8c8"),
        axis.title = element_text(color = "#fee8c8", size = axis.title.size),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#7199E1"),
        panel.background = element_rect(color = NA, fill = "#7199E1"),
        panel.grid.major = element_line(color = "#fee8c8"),
        panel.grid.minor = element_line(color = "#fee8c8"),
        # legend options
        legend.title = element_text(family = font.legend, color = "#ffffff", size = legend.title.size),
        legend.text = element_text(color = "#ffffff", size = legend.text.size),
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#7199E1",
                                         linetype = "solid")
        )
}
