#' @title theme_parksAndRec
#' @description Parks & Recreation theme
#' @param font.text text font
#' @param font.title title font
#' @param font.legend legend font
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @rdname theme_parksAndRec
#' @export

theme_parksAndRec <- function(font.text = "Champion HTF-Heavyweight",
                              font.title = "Champion HTF-Heavyweight",
                              font.legend = "Champion HTF-Heavyweight",
                              title.size = 11) {

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title, size = title.size),
        # axis options
        axis.text = element_text(size = 8, color = "grey20"),
        axis.title = element_text(color = "grey20"),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),#238443
        panel.background = element_rect(color = NA, fill = "#238443"), # #1A5E1FFF darkgreen
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend)
        )

}


#' @title theme_parksAndRec_light
#' @description Parks & Recreation light theme
#' @param font.text PARAM_DESCRIPTION, Default: 'Champion HTF-Heavyweight'
#' @param font.title PARAM_DESCRIPTION, Default: 'Champion HTF-Heavyweight'
#' @param font.legend PARAM_DESCRIPTION, Default: 'Champion HTF-Heavyweight'
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
                                    title.size = 11) {

  theme(text = element_text(family = font.text),
        title = element_text(family = font.title, size = title.size),
        # axis options
        axis.text = element_text(size = 8, color = "grey20"),
        axis.title = element_text(color = "grey20"),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#238443"),  #238443
        panel.background = element_rect(color = NA, fill = "#CCFFBB"), # #1A5E1FFF darkgreen
        panel.grid.major.x = element_blank(),
        # legend options
        legend.title = element_text(family = font.legend)
        )

}
