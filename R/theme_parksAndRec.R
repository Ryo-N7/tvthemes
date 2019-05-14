## Titillium Web BLACK
## Champion HTF-Heavyweight

#' @title theme_parksAndRec
#' @description Parks & Recreation theme, Recommended font: "Titillium Web"
#' @details Actual font: 'Champion HTF-Heavyweight'
#' @param text.font text font, Default: NULL
#' @param title.font title font, Default: NULL
#' @param legend.font legend font, Default: NULL
#' @param title.size title font size, Default: 20
#' @param text.size text font size, Default: 16
#' @param subtitle.size subtitle font size, Default: 14
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 14
#' @param legend.text.size legend text font size, Default: 12
#' @param title.color title color, Default: NULL
#' @param subtitle.color subtitle.color, Default: NULL
#' @param text.color text color, Default: NULL
#' @param axis.title.color axis title color, Default: NULL
#' @param axis.text.color axis text color, Default: NULL
#' @param legend.title.color legend title color, Default: NULL
#' @param legend.text.color legend text color, Default: NULL
#' @param legend.position legend position, Default: "bottom"
#' @examples
#' \dontrun{
#' if(interactive()){
#'  ggplot(mtcars, aes(x = hp, y = mpg)) +
#'  geom_point() +
#'  theme_parksAndRec()
#'  }
#' }
#' @rdname theme_parksAndRec
#' @seealso [ggplot2::theme]
#' @importFrom ggplot2 element_text element_rect element_blank element_line
#' @export

theme_parksAndRec <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 20,
  text.size = 16,
  subtitle.size = 14,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 14,
  legend.text.size = 12,
  title.color = NULL,
  subtitle.color = NULL,
  text.color = NULL,
  axis.title.color = "black",
  axis.text.color = "black",
  legend.title.color = NULL,
  legend.text.color = NULL,
  legend.position = "bottom"){

  ggplot2::theme_minimal() +
  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#238443"),
        panel.background = element_rect(color = NA, fill = "#CCFFBB"),
        panel.grid.major = element_line(color = "grey20"),
        panel.grid.minor = element_line(color = "grey20"),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.position = legend.position,
        legend.key = element_rect(colour = "black", linetype = "solid", size = 1.15),
        legend.background = element_rect(color = "black", fill = "#CCFFBB", linetype = "solid")
        )
}


#' @title theme_parksAndRec_light
#' @description Parks & Recreation light theme, Recommended font: "Titillium Web"
#' @details Actual font: 'Champion HTF-Heavyweight'
#' @param text.font text font, Default: NULL
#' @param title.font title font, Default: NULL
#' @param legend.font legend font, Default: NULL
#' @param title.size title font size, Default: 20
#' @param text.size text font size, Default: 16
#' @param subtitle.size subtitle font size, Default: 14
#' @param axis.title.size axis title font size, Default: 14
#' @param axis.text.size axis text font size, Default: 12
#' @param legend.title.size legend title font size, Default: 14
#' @param legend.text.size legend text font size, Default: 12
#' @param title.color title color, Default: "grey20"
#' @param subtitle.color subtitle.color, Default: "grey20"
#' @param text.color text color, Default: "grey20"
#' @param axis.title.color axis title color, Default: "grey20"
#' @param axis.text.color axis text color, Default: "grey20"
#' @param legend.title.color legend title color, Default: "grey20"
#' @param legend.text.color legend text color, Default: "grey20"
#' @param legend.position legend position, Default: "bottom"
#' @examples
#' \dontrun{
#' if(interactive()){
#'  ggplot(mtcars, aes(x = hp, y = mpg)) +
#'  geom_point() +
#'  theme_parksAndRec_light()
#'  }
#' }
#' @rdname theme_parksAndRec_light
#' @seealso [ggplot2::theme]
#' @importFrom ggplot2 element_text element_rect element_blank element_line
#' @export

theme_parksAndRec_light <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 20,
  text.size = 16,
  subtitle.size = 14,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 14,
  legend.text.size = 12,
  title.color = "grey20",
  subtitle.color = "grey20",
  text.color = "grey20",
  axis.title.color = "grey20",
  axis.text.color = "grey20",
  legend.title.color = "grey20",
  legend.text.color = "grey20",
  legend.position = "bottom") {

  ggplot2::theme_minimal() +
  theme(text = element_text(family = text.font, size = text.size, color = text.color),
        title = element_text(family = title.font, size = title.size, color = title.color),
        plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
        # axis options
        axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
        axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
        axis.ticks = element_blank(),
        # background/panel options
        plot.background = element_rect(color = NA, fill = "#CCFFBB"),
        panel.background = element_rect(color = NA, fill = "#238443"),
        panel.grid.major = element_line(color = NULL, size = 1.05),
        panel.grid.minor = element_line(color = NULL, size = 1.05),
        # legend options
        legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
        legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
        legend.position = legend.position,
        legend.key = element_rect(colour = "grey20", linetype = "solid", size = 1.15),
        legend.background = element_rect(color = "grey20", fill = "#CCFFBB", linetype = "solid")
        )
}
