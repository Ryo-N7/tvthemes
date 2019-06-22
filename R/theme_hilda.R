theme_hilda <- function(
  text.font = NULL,
  title.font = NULL,
  legend.font = NULL,
  title.size = 18,
  text.size = 14,
  subtitle.size = 12,
  axis.title.size = 14,
  axis.text.size = 12,
  legend.title.size = 10,
  legend.text.size = 9,
  title.color = "#F9FEFF",
  subtitle.color = "#F9FEFF",
  text.color = "#F9FEFF",
  axis.title.color = "#F9FEFF",
  axis.text.color = "#F9FEFF",
  legend.title.color = "#F9FEFF",
  legend.text.color = "#F9FEFF",
  legend.position = "bottom"){

  ## use theme_minimal as the base
  ggplot2::theme_minimal() +
    ## main b99 theme
    theme(text = ggplot2::element_text(family = text.font, size = text.size, color = text.color),
          plot.title = element_text(family = title.font, face = "bold", size = title.size, color = title.color),
          plot.subtitle = element_text(family = title.font, size = subtitle.size, color = subtitle.color),
          # background/panel options
          plot.background = element_rect(color = NA, fill = "#3A5E9A"),   # #A6AED2  #3A5E9A
          panel.background = element_rect(color = NA, fill = "#373D65"),  # #565D89  #373D65
          # axis options
          axis.text = element_text(family = text.font, size = axis.text.size, color = axis.text.color),
          axis.title = element_text(family = title.font, size = axis.title.size, color = axis.title.color),
          axis.ticks = element_blank(),
          # legend options
          legend.text = element_text(family = legend.font, size = legend.text.size, color = legend.text.color),
          legend.title = element_text(family = legend.font, size = legend.title.size, color = legend.title.color),
          legend.position = legend.position,
          legend.key = element_rect(colour = "black", linetype = "solid", size = 1.1),
          legend.background = element_rect(color = "black", fill = "#64719E", linetype = "solid")  ## #64719E  #8a2be2
    )
}
