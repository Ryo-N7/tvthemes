#' @title theme_simpsons
#' @description The Simpsons theme
#' @param font.text PARAM_DESCRIPTION, Default: 'Akbar'
#' @param font.title PARAM_DESCRIPTION, Default: 'Akbar'
#' @param font.legend PARAM_DESCRIPTION, Default: 'Akbar'
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_simpsons
#' @export

theme_simpsons <- function(font.text = "Akbar",
                              font.title = "Akbar",
                              font.legend = "Akbar"){

  theme(text = element_text(family = font.text, color = "#fee8c8"),
        axis.text = element_text(size = 8, color = "#fee8c8"),
        axis.title = element_text(color = "#fee8c8"),
        plot.title = element_text(family = font.title, color = "#FFD235"),
        plot.background = element_rect(color = NA, fill = "#7199E1"),
        panel.background = element_rect(color = NA, fill = "#7199E1"),
        panel.grid.major = element_line(color = "#fee8c8"),
        panel.grid.minor = element_line(color = "#fee8c8"),
        legend.title = element_text(family = font.legend, color = "#ffffff"),
        legend.text = element_text(color = "#ffffff", size = 9),
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#7199E1",
                                         linetype = "solid")
        )

}
