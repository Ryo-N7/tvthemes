#' @title theme_simpsons
#' @description The Simpsons theme
#' @param font.text font for text, Default: 'Akbar'
#' @param font.title font for title, Default: 'Akbar'
#' @param font.legend font for legend, Default: 'Akbar'
#' @return OUTPUT_DESCRIPTION
#' @details Largely inspired by `@nathancunn`'s blog posts
#' @rdname theme_simpsons
#' @export

theme_simpsons <- function(font.text = "Akbar",
                           font.title = "Akbar",
                           font.legend = "Akbar",
                           title.size = 11) {

  theme(text = element_text(family = font.text, color = "#fee8c8"),
        plot.title = element_text(family = font.title, size = title.size, color = "#FFD235"),
        # axis options
        axis.text = element_text(size = 8, color = "#fee8c8"),
        axis.title = element_text(color = "#fee8c8"),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#7199E1"),
        panel.background = element_rect(color = NA, fill = "#7199E1"),
        panel.grid.major = element_line(color = "#fee8c8"),
        panel.grid.minor = element_line(color = "#fee8c8"),
        # legend options
        legend.title = element_text(family = font.legend, color = "#ffffff"),
        legend.text = element_text(color = "#ffffff", size = 9),
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#7199E1",
                                         linetype = "solid")
        )

}
