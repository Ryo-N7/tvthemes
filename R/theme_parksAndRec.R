#' @title theme_parksAndRec
#' @description Parks & Recreation theme
#' @param font.text text font
#' @param font.title title font
#' @param font.legend legend font
#' @param title.size title font size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_parksAndRec
#' @export

theme_parksAndRec <- function(font.text = "Champion HTF-Heavyweight",
                              font.title = "Champion HTF-Heavyweight",
                              font.legend = "Champion HTF-Heavyweight",
                              title.size = 18,
                              text.size = 14,
                              subtitle.size = 12,
                              axis.title.size = 14,
                              axis.text.size = 8,
                              legend.title.size = 10,
                              legend.text.size = 9) {

  theme(text = element_text(family = font.text, size = text.size),
        title = element_text(family = font.title, size = title.size, color = "black"),
        plot.subtitle = element_text(size = subtitle.size),
        # axis options
        axis.text = element_text(size = axis.text.size, color = "black"),
        axis.title = element_text(size = axis.title.size, color = "black"),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#238443"),  #238443
        panel.background = element_rect(color = NA, fill = "#CCFFBB"), # #1A5E1FFF darkgreen
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend, size = legend.title.size),
        legend.text = element_text(size = legend.text.size, color = "black"),
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "black", fill = "#CCFFBB",
                                         linetype = "solid")
  )
}


#' @title theme_parksAndRec_light
#' @description Parks & Recreation light theme
#' @param font.text PARAM_DESCRIPTION, Default: 'Champion HTF-Heavyweight'
#' @param font.title PARAM_DESCRIPTION, Default: 'Champion HTF-Heavyweight'
#' @param font.legend PARAM_DESCRIPTION, Default: 'Champion HTF-Heavyweight'
#' @param title.size title font size
#' @param text.size text font size
#' @param subtitle.size subtitle font size
#' @param axis.title.size axis title font size
#' @param axis.text.size axis text font size
#' @param legend.title.size legend title font size
#' @param legend.text.size legend text font size
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @examples
#' \dontrun{
#' if(interactive()){
#'  #EXAMPLE1
#'  }
#' }
#' @rdname theme_parksAndRec_light
#' @export

theme_parksAndRec_light <- function(font.text = "Champion HTF-Heavyweight",
                                    font.title = "Champion HTF-Heavyweight",
                                    font.legend = "Champion HTF-Heavyweight",
                                    title.size = 18,
                                    text.size = 14,
                                    subtitle.size = 12,
                                    axis.title.size = 14,
                                    axis.text.size = 8,
                                    legend.title.size = 10,
                                    legend.text.size = 9) {

  theme(text = element_text(family = font.text, size = text.size),
        title = element_text(family = font.title, size = title.size, color = "grey20"),
        plot.subtitle = element_text(size = subtitle.size),
        # axis options
        axis.text = element_text(size = axis.text.size, color = "grey20"),
        axis.title = element_text(color = "grey20", size = axis.title.size),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),#238443
        panel.background = element_rect(color = NA, fill = "#238443"), # #1A5E1FFF darkgreen
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend, size = legend.title.size),
        legend.text = element_text(size = legend.text.size, color = "grey20"),
        legend.key = element_rect(colour = "grey20", linetype = "solid", size = 1.25),
        legend.background = element_rect(color = "grey20", fill = "#CCFFBB",
                                         linetype = "solid")
  )
}
