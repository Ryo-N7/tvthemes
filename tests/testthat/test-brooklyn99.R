context("test-brooklyn99")

expect_eqNe <- function(...) expect_equal(..., check.environment=FALSE)

test_that("theme_brooklyn99 works", {
  thm <- theme_brooklyn99()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
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
  thm <- theme_brooklyn99(ticks = TRUE)
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
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

test_that("brooklyn99_pal raises warning with large number, x > 10", {
  expect_warning(brooklyn99_pal()(11))
  expect_warning(brooklyn99_pal(reverse = TRUE)(11))
  expect_error(brooklyn99_pal(n = 12))
})

test_that("scale_colour_brooklyn99/dark equals scale_color_brooklyn99/dark", {
  expect_eqNe(scale_color_brooklyn99(palette = "Regular"), scale_colour_brooklyn99(palette = "Regular"))
  expect_eqNe(scale_color_brooklyn99(palette = "Dark"), scale_colour_brooklyn99(palette = "Dark"))
})

test_that("scale_colour_brooklyn99/dark works", {
  expect_is(scale_color_brooklyn99(palette = "Regular"), "ScaleDiscrete")
  expect_is(scale_color_brooklyn99(palette = "Dark"), "ScaleDiscrete")
})

test_that("scale_fill_brooklyn99/dark works", {
  expect_is(scale_fill_brooklyn99(palette = "Regular"), "ScaleDiscrete")
  expect_is(scale_fill_brooklyn99(palette = "Dark"), "ScaleDiscrete")
})

test_that("scale_color_brooklyn99 outputs correct colors", {
  expect_equal(brooklyn99_pal(palette = "Regular")(10),
               c(    "#e7298a", ## hot pink
                     "#72bcd4", ## lightblue
                     "#e41a1c", ## red
                     "#FCF40E", ## yellow
                     "#49f149", ## light-green
                     "#f16913", ## orange
                     "#525252", ## grey
                     "#F9FEFF", ## white
                     "#000E33", ## dark navy
                     "#000000"  ## black
               ))

  expect_equal(brooklyn99_pal(palette = "Dark")(9),
               c(    "#6CA9C3", ## light blue
                     "#3A3533", ## dark gray
                     "#000E33", ## dark navy
                     "#800000", ## maroon
                     "#CBCFD2", ## light gray
                     "#175E78", ## turqoise
                     "#DAA520", ## goldenrod
                     "#174D79", ## dark teal
                     "#000000"  ## black
               ))
})
