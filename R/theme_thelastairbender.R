#' @title theme_theLastAirbender
#' @description Avatar: The Last Airbender theme
#' @param font.text PARAM_DESCRIPTION, Default: 'Slayer'
#' @param font.title PARAM_DESCRIPTION, Default: 'Slayer'
#' @param font.legend PARAM_DESCRIPTION, Default: 'Slayer'
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_theLastAirbender
#' @export

theme_theLastAirbender <- function(font.text = "Slayer",
                              font.title = "Slayer",
                              font.legend = "Slayer"){

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title),
        plot.subtitle = element_text(color = "grey20"),
        axis.text = element_text(size = 8, color = "grey20"),
        axis.title = element_text(color = "grey20"),
        plot.background = element_rect(fill = "#ece5d3"),
        panel.background = element_rect(fill = "#ece5d3"),
        # legend options
        legend.title = element_text(family = font.legend, color = "grey20"),
        legend.text = element_text(family = font.legend, color = "grey20", size = 9),
        legend.position = "bottom",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#ece5d3",
                                         linetype = "solid")
        )

}
