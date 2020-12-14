context("test-hilda")

expect_eqNe <- function(...) expect_equal(..., check.environment = FALSE)

# Hilda Day ----
test_that("theme_hildaDay works", {
  thm <- theme_hildaDay()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Chelsea Market")
  expect_equal(thm$plot.title$family, "Chelsea Market")
  expect_equal(thm$legend.title$family, "Chelsea Market")
  expect_equal(thm$legend.text$family, "Chelsea Market")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#659794")
  expect_equal(thm$plot.title$colour, "#659794")
  expect_equal(thm$plot.subtitle$colour, "#659794")
  expect_equal(thm$axis.text$colour, "#93a1a1")
  expect_equal(thm$axis.title$colour, "#659794")
  expect_equal(thm$legend.text$colour, "#93a1a1")
  expect_equal(thm$legend.title$colour, "#659794")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_hildaDay(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Chelsea Market")
  expect_equal(thm$plot.title$family, "Chelsea Market")
  expect_equal(thm$legend.title$family, "Chelsea Market")
  expect_equal(thm$legend.text$family, "Chelsea Market")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$size, 0.15)
  ## color
  expect_equal(thm$text$colour, "#659794")
  expect_equal(thm$plot.title$colour, "#659794")
  expect_equal(thm$plot.subtitle$colour, "#659794")
  expect_equal(thm$axis.text$colour, "#93a1a1")
  expect_equal(thm$axis.title$colour, "#659794")
  expect_equal(thm$legend.text$colour, "#93a1a1")
  expect_equal(thm$legend.title$colour, "#659794")
  expect_equal(thm$legend.position, "bottom")
})

## Hilda Day
test_that("hilda_pal raises warning with large number, x > 8", {
  expect_warning(hilda_pal("Day")(9))
  expect_warning(hilda_pal(reverse = TRUE)(9))
  expect_error(hilda_pal(n = 9))
})

test_that("scale_colour_hilda equals scale_color_hilda", {
  expect_eqNe(scale_color_hilda(palette = "Day"), scale_colour_hilda(palette = "Day"))
})

test_that("scale_colour_hilda works", {
  expect_is(scale_color_hilda(palette = "Day"), "ScaleDiscrete")
})

test_that("scale_fill_hilda works", {
  expect_is(scale_fill_hilda(palette = "Day"), "ScaleDiscrete")
})

# Hilda Dusk ----
test_that("theme_hildaDusk works", {
  thm <- theme_hildaDusk()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Chelsea Market")
  expect_equal(thm$plot.title$family, "Chelsea Market")
  expect_equal(thm$legend.title$family, "Chelsea Market")
  expect_equal(thm$legend.text$family, "Chelsea Market")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_hildaDusk(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Chelsea Market")
  expect_equal(thm$plot.title$family, "Chelsea Market")
  expect_equal(thm$legend.title$family, "Chelsea Market")
  expect_equal(thm$legend.text$family, "Chelsea Market")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$size, 0.15)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")
})

## Hilda Dusk
test_that("hilda_pal raises warning with large number, x > 8", {
  expect_warning(hilda_pal("Dusk")(9))
})

test_that("scale_colour_hilda equals scale_color_hilda", {
  expect_eqNe(scale_color_hilda(palette = "Dusk"), scale_colour_hilda(palette = "Dusk"))
})

test_that("scale_colour_hilda works", {
  expect_is(scale_color_hilda(palette = "Dusk"), "ScaleDiscrete")
})

test_that("scale_fill_hilda works", {
  expect_is(scale_fill_hilda(palette = "Dusk"), "ScaleDiscrete")
})

# Hilda Night ----
test_that("theme_hildaNight works", {
  thm <- theme_hildaNight()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Chelsea Market")
  expect_equal(thm$plot.title$family, "Chelsea Market")
  expect_equal(thm$legend.title$family, "Chelsea Market")
  expect_equal(thm$legend.text$family, "Chelsea Market")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")

  ## ticks == TRUE
  thm <- theme_hildaNight(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Chelsea Market")
  expect_equal(thm$plot.title$family, "Chelsea Market")
  expect_equal(thm$legend.title$family, "Chelsea Market")
  expect_equal(thm$legend.text$family, "Chelsea Market")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## ticks
  expect_equal(thm$axis.ticks$size, 0.15)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")
})

## Hilda Night
test_that("hilda_pal raises warning with large number, x > 8", {
  expect_warning(hilda_pal("Night")(9))
})

test_that("scale_colour_hilda equals scale_color_hilda", {
  expect_eqNe(scale_color_hilda(palette = "Night"), scale_colour_hilda(palette = "Night"))
})

test_that("scale_colour_hilda works", {
  expect_is(scale_color_hilda(palette = "Night"), "ScaleDiscrete")
})

test_that("scale_fill_hilda works", {
  expect_is(scale_fill_hilda(palette = "Night"), "ScaleDiscrete")
})

## Colors correct ----
test_that("Hilda palettes outputs correct colors", {
  expect_equal(hilda_pal(palette = "Day")(8),
               c(    "#F6E0D2",  ## hlida white paper
                     "#DFA398",  ##
                     "#9C6755",  ##
                     "#659794",  ## hilda turqoise
                     "#EA967C",  ## hilda lightorange
                     "#F5C98E",  ## hilda beige
                     "#D65B5A",  ##
                     "#586085"   ##
               ))
  expect_equal(hilda_pal(palette = "Dusk")(8),
               c(    "#EFCBCB",  ##
                     "#B47880",  ##
                     "#824B51",  ##
                     "#635761",  ##
                     "#AD616C",  ##
                     "#D1A391",  ##
                     "#7D3450",  ##
                     "#2B2D42"   ##
               ))
  expect_equal(hilda_pal(palette = "Night")(8),
               c(    "#E8E1E9",  ##
                     "#C0A5AA",  ##
                     "#4D3944",  ##
                     "#7083A4",  ##
                     "#B3A2B4",  ##
                     "#C9CCEA",  ##
                     "#3B3960",  ##
                     "#1E2142"   ##
               ))
})
