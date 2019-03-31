#' @title theme_brooklyn99
#' @description Brooklyn Nine-Nine theme
#' @return OUTPUT_DESCRIPTION
#' @details DETAILS
#' @param font.text main font text, Default: Univers
#' @param font.title title font, Default: Univers LT 93 ExtraBlackEx
#' @param font.legend legend font, Default: Univers
#' @examples
#' \dontrun{
#' if(interactive()){
#'  ggplot(mtcars, aes(x = hp, y = mpg)) +
#'  geom_point() +
#'  theme_brooklyn99()
#'  }
#' }
#' @rdname theme_brooklyn99
#' @seealso [ggplot2::theme]
#' @export
#' @import ggplot2

theme_brooklyn99 <- function(
  font.text = "Univers",
  font.title = "Univers LT 93 ExtraBlackEx",
  font.legend = "Univers"
){
  ## use theme_minimal as the base
  theme_minimal() +
    ## main b99 theme
    theme(text = element_text(family = "Univers", color = "#F9FEFF",
                              size = 14),
          plot.title = element_text(family = "Univers LT 93 ExtraBlackEx",
                                    size = 20, color = "#F9FEFF"),
          plot.background = element_rect(color = NA, fill = "#0053CD"),
          panel.background = element_rect(color = NA, fill = "#0053CD"),
          # axis options
          axis.text = element_text(family = "Univers", color = "#F9FEFF", size = 12),
          axis.title = element_text(size = 14),
          # legend options
          legend.title = element_text(family = "Univers", color = "#F9FEFF"),
          legend.text = element_text(family = "Univers", color = "#F9FEFF", size = 9),
          legend.position = "bottom",
          legend.key = element_rect(colour = "black", linetype = "solid", size = 1.5),
          legend.background = element_rect(color = "black", fill = "#0053CD",
                                           linetype = "solid"))
}
