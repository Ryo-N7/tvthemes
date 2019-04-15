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
                                   font.legend = "Slayer",
                                   title.size = 14){

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title, size = title.size),
        plot.subtitle = element_text(color = "grey20", size = 12),
        # axis options
        axis.text = element_text(size = 8, color = "grey20"),
        axis.title = element_text(color = "grey20", size = 10),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(fill = "#ece5d3"),
        panel.background = element_rect(fill = "#ece5d3"),
        # legend options
        legend.title = element_text(family = font.legend, color = "grey20", size = 10),
        legend.text = element_text(family = font.legend, color = "grey20", size = 8),
        legend.position = "bottom",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#ece5d3",
                                         linetype = "solid")
        )

}
