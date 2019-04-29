## Game of Thrones ----





## House targaryen ----

stark_palette <- c(
  "#cadde1", ## light-skyblue
  "#7B906F", ## grey-green
  "#120976", ## purple blue
  "#898989", ## dark-grey
  "#174D79", ## light teal blue
  "#D4CDB1", ## light-grey
  "#fffafa", ## snow white
  "#000000"  ## black
)

stark_pal <- function() {
  scales::manual_pal(stark_palette)
}

scale_color_stark <- function(...){
  ggplot2::discrete_scale("color", "stark", stark_pal(), ...)
}

scale_fill_stark <- function(...){
  ggplot2::discrete_scale("fill", "stark", stark_pal(), ...)
}


## House Lannister ----

lannister_palette <- c(
  "#89080A", ## maroon
  "#C5AA73", ## grey
  "#FEDF25", ## gold
  "#C24841", ## orange
  "#8B5B45", ## brown
  "#000000"  ## black
)

lannister_pal <- function() {
  scales::manual_pal(lannister_palette)
}

scale_color_lannister <- function(...){
  ggplot2::discrete_scale("color", "lannister", lannister_pal(), ...)
}

scale_fill_lannister <- function(...){
  ggplot2::discrete_scale("fill", "lannister", lannister_pal(), ...)
}

## House Tyrell ----

tyrell_palette <- c(
  "#068105", ## darkgreen
  "#F7DC27", ## yellow
  "#AB681B", ## brown
  "#F9FE76", ## lightgrass-green
  "#8DA080", ## grey-green
  "#717497"  ## blue-grey
)

tyrell_pal <- function() {
  scales::manual_pal(tyrell_palette)
}

scale_color_tyrell <- function(...){
  ggplot2::discrete_scale("color", "tyrell", tyrell_pal(), ...)
}

scale_fill_tyrell <- function(...){
  ggplot2::discrete_scale("fill", "tyrell", tyrell_pal(), ...)
}

## House Baratheon ----

## House Targaryen ----

targaryen_palette <- c(
  "#AC1F25", ## blood-red
  "#272727", ## lightblack
  "#ff9933", ## saffron
  "#96804b"  ## light-brown
)

targaryen_pal <- function() {
  scales::manual_pal(targaryen_palette)
}

scale_color_targaryen <- function(...){
  ggplot2::discrete_scale("color", "targaryen", targaryen_pal(), ...)
}

scale_fill_targaryen <- function(...){
  ggplot2::discrete_scale("fill", "targaryen", targaryen_pal(), ...)
}


## House Tully ----

tully_palette <- c(
  "#212250", ## darkblue
  "#AE432F", ## darkorange
  "#E4EDCA", ## green-white
  "#8B5B45", ## brown
  "#000000"  ## black
)

tully_pal <- function() {
  scales::manual_pal(tully_palette)
}

scale_color_tully <- function(...){
  ggplot2::discrete_scale("color", "tully", tully_pal(), ...)
}

scale_fill_tully <- function(...){
  ggplot2::discrete_scale("fill", "tully", tully_pal(), ...)
}


## House Greyjoy ----

## House Martell ----
