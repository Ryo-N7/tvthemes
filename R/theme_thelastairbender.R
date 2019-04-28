#' @title theme_theLastAirbender
#' @description Avatar: The Last Airbender theme
#' @param font.text PARAM_DESCRIPTION, Default: 'Slayer'
#' @param font.title PARAM_DESCRIPTION, Default: 'Slayer'
#' @param font.legend PARAM_DESCRIPTION, Default: 'Slayer'
#' @param title.size title font size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_theLastAirbender
#' @export

theme_theLastAirbender <- function(font.text = "Slayer",
                                   font.title = "Slayer",
                                   font.legend = "Slayer",
                                   title.size = 14,
                                   text.size = 10,
                                   subtitle.size = 12,
                                   axis.title.size = 10,
                                   axis.text.size = 8,
                                   legend.title.size = 10,
                                   legend.text.size = 8){

  theme(text = element_text(family = font.text, size = text.size),
        title = element_text(family = font.title, size = title.size),
        plot.subtitle = element_text(family = font.title, color = "grey20", size = subtitle.size),
        # axis options
        axis.text = element_text(family = font.text, size = axis.text.size, color = "grey20"),
        axis.title = element_text(family = font.title, color = "grey20", size = axis.title.size),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(fill = "#ece5d3"),
        panel.background = element_rect(fill = "#ece5d3"),
        # legend options
        legend.title = element_text(family = font.legend, color = "grey20", size = legend.title.size),
        legend.text = element_text(family = font.legend, color = "grey20", size = legend.text.size),
        legend.position = "bottom",
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#ece5d3",
                                         linetype = "solid")
        )

}
